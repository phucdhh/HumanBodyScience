# Hình ảnh minh họa cho cuốn sách

## Nguồn gốc

Tất cả hình ảnh trong thư mục này được tải từ **Wikimedia Commons**, đảm bảo:
- Miễn phí sử dụng
- Không vi phạm bản quyền
- Có giấy phép tương thích (Public Domain, CC BY-SA, CC0)

## Cấu trúc

### Hình ảnh gốc đã có sẵn
- `brain.svg`, `brain-language.svg` - Sơ đồ não bộ
- `cell.svg` - Cấu trúc tế bào động vật
- `digestive.svg` - Hệ tiêu hóa
- `dna.svg` - Cấu trúc DNA
- `embryo.svg` - Phôi thai
- `endocrine.svg` - Hệ nội tiết
- `heart.svg` - Giải phẫu tim
- `homeostasis.svg` - Cân bằng nội môi
- `immune.svg` - Hệ miễn dịch
- `muscle.svg` - Cơ vân
- `neuron.svg` - Tế bào thần kinh
- `organ-systems.svg` - Các hệ cơ quan
- `respiratory.svg` - Hệ hô hấp
- `skeleton.svg` - Bộ xương
- `sleep-stages.svg` - Giai đoạn giấc ngủ
- `vitruvian.jpg` - Người Vitruvius của Da Vinci

### Hình ảnh mới tải về (155 files)

Được đặt tên theo format: `ch{XX}_{tên_file_gốc}`

**Ví dụ:**
- `ch00_Vitruvian-man-1492-da-vinci.jpg` - Chương 0 (Nhập môn)
- `ch02_Animal_cell_cycle-en.svg` - Chương 2 (Tế bào và mô)
- `ch03_Human_skeleton_front_en.svg` - Chương 3 (Hệ xương và cơ)
- `ch04_Complete_neuron_cell_diagram_en.svg` - Chương 4 (Hệ thần kinh)
- `ch05_Endocrine_glands_&_their_hormones.svg` - Chương 5 (Hệ nội tiết)
- `ch06_Antibody_structure.svg` - Chương 6 (Hệ miễn dịch)
- `ch07_Heart_numlabels.svg` - Chương 7 (Tim mạch và hô hấp)
- `ch08_Digestive_system_diagram_en.svg` - Chương 8 (Tiêu hóa)

## Attribution

File `attributions.json` chứa thông tin chi tiết về:
- Tác giả
- Giấy phép
- URL nguồn gốc
- Mô tả

**Lưu ý:** Các hình ảnh mới (prefix `ch*`) cần được cập nhật attribution vào `attributions.json` theo format hiện có.

## Cách tải thêm hình ảnh

Chạy script Python:

```bash
cd book
python3 -m venv .venv
source .venv/bin/activate
pip install requests
python download_images.py
```

Script sẽ:
1. Tìm kiếm hình ảnh theo từ khóa cho từng chương
2. Ưu tiên định dạng SVG (vector graphics)
3. Tải về và đặt tên theo format `ch{XX}_{tên_gốc}`
4. Bỏ qua file đã tồn tại

## Sử dụng trong Typst

Trong file `.typ`, import hình ảnh như sau:

```typst
#image("assets/images/ch03_Human_skeleton_front_en.svg", width: 80%)
```

hoặc với caption:

```typst
#figure(
  image("assets/images/ch04_Complete_neuron_cell_diagram_en.svg", width: 70%),
  caption: [Cấu trúc của một tế bào thần kinh (neuron)]
)
```

## Giấy phép

Tất cả hình ảnh tuân thủ giấy phép nguồn gốc từ Wikimedia Commons:
- **Public Domain** - Sử dụng tự do không hạn chế
- **CC BY-SA** - Cần ghi công tác giả, các tác phẩm phái sinh dùng cùng giấy phép
- **CC0** - Tương đương Public Domain

Cuốn sách này được phát hành dưới **CC BY-SA 4.0**, tương thích với tất cả các giấy phép trên.


## Attribution cho hình ảnh mới

Tất cả 155 hình ảnh mới (prefix `ch*`) đều được tải từ **Wikimedia Commons** và tuân thủ các giấy phép mở:

- **Public Domain**: Miễn phí sử dụng không hạn chế
- **CC BY-SA 3.0/4.0**: Ghi công tác giả, chia sẻ tương tự
- **CC0**: Tương đương Public Domain

### Cách tra cứu thông tin attribution

Để lấy thông tin chi tiết về tác giả và giấy phép của từng hình:

1. Lấy tên file gốc (bỏ prefix `ch{XX}_`)
2. Truy cập: `https://commons.wikimedia.org/wiki/File:{tên_file_gốc}`
3. Thông tin tác giả, giấy phép, mô tả có ở trang đó

**Ví dụ:**
- File local: `ch04_Complete_neuron_cell_diagram_en.svg`
- Tên gốc: `Complete_neuron_cell_diagram_en.svg`
- URL: https://commons.wikimedia.org/wiki/File:Complete_neuron_cell_diagram_en.svg

### Attribution trong sách

Trong phiên bản in/xuất bản, cần có phần "Image Credits" liệt kê:
- Tên file local
- Tác giả
- Giấy phép
- URL nguồn

Script Python có thể được mở rộng để tự động tạo danh sách attribution đầy đủ.
