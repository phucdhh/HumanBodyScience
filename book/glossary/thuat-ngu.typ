// Định nghĩa các thuật ngữ để sử dụng thống nhất
#let thuat-ngu = (
  "te-bao": ("Tế bào", "Cell"),
  "mo": ("Mô", "Tissue"),
  "ad": ("ADN", "DNA"),
  "co-quan": ("Cơ quan", "Organ"),
  "he-co-quan": ("Hệ cơ quan", "Organ system"),
  "homeostasis": ("Cân bằng nội môi", "Homeostasis"),
  "rct": ("Thử nghiệm đối chứng ngẫu nhiên", "Randomized Controlled Trial - RCT"),
  "nhom-chung": ("Nhóm chứng", "Control group"),
)

// Hàm hiển thị thuật ngữ
#let term(key) = {
  if key in thuat-ngu {
    thuat-ngu.at(key).at(0)
  } else {
    "[" + key + "]"
  }
}
