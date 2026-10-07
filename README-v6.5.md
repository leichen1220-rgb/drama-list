# 我的劇單 v6.5

本版不需要執行新的 Supabase migration。

## 主要更新
- 移除首頁「檢查重複／整理重複」，新增與編輯仍保留自動查重。
- 表格模式：凍結表頭與名稱欄；加入多筆選取、全選目前篩選結果、批次修改。
- 精簡模式：移除加入日期與同看；保留看完日期，顯示播出狀態與觀看進度。
- 沒有總集數時也會顯示「目前看到…」；目前觀看可保留彈性文字。
- 修正已看完舊資料只因編輯就被補上今天看完日期；看完日期可清空。
- 搜尋框加入 × 一鍵清空。
- 篩選增加播出狀態、季、資料狀態、加入日期／看完日期區間，並以「更多條件」收合。
- 狀態 badge 禁止換行並修正置中；手機新增按鈕改用 CSS 幾何置中的 +。
- 加入 favicon、Apple Touch Icon 與 PWA icon。
- 保留 v6.4.3 的 Excel 匯出修正。

## GitHub 更新
將 ZIP 內檔案上傳／覆蓋 repo 根目錄即可。建議至少更新：
- index.html
- sw.js
- manifest.webmanifest
- icon-32.png
- apple-touch-icon.png
- icon-192.png
- icon-512.png

`drama-list-template.xlsx` 沿用目前模板，包內也附上完整檔案方便整包覆蓋。
