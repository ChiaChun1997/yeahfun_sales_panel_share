import express from "express";
import bcrypt from "bcrypt";
import db from "./utils/connect-mysql.js";
import session from "express-session";
import mysql_session from "express-mysql-session";

import salesRouter from "./routes/sales-panel.js";

// 建立web server 物件
const app = express();
// 註冊樣版引擎
app.set("view engine", "ejs");

const MysqlStore = mysql_session(session);
const sessionStore = new MysqlStore({}, db);

// 設定 Top-level middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(
  session({
    // session還沒初始化時，是否要儲存
    saveUninitialized: false,

    // 沒變更內容時，是否強制回存
    resave: false,

    // 加密 cookie
    secret: "skldfjwklefjlkdkf",
    store: sessionStore,
  })
);

// 自訂 top-level middlewares
app.use((req, res, next) => {
  res.locals.session = req.session;

  res.locals.title = "YeahFun";
  res.locals.pageName = "";

  next();
});

// 首頁
app.get("/", (req, res) => {
  res.render("home");
});

app.use("/sales-panel", salesRouter);

// 登入
app.get("/login", async (req, res) => {
  res.render("login");
});
app.post("/login", async (req, res) => {
  const output = {
    success: false,
    code: 0,
  };

  const sql = "SELECT * FROM owners WHERE email=?";
  const [rows] = await db.query(sql, [req.body.email]);

  // 如果 email 沒有資料(或是錯誤的)
  if (!rows.length) {
    output.code = 400; // 帳號是錯的
    return res.json(output);
  }

  const row = rows[0];
  // result 拿到布林值
  const result = await bcrypt.compare(req.body.password, row.password);

  if (result) {
    output.success = true;
    output.code = 200;

    // 登入成功，狀態記錄在 session 裡
    req.session.sales = {
      id: row.owners_id,
      email: row.email,
      name: row.name,
    };
  } else {
    output.code = 430; // 密碼是錯的
  }

  res.json(output);
});

// 登出
app.get("/logout", async (req, res) => {
  delete req.session.sales;
  res.redirect("/login");
});

// ********* 設定靜態內容資料夾 *********
app.use(express.static("public"));
app.use("/bootstrap", express.static("node_modules/bootstrap/dist"));

// ********* 404頁面，放在所有路由的後面 *********
app.use((req, res) => {
  res.status(404).send("<h1>404 Not Found</h1>");
});

// 偵聽通訊埠，啟動
const port = process.env.WEB_PORT || 3002;
app.listen(port, () => {
  console.log(`伺服器啟動了, port : ${port}`);
});
