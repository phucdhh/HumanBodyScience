# Downloads - Khoa học về cơ thể người

Thư mục này chứa các phiên bản đã biên dịch của sách.

## 📥 Tải xuống

### Phiên bản mới nhất
- **File:** `HumanBodyScience.latest.pdf` (symlink đến bản mới nhất)
- Luôn trỏ đến phiên bản PDF mới nhất được build

### Các phiên bản cũ
Các file được đặt tên theo định dạng: `HumanBodyScience.YYYY.MM.DD.HHMM.pdf`

Ví dụ: `HumanBodyScience.2026.07.30.1919.pdf`
- **2026**: Năm
- **07**: Tháng  
- **30**: Ngày
- **1919**: Giờ (19:19)

## 📋 Lịch sử thay đổi

Xem file `changelog.txt` để biết chi tiết thay đổi giữa các phiên bản.

## 🔨 Build từ source

Để tạo phiên bản mới:

```bash
cd book
./build.sh
```

Script sẽ:
1. Biên dịch PDF với Typst
2. Tạo tên file theo timestamp
3. Tự động cập nhật `changelog.txt`
4. Cập nhật symlink `HumanBodyScience.latest.pdf`

## ✏️ Cập nhật changelog thủ công

Để thêm ghi chú vào changelog của phiên bản hiện tại:

```bash
cd book
./update_changelog.sh "Mô tả thay đổi của bạn"
```

Ví dụ:
```bash
./update_changelog.sh "Sửa lỗi chính tả chương 3"
./update_changelog.sh "Thêm 10 hình minh họa mới"
```

## 📊 So sánh phiên bản

Để xem khác biệt giữa 2 phiên bản:

1. Mở 2 file PDF trong trình đọc PDF
2. Đối chiếu theo changelog.txt
3. Hoặc dùng công cụ `diff-pdf` (nếu có):

```bash
diff-pdf \
  HumanBodyScience.2026.07.30.1900.pdf \
  HumanBodyScience.2026.07.30.1919.pdf
```

## 📦 Dọn dẹp

Để xóa các phiên bản cũ, chỉ giữ lại 5 bản mới nhất:

```bash
cd book/downloads
ls -t HumanBodyScience.*.pdf | tail -n +6 | xargs rm
```

**Lưu ý:** Symlink `HumanBodyScience.latest.pdf` luôn được giữ lại.

## 🎯 Quy ước đặt tên

- `HumanBodyScience.latest.pdf` - Bản mới nhất (symlink)
- `HumanBodyScience.YYYY.MM.DD.HHMM.pdf` - Bản có timestamp
- `changelog.txt` - Lịch sử toàn bộ phiên bản

## 📄 Giấy phép

Xem file LICENSE trong thư mục gốc của dự án.
