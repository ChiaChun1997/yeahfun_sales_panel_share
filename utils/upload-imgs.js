import multer from "multer";
import { v4 } from "uuid";

// 篩選檔案和決定副檔名
const extMap = {
  "image/jpeg": ".jpg",
  "image/png": ".png",
  "image/webp": ".webp",
};

// 先篩選檔案(一個一個處理)再決定要不要儲存
const fileFilter = (req, file, callback) => {
  // !! => 轉換成布林值
  callback(null, !!extMap[file.mimetype]);
};

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "public/img"); // 這裡的路徑和此 js 檔所在的位置無關
  },
  filename: (req, file, cb) => {
    const ext = extMap[file.mimetype]; // 取得副檔名
    cb(null, v4() + ext);
  },
});

export default multer({ fileFilter, storage });
