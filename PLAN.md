# Kế hoạch biên soạn: Khoa học về cơ thể người

## Định dạng kỹ thuật

Sách được biên soạn bằng **Typst** thay vì LaTeX/Word, vì:

-   Cú pháp gọn, dễ đọc, dễ viết hơn LaTeX.
-   Biên dịch nhanh (gần như tức thời), phù hợp lặp lại nhiều vòng
    chỉnh sửa.
-   Hỗ trợ tốt cho tài liệu dài, có mục lục, chú thích, tham chiếu
    chéo, bảng biểu.
-   Có thể tách nội dung thành nhiều file và `#include` lại, thuận
    tiện cho việc nhiều người cùng viết song song.
-   Mã nguồn dạng text thuần, quản lý phiên bản bằng Git dễ dàng, diff
    rõ ràng giữa các lần sửa.

## Cấu trúc thư mục dự kiến

```
book/
├── main.typ                 # File gốc, gom toàn bộ chương lại
├── config/
│   ├── template.typ         # Định nghĩa layout, font, style chung
│   ├── theme.typ            # Màu sắc, hộp chú thích mức bằng chứng
│   └── metadata.typ         # Tiêu đề, tác giả, phiên bản
├── chapters/
│   ├── 00-nhap-mon.typ
│   ├── 01-co-the-nguoi-la-gi.typ
│   ├── 02-te-bao-va-mo.typ
│   ├── 03-he-xuong-va-co.typ
│   ├── 04-he-than-kinh-va-nao-bo.typ
│   ├── 05-he-noi-tiet.typ
│   ├── 06-he-mien-dich.typ
│   ├── 07-tim-mach-va-ho-hap.typ
│   ├── 08-tieu-hoa-chuyen-hoa-vi-sinh.typ
│   ├── 09-di-truyen-va-phat-trien.typ
│   ├── 10-nhan-thuc-tu-duy-cam-xuc.typ
│   ├── 11-giac-ngu-va-lao-hoa.typ
│   ├── 12-co-the-nguoi-va-than-hoc.typ
│   ├── 13-y-hoc-hien-dai-truyen-thong.typ
│   └── 14-suc-khoe-benh-tat-phong-ngua.typ
├── glossary/
│   └── thuat-ngu.typ        # Bảng thuật ngữ chuẩn hóa (dữ liệu dùng chung)
├── assets/
│   ├── images/
│   └── diagrams/             # Hình minh họa, sơ đồ (SVG ưu tiên)
├── bibliography/
│   └── references.bib        # Trích dẫn học thuật (BibTeX/Hayagriva)
├── README.md
└── PLAN.md
```

Mỗi chương là **một file `.typ` độc lập**, `#include` vào `main.typ`
theo đúng thứ tự Mục lục trong README. Nhờ vậy có thể biên dịch thử
từng chương riêng lẻ khi đang viết, không cần dựng toàn bộ sách.

## Quy ước kỹ thuật trong Typst

-   **Hộp mức bằng chứng**: định nghĩa sẵn 4 hàm/`#show rule` trong
    `theme.typ` tương ứng mức A/B/C/D (màu và ký hiệu riêng biệt), để
    dùng thống nhất, ví dụ dạng gọi: `#muc-bang-chung("A")[...]`.
-   **Thuật ngữ**: mỗi thuật ngữ trong `glossary/thuat-ngu.typ` được
    khai báo một lần, tham chiếu lại trong các chương thay vì gõ tay
    lặp lại — tránh sai chính tả/không nhất quán.
-   **Trích dẫn**: dùng cơ chế trích dẫn tích hợp của Typst
    (`#cite`) với file `.bib`, thống nhất một kiểu trích dẫn
    (đề xuất kiểu số, dạng `[1]`) trong suốt cuốn sách.
-   **Hình ảnh/sơ đồ**: ưu tiên định dạng vector (SVG) để giữ chất
    lượng khi in.

## Cài đặt & Biên dịch

Dự án sử dụng trình biên dịch [Typst](https://typst.app/). 
- **Cài đặt cục bộ**: Tải từ trang chủ Typst hoặc dùng trình quản lý gói (ví dụ: `brew install typst` trên macOS, `cargo install typst-cli`).
- **Biên dịch**: Tại thư mục gốc của dự án, chạy lệnh:
  ```bash
  typst compile book/main.typ
  ```
  Để biên dịch liên tục mỗi khi lưu file:
  ```bash
  typst watch book/main.typ
  ```
- **Viết trực tuyến**: Bạn cũng có thể dùng Typst Web App để chỉnh sửa và biên dịch ngay trên trình duyệt mà không cần cài đặt.

## Các giai đoạn thực hiện

### Giai đoạn 0 — Chuẩn bị hạ tầng (trước khi viết nội dung)

-   [x] Dựng khung dự án Typst (`main.typ`, `template.typ`, thư mục
        như trên).
-   [x] Thiết kế layout cơ bản: font, cỡ chữ, khổ trang, kiểu tiêu đề.
-   [x] Định nghĩa hộp mức bằng chứng (A/B/C/D) như một thành phần
        tái sử dụng.
-   [x] Khởi tạo bảng thuật ngữ chuẩn hóa (khung rỗng, bổ sung dần).
-   [x] Chọn và cấu hình kiểu trích dẫn.
-   [x] Thiết lập Git repository, quy ước đặt tên nhánh/commit.
-   [x] Cấu hình CI/CD (vd: GitHub Actions) để tự động biên dịch file PDF từ Typst mỗi khi có thay đổi trên nhánh chính.

### Giai đoạn 1 — Chương thí điểm

-   [x] Viết **Chương 2 — Tế bào và mô** làm chương mẫu.
-   [x] Áp dụng đầy đủ: hộp mức bằng chứng, thuật ngữ, trích dẫn.
-   [x] Biên dịch thử, kiểm tra layout thực tế (không chỉ trên giấy).
-   [ ] Đưa chuyên gia phản biện + người đọc thử góp ý.
-   [ ] Chốt lại văn phong, độ dài trung bình mỗi chương, mức độ chi
        tiết — dùng làm chuẩn cho các chương sau.

### Giai đoạn 2 — Viết đại trà

-   [ ] Phân chia thứ tự viết theo mức độ phụ thuộc kiến thức (ví dụ:
        Chương 0, 1, 2 nên hoàn thành trước vì các chương sau tham
        chiếu đến khái niệm nền tảng ở đây).
-   [ ] Mỗi chương đi qua chu trình: viết nháp → tự rà soát mức bằng
        chứng và thuật ngữ → chuyên gia phản biện → chỉnh sửa → biên
        tập ngôn ngữ.
-   [ ] Cập nhật bảng thuật ngữ liên tục khi phát sinh thuật ngữ mới.
-   [ ] Theo dõi tiến độ theo bảng trạng thái từng chương (xem mục
        *Theo dõi tiến độ*).

### Giai đoạn 3 — Biên tập tổng thể

-   [ ] Đọc xuyên suốt toàn bộ bản thảo để thống nhất giọng văn giữa
        các chương (do nhiều người viết có thể lệch văn phong).
-   [ ] Kiểm tra chéo tham chiếu giữa các chương (ví dụ Chương 8 nhắc
        lại khái niệm ở Chương 2).
-   [ ] Rà soát toàn bộ trích dẫn, đảm bảo còn hợp lệ và đúng nguồn.
-   [ ] Kiểm tra tính nhất quán của mức bằng chứng gắn cho từng nội
        dung.

### Giai đoạn 4 — Hoàn thiện xuất bản

-   [ ] Thiết kế bìa, trang tiêu đề, mục lục hoàn chỉnh.
-   [ ] Biên dịch bản PDF cuối cùng, kiểm tra in thử (nếu có bản in).
-   [ ] Quyết định giấy phép phát hành chính thức.
-   [ ] Công bố/phát hành.

### Giai đoạn 5 — Duy trì sau xuất bản

-   [ ] Thiết lập lịch rà soát định kỳ nội dung (2–3 năm/lần) do kiến
        thức y sinh học cập nhật liên tục.
-   [ ] Ghi nhận phản hồi độc giả để cải thiện các phiên bản sau.

## Theo dõi tiến độ từng chương

| # | Chương | Trạng thái |
|---|---|---|
| 0 | Nhập môn: Khoa học biết điều này bằng cách nào? | Chưa bắt đầu |
| 1 | Cơ thể người là gì? | Chưa bắt đầu |
| 2 | Tế bào và mô | Đang phản biện |
| 3 | Hệ xương và cơ | Chưa bắt đầu |
| 4 | Hệ thần kinh và não bộ | Chưa bắt đầu |
| 5 | Hệ nội tiết | Chưa bắt đầu |
| 6 | Hệ miễn dịch | Chưa bắt đầu |
| 7 | Tim mạch và hô hấp | Chưa bắt đầu |
| 8 | Tiêu hóa, chuyển hóa và hệ vi sinh vật | Chưa bắt đầu |
| 9 | Di truyền và phát triển | Chưa bắt đầu |
| 10 | Nhận thức, tư duy và cảm xúc | Chưa bắt đầu |
| 11 | Giấc ngủ và lão hóa | Chưa bắt đầu |
| 12 | Cơ thể người và thần học | Chưa bắt đầu |
| 13 | Y học hiện đại và y học truyền thống | Chưa bắt đầu |
| 14 | Sức khỏe, bệnh tật và phòng ngừa | Chưa bắt đầu |

Trạng thái đề xuất dùng: `Chưa bắt đầu` → `Đang viết nháp` → `Đang
phản biện` → `Đang biên tập` → `Hoàn thiện`.

## Công cụ hỗ trợ

-   **Typst** (biên dịch): cài đặt CLI hoặc dùng trình soạn thảo trực
    tuyến (web app) để cộng tác không cần cài đặt.
-   **Git**: quản lý phiên bản bản thảo, mỗi chương/mỗi lần sửa lớn
    là một commit riêng để dễ theo dõi lịch sử.
-   **Trình quản lý trích dẫn**: Zotero hoặc tương đương, xuất ra
    định dạng `.bib` để Typst sử dụng trực tiếp.

## Rủi ro cần lưu ý

-   **Lệch văn phong** giữa các chương nếu nhiều người viết — cần
    chương thí điểm và hướng dẫn văn phong rõ ràng trước khi viết đại
    trà.
-   **Thuật ngữ không nhất quán** nếu không cập nhật bảng thuật ngữ
    kịp thời trong lúc viết.
-   **Trễ tiến độ** do khâu phản biện chuyên môn kéo dài — nên xác
    định trước danh sách chuyên gia phản biện theo từng chương ngay
    từ Giai đoạn 0.
-   **Nội dung lỗi thời** sau khi xuất bản — đã có kế hoạch rà soát
    định kỳ ở Giai đoạn 5.
