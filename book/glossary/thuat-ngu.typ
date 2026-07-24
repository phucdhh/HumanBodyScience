// Định nghĩa các thuật ngữ để sử dụng thống nhất
#let thuat-ngu = (
  "te-bao": ("Tế bào", "Cell"),
  "mo": ("Mô", "Tissue"),
  "ad": ("ADN", "DNA"),
)

// Hàm hiển thị thuật ngữ
#let term(key) = {
  if key in thuat-ngu {
    thuat-ngu.at(key).at(0)
  } else {
    "[" + key + "]"
  }
}
