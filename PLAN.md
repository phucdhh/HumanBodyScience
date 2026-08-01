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
-   [x] Tạo script Python (download_images.py) để tự động tải hình ảnh từ Wikimedia Commons.

### Giai đoạn 1 — Chương thí điểm

-   [x] Viết **Chương 2 — Tế bào và mô** làm chương mẫu.
-   [x] Áp dụng đầy đủ: hộp mức bằng chứng, thuật ngữ, trích dẫn.
-   [x] Biên dịch thử, kiểm tra layout thực tế (không chỉ trên giấy).
-   [x] Tải và chèn hình ảnh minh họa từ Wikimedia Commons (155 hình).
-   [x] Biên dịch PDF thành công (3.4 MB, 15 hình ảnh được chèn).
-   [ ] Đưa chuyên gia phản biện + người đọc thử góp ý.
-   [ ] Chốt lại văn phong, độ dài trung bình mỗi chương, mức độ chi
        tiết — dùng làm chuẩn cho các chương sau.

### Giai đoạn 2 — Viết đại trà

-   [x] Phân chia thứ tự viết theo mức độ phụ thuộc kiến thức (ví dụ:
        Chương 0, 1, 2 nên hoàn thành trước vì các chương sau tham
        chiếu đến khái niệm nền tảng ở đây).
-   [x] Hoàn thành nội dung tất cả 15 chương (00-14) với tổng 1337+ dòng code Typst.
-   [x] Áp dụng nhất quán hệ thống mức bằng chứng A/B/C/D trong toàn bộ các chương.
-   [x] Cập nhật bảng thuật ngữ với ~50 thuật ngữ song ngữ Việt-Anh.
-   [ ] Mỗi chương đi qua chu trình: viết nháp → tự rà soát mức bằng
        chứng và thuật ngữ → chuyên gia phản biện → chỉnh sửa → biên
        tập ngôn ngữ.
-   [x] Theo dõi tiến độ theo bảng trạng thái từng chương (xem mục
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

| # | Chương | Trạng thái | Hình ảnh |
|---|---|---|---|
| - | Lời nói đầu | Hoàn thành | - |
| 0 | Nhập môn: Khoa học biết điều này bằng cách nào? | Đang phản biện | ✓ (1) |
| 1 | Cơ thể người là gì? | Đang phản biện | ✓ (2) |
| 2 | Tế bào và mô | Đang phản biện | ✓ (5) |
| 3 | Hệ xương và cơ | Đang phản biện | ✓ (3) |
| 4 | Hệ thần kinh | Đang phản biện | ✓ (6) |
| 5 | Hệ nội tiết | Đang phản biện | ✓ (3) |
| 6 | Hệ miễn dịch | Đang phản biện | ✓ (2) |
| 7 | Tim mạch và hô hấp | Đang phản biện | ✓ (5) |
| 8 | Tiêu hóa, chuyển hóa và hệ vi sinh vật | Đang phản biện | ✓ (3) |
| 9 | Di truyền và phát triển | Đang phản biện | ✓ (2) |
| 10 | Nhận thức, tư duy và cảm xúc | Đang phản biện | ✓ (1) |
| 11 | Giấc ngủ và lão hóa | Đang phản biện | ✓ (3) |
| 12 | Cơ thể người và thần học | Đang phản biện | ✓ (1) |
| 13 | Y học hiện đại và y học truyền thống | Đang phản biện | ✓ (1) |
| 14 | Sức khỏe, bệnh tật và phòng ngừa | Đang phản biện | ✓ (1) |
| 15 | Hệ thống kinh mạch | Bản nháp mới | - |
| 16 | Khí công | Bản nháp mới | - |

**Tổng kết:**
- Nội dung: **Lời nói đầu + 17 chương** (15 chính + 2 bổ sung)
- Thuật ngữ: **150+ thuật ngữ** với Mục lục A-Z ở cuối sách + giải thích inline khi xuất hiện lần đầu (✅ Hoàn thành cả 3 giai đoạn)
- Hình ảnh: **33 hình** đã chèn vào 12 chương
- Biên dịch: ✓ Thành công (**PDF 6.2 MB**, tăng từ 5.5 MB)
- Hình ảnh có sẵn: 172 file SVG từ Wikimedia Commons
- **Danh sách hình ảnh:** Tự động sau Mục lục

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


## Cập nhật tiến độ mới nhất (01/08/2026)

### Đã hoàn thành

✅ **Nội dung:** 
- 17/17 chương đã viết xong (15 chính + 2 bổ sung: Kinh mạch, Khí công) với tổng 1337+ dòng code Typst
- Áp dụng nhất quán hệ thống mức bằng chứng A/B/C/D
- ~50 thuật ngữ song ngữ Việt-Anh trong glossary
- ~40 tài liệu tham khảo trong references.bib

✅ **Thuật ngữ (Hoàn thành 100%):**
- **150+ thuật ngữ** trong Mục lục thuật ngữ (99-muc-luc-thuat-ngu.typ) sắp xếp A-Z
- **36 thuật ngữ được giải thích inline** khi xuất hiện lần đầu tiên trong sách:
  - Giai đoạn 1: 10 thuật ngữ quan trọng nhất (ATP, Ion, Kháng nguyên, Hemoglobin, pH, Allele, NREM/REM, Glymphatic, Beta-amyloid, Myelin)
  - Giai đoạn 2: 20 thuật ngữ mức CAO (Protein/Lipid/Carbohydrate, Phospholipid, Enzyme, Collagen, Myosin/Actin, Glutamate/GABA, TSH/ACTH/FSH/LH, Insulin resistance, CD4+/CD8+, Histamine, mmHg, Phế quản vs Tiểu phế quản, SCFA, Oncogene/Tumor suppressor, CRISPR-Cas9, Reconsolidation)
  - Giai đoạn 3: 6 thuật ngữ mức TRUNG BÌNH (Prolactin/Oxytocin, Tâm nhĩ vs Tâm thất, Dominant vs Recessive, Circadian rhythm, Khí, 12 kinh mạch chính)
- 3 hàm hỗ trợ: `term()`, `term-en()`, `define()`

✅ **Hình ảnh:**
- 172 hình ảnh được tải từ Wikimedia Commons (Public Domain, CC BY-SA, CC0)
- **33 hình** đã được chèn vào 12 chương với caption mô tả
- Tạo file README.md và attributions.json hướng dẫn sử dụng
- **Danh sách hình ảnh tự động** sau Mục lục

✅ **Biên dịch:**
- **PDF 6.2 MB** biên dịch thành công
- CI/CD tự động qua GitHub Actions
- Script download_images.py để tải thêm hình

### Cần làm tiếp

🔲 **Giai đoạn 1 (tiếp):**
- [ ] Đưa chuyên gia phản biện từng chương
- [ ] Thu thập phản hồi từ người đọc thử
- [ ] Chỉnh sửa dựa trên góp ý

🔲 **Giai đoạn 3:**
- [ ] Biên tập ngôn ngữ toàn bộ
- [ ] Kiểm tra chéo tham chiếu giữa các chương
- [ ] Rà soát lại mức bằng chứng

🔲 **Giai đoạn 4:**
- [ ] Thiết kế bìa sách
- [ ] Hoàn thiện trang tiêu đề, mục lục
- [ ] Thêm hình ảnh cho các chương còn thiếu (10, 12, 13, 14)
- [ ] Cập nhật attribution đầy đủ cho tất cả hình ảnh

### Vấn đề cần giải quyết

⚠️ **Hình ảnh:**
- 2 file SVG bị lỗi (organ-systems.svg, homeostasis.svg) - cần thay thế
- 4 chương chưa có hình minh họa (10, 12, 13, 14)

⚠️ **Attribution:**
- Cần cập nhật thông tin chi tiết tác giả/giấy phép cho 155 hình mới
- Có thể mở rộng script Python để tự động tạo danh sách attribution

### Khuyến nghị

1. **Ưu tiên cao:** Tìm phản biện chuyên môn cho từng chương
2. **Ưu tiên trung bình:** Bổ sung hình ảnh cho 4 chương còn thiếu
3. **Ưu tiên thấp:** Hoàn thiện attribution đầy đủ (có thể làm sau)
