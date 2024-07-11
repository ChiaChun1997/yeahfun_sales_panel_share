import express from "express";
import moment from "moment-timezone";
import db from "./../utils/connect-mysql.js";
import upload from "./../utils/upload-imgs.js";

const dateFormat = "YYYY-MM-DD HH:mm:ss";
const dateFormat2 = "YYYY-MM-DD";
const router = express.Router();

// 取得資料的 function const getListData
const getCampSiteListData = async (req) => {
  const perPage = 20; // 每頁最多有幾筆
  let page = +req.query.page || 1;

  let id = req.session.sales.id || 1;

  if (page < 1) {
    // return res.redirect(`?page=1`); // 轉向
    return {
      success: false,
      redirect: `?page=1`, // 需要轉向
      info: "page 值太小",
    };
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

  rows.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.update_time) {
      r.update_time = moment(r.update_time).format(dateFormat);
    }
  });

  return {
    store_count,
    totalPages,
    page,
    perPage,
    rows,
    qs: req.query,
  };
};

const getOrderListData = async (req) => {
  const perPage = 20; // 每頁最多有幾筆
  let page = +req.query.page || 1;

  let id = req.session.sales.id || 1;

  if (page < 1) {
    // return res.redirect(`?page=1`); // 轉向
    return {
      success: false,
      redirect: `?page=1`, // 需要轉向
      info: "page 值太小",
    };
  }

  const sql =
    "SELECT owners_id, COUNT(stores_id) as store_count FROM stores GROUP BY owners_id";

  // 取得總筆數
  const [[{ store_count }]] = await db.query(sql);

  let totalPages = 0;
  let rows1 = [];
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

  const sql3 = `SELECT
  orders.id AS orders_id,
  order_date,
  payment_status,
  credit_card,
  note,
  checkin_date,
  checkout_date,
  guests,
  total_day,
  total_price,
  rooms_campsites.name AS rooms_campsites_name,
  normal_price,
  stores.name AS stores_name,
  customers.name AS customers_name,
  stores.owners_id AS owners_id
FROM
  orders
JOIN rooms_campsites ON orders.room_campsite_id = rooms_campsites.rooms_campsites_id
JOIN stores ON orders.store_id = stores.stores_id
JOIN customers ON orders.customer_id = customers.id
WHERE stores.owners_id=${id}`;

  [rows1] = await db.query(sql3);

  rows1.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.checkin_date) {
      r.checkin_date = moment(r.checkin_date).format(dateFormat2);
    }
  });
  rows1.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.checkout_date) {
      r.checkout_date = moment(r.checkout_date).format(dateFormat2);
    }
  });

  return {
    store_count,
    totalPages,
    page,
    perPage,
    rows1,
    qs: req.query,
  };
};

const getCouponListData = async (req) => {
  const perPage = 20; // 每頁最多有幾筆
  let page = +req.query.page || 1;

  let id = req.session.sales.id || 1;

  if (page < 1) {
    // return res.redirect(`?page=1`); // 轉向
    return {
      success: false,
      redirect: `?page=1`, // 需要轉向
      info: "page 值太小",
    };
  }

  const sql =
    "SELECT owners_id, COUNT(stores_id) as store_count FROM stores GROUP BY owners_id";

  // 取得總筆數
  const [[{ store_count }]] = await db.query(sql);

  let totalPages = 0;
  let rows2 = [];
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

  const sql2 = `SELECT * FROM coupon WHERE owners_id=${id}`;

  [rows2] = await db.query(sql2);

  rows2.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.time_start) {
      r.time_start = moment(r.time_start).format(dateFormat2);
    }
  });
  rows2.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.time_end) {
      r.time_end = moment(r.time_end).format(dateFormat2);
    }
  });

  return {
    store_count,
    totalPages,
    page,
    perPage,
    rows2,
    qs: req.query,
  };
};

const getCommentListData = async (req) => {
  const perPage = 20; // 每頁最多有幾筆
  let page = +req.query.page || 1;

  let id = req.session.sales.id || 1;

  if (page < 1) {
    // return res.redirect(`?page=1`); // 轉向
    return {
      success: false,
      redirect: `?page=1`, // 需要轉向
      info: "page 值太小",
    };
  }

  const sql =
    "SELECT owners_id, COUNT(stores_id) as store_count FROM stores GROUP BY owners_id";

  // 取得總筆數
  const [[{ store_count }]] = await db.query(sql);

  let totalPages = 0;
  let rows3 = [];
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

  const sql3 = `SELECT COMMENT
    .id AS comment_id,
	customers.name as customer_name,
    stores.name as store_name,
    comment_star,
    comment_content,
    comment.created_at as comment_created_at
FROM COMMENT
JOIN stores ON COMMENT
    .store_id = stores.stores_id
JOIN customers ON COMMENT
    .customer_id = customers.id
WHERE
    stores.owners_id = ${id}`;

  [rows3] = await db.query(sql3);

  rows3.forEach((r) => {
    // "JS 的 Date 類型"，轉換為日期格式字串
    if (r.comment_created_at) {
      r.comment_created_at = moment(r.comment_created_at).format(dateFormat);
    }
  });

  return {
    store_count,
    totalPages,
    page,
    perPage,
    rows3,
    qs: req.query,
  };
};

router.get("/", async (req, res) => {
  res.render("home");
});

router.get("/api-camp-list", async (req, res) => {
  const result = await getCampSiteListData(req);
  res.json(result);
});

router.get("/camp-list", async (req, res) => {
  const result = await getCampSiteListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/camp-list", result);
});

router.get("/camp-list-edit/:id", async (req, res) => {
  const id = +req.params.id || 0;
  if (!id) return res.redirect("/sales-panel/camp-list");

  const sql = `SELECT * FROM stores WHERE stores_id=${id}`;
  const [rows] = await db.query(sql);
  if (rows.length === 0) {
    // 沒有該筆資料時，跳回列表頁
    return res.redirect("/sales-panel/camp-list");
  }

  const row = rows[0];

  res.render("sales-panel/camp-list-edit", row);
});

router.put("/camp-list-edit/:id", upload.none(), async (req, res) => {
  const output = {
    success: false,
    bodyData: req.body, // 除錯用
    result: {},
  };

  const id = +req.params.id || 0;
  if (!id) {
    return res.json({ success: false, info: "不正確的主鍵" });
  }

  const sql = `UPDATE stores SET ? WHERE stores_id=${id}`;
  const data = { ...req.body, update_time: new Date() };

  try {
    const [result] = await db.query(sql, [data]);
    output.result = result;
    output.success = !!(result.affectedRows && result.changedRows);
  } catch (ex) {
    // sql 發生錯誤
    output.error = ex; // 有安全上的問題，只在開發時期除錯用
  }

  res.json(output);
});

router.get("/camp-list-edit-information/:id", async (req, res) => {
  const id = +req.params.id || 0;
  if (!id) return res.redirect("/sales-panel/camp-list");

  const sql = `SELECT * FROM stores_informations WHERE stores_id=${id}`;
  const [rows] = await db.query(sql);
  if (rows.length === 0) {
    // 沒有該筆資料時，跳回列表頁
    return res.redirect("/sales-panel/camp-list");
  }

  const row = rows[0];

  res.render("sales-panel/camp-list-edit-information", row);
});

router.put(
  "/camp-list-edit-information/:id",
  upload.none(),
  async (req, res) => {
    const output = {
      success: false,
      bodyData: req.body, // 除錯用
      result: {},
    };

    const id = +req.params.id || 0;
    if (!id) {
      return res.json({ success: false, info: "不正確的主鍵" });
    }

    const sql = `UPDATE stores_informations SET ? WHERE stores_id=${id}`;

    try {
      const [result] = await db.query(sql, [req.body]);
      output.result = result;
      output.success = !!(result.affectedRows && result.changedRows);
    } catch (ex) {
      // sql 發生錯誤
      output.error = ex; // 有安全上的問題，只在開發時期除錯用
    }

    res.json(output);
  }
);

router.get("/camp-list-add", async (req, res) => {
  const result = await getCampSiteListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/camp-list-add", result);
});

router.post("/camp-list-add", upload.none(), async (req, res) => {
  const output = {
    success: false,
    bodyData: req.body, // 除錯用
    result: {},
  };

  const sql = `INSERT INTO stores set ? `;
  const data = { ...req.body, update_time: new Date() };

  try {
    const [result] = await db.query(sql, [data]);
    output.result = result;
    output.success = !!result.affectedRows;
  } catch (ex) {
    // sql 發生錯誤
    output.error = ex; // 有安全上的問題，只在開發時期除錯用
  }

  res.json(output);
});

router.get("/api-order-list", async (req, res) => {
  const result = await getOrderListData(req);
  res.json(result);
});

router.get("/order-list", async (req, res) => {
  const result = await getOrderListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/order-list", result);
});

router.get("/api-coupon-list", async (req, res) => {
  const result = await getCouponListData(req);
  res.json(result);
});

router.get("/coupon-list", async (req, res) => {
  const result = await getCouponListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/coupon-list", result);
});

router.get("/coupon-list-add", async (req, res) => {
  const result = await getCouponListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/coupon-list-add", result);
});

router.post("/coupon-list-add", upload.none(), async (req, res) => {
  const output = {
    success: false,
    bodyData: req.body, // 除錯用
    result: {},
  };

  const sql = `INSERT INTO coupon set ? `;
  const data = { ...req.body };

  try {
    const [result] = await db.query(sql, [data]);
    output.result = result;
    output.success = !!result.affectedRows;
  } catch (ex) {
    // sql 發生錯誤
    output.error = ex; // 有安全上的問題，只在開發時期除錯用
  }

  res.json(output);
});

router.get("/api-comment-list", async (req, res) => {
  const result = await getCommentListData(req);
  res.json(result);
});

router.get("/comment-list", async (req, res) => {
  const result = await getCommentListData(req);
  // 轉向
  if (result.redirect) {
    return res.redirect(result.redirect);
  }

  res.render("sales-panel/comment-list", result);
});

export default router;
