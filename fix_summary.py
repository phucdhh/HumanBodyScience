import re

with open('SUMMARY.md', 'r') as f:
    content = f.read()

# Update date
content = re.sub(r'\*\*Ngày cập nhật:\*\* .*', r'**Ngày cập nhật:** 7 tháng 9, 2026', content)

# Update PDF size
content = content.replace('**PDF:** 6.2 MB', '**PDF:** ~11 MB')
content = content.replace('**6.2 MB**', '**11 MB**')

# Update "Vấn đề đã biết" section
new_issues = """### Hình ảnh và SVG (Đã xử lý xong)
Tất cả các file SVG bị lỗi render trong Typst đã được tải lại, chuyển đổi định dạng và đưa vào các chương tương ứng:
- `organ-systems.svg` (Đã sửa và chuyển thành ảnh sơ đồ chính xác)
- `homeostasis.svg` (Đã sửa bằng homeostasis.png)
- `brain.svg` (Đã sửa)
- `brain-language.svg` (Đã sửa)
- `embryo.svg` (Đã sửa)
- `vitruvian.jpg` (Đã tải lại đúng định dạng)"""

old_issues_pattern = r"### SVG files bị lỗi đã biết.*?Cần chuyển đổi hoặc tìm file thay thế\."
content = re.sub(old_issues_pattern, new_issues, content, flags=re.DOTALL)

# Update To-do list
content = content.replace("- [ ] Thêm hình minh họa cho 2 chương còn thiếu (16, 17)", "- [x] Thêm hình minh họa cho 2 chương còn thiếu (16, 17)")
content = content.replace("- [ ] Sửa/thay thế các file SVG lỗi đã biết", "- [x] Sửa/thay thế các file SVG lỗi đã biết")

# Add new achievements
achievements = """
### 🚀 Cập nhật Nội dung mới (Tháng 9/2026)
- **Cấu trúc tinh thần & vật chất:** Bổ sung lý thuyết Trường điện từ của ý thức (CEMI) và tính mềm dẻo của não bộ (Chương 2).
- **Thể tùng quả (Pineal Gland):** Bổ sung chi tiết về vai trò nội tiết, nhịp sinh học và ý nghĩa tâm linh (con mắt thứ ba/Parietal eye) xuyên suốt Chương 6, 12, 13.
- **Giác quan & Nhiếp ảnh:** Thêm phân tích so sánh sinh động giữa Cấu tạo mắt người và Ống kính máy ảnh (Chương 5).
- **Thần học & Tiến hóa:** Đưa Thuyết Thiết kế thông minh (Intelligent Design - Irreducible complexity) vào Chương 13 với các trích dẫn học thuật.
- **Giải mã Khí công:** Bổ sung phân tích về "Khí công trị bệnh" và làm rõ sự thật về các "Công năng đặc dị" (Chương 16).
- **Giai thoại Y học:** Đưa câu chuyện tử tù chảy máu (urban legend) vào minh họa cho hiệu ứng Nocebo (Chương 0).
"""
content = content.replace("## 📊 Thống kê chi tiết", achievements + "\n## 📊 Thống kê chi tiết")

with open('SUMMARY.md', 'w') as f:
    f.write(content)

with open('PLAN.md', 'r') as f:
    plan_content = f.read()

plan_content = re.sub(r'## Cập nhật tiến độ mới nhất .*', r'## Cập nhật tiến độ mới nhất (07/09/2026)', plan_content)
plan_content = plan_content.replace("- [ ] Sửa/thay thế các file SVG lỗi đã biết", "- [x] Sửa/thay thế các file SVG lỗi đã biết (Hoàn thành)")
plan_content = plan_content.replace("- [ ] Thêm hình ảnh cho 2 chương còn thiếu (15, 16)", "- [x] Thêm hình ảnh cho 2 chương còn thiếu (15, 16) (Hoàn thành)")
plan_content = plan_content.replace("⚠️ **Hình ảnh:**\n- 2 file SVG bị lỗi (organ-systems.svg, homeostasis.svg) - cần thay thế\n- 2 chương chưa có hình minh họa (15, 16)", "✅ **Hình ảnh:**\n- Đã sửa toàn bộ các file SVG bị lỗi.\n- Đã chèn đầy đủ hình minh họa cho tất cả 17 chương.")
plan_content = plan_content.replace("2. **Ưu tiên trung bình:** Bổ sung hình ảnh cho 2 chương còn thiếu\n", "")

with open('PLAN.md', 'w') as f:
    f.write(plan_content)

