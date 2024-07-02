import express from "express";
import moment from "moment-timezone";
import db from "./../utils/connect-mysql.js";

const dateFormat = "YYYY-MM-DD";
const router = express.Router();

// 取得資料的 function const getListData
const getListData = async (req) => {
  const perPage = 20; // 每頁最多有幾筆
  let page = +req.query.page || 1;

  let id = req.session.sales.id || 1;

  if (page < 1) {
    // return res.redirect(`?page=1`); // 轉向
    return {
      success: false,
      redirect: `?page=1`, // 需要轉向
      info: "page 值太小",
    }
  }

  const sql =
    "SELECT owners_id, COUNT(stores_id) as store_count FROM stores GROUP BY owners_id";

  // 取得總筆數
  const [[{ store_count }]] = await db.query(sql);

  let totalPages = 0;
  let rows = [];
  if (store_count > 0) {
    totalPages = Math.ceil(store_count / perPage);
    if (page > totalPages) {
      // return res.redirect(`?page=${totalPages}`);
      return {
        success: false,
        redirect: `?page=${totalPages}`, // 需要轉向
        info: "page 值太大",
      };
    }
  }

  const sql2 = `SELECT * FROM stores WHERE owners_id=${id} LIMIT ${
    (page - 1) * perPage
  }, ${perPage}`;

  [rows] = await db.query(sql2);

  return {
    store_count,
    totalPages,
    page,
    perPage,
    rows,
    qs: req.query,
  };
};

router.get("/", async (req, res) => {
  res.render("home");
});

router.get("/api", async (req, res) => {
  const result = await getListData(req);
  res.json(result);
});

router.get("/camp-list", async (req, res) => {
  const result = await getListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/camp-list", result);
});

export default router;
