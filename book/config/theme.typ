// Màu sắc hộp bằng chứng
#let color-level-a = rgb("#2e7d32") // Xanh lá đậm (Đã kiểm chứng vững chắc)
#let color-level-b = rgb("#1565c0") // Xanh dương (Bằng chứng khá tốt, còn tranh luận)
#let color-level-c = rgb("#f9a825") // Vàng (Giả thuyết / mô hình đang nghiên cứu)
#let color-level-d = rgb("#757575") // Xám (Quan niệm truyền thống / dân gian)

#let muc-bang-chung(level, content) = {
  let bg-color = color-level-d
  let label = "Mức D"
  
  if level == "A" {
    bg-color = color-level-a
    label = "Mức A: Đã kiểm chứng vững chắc"
  } else if level == "B" {
    bg-color = color-level-b
    label = "Mức B: Bằng chứng khá tốt"
  } else if level == "C" {
    bg-color = color-level-c
    label = "Mức C: Giả thuyết / Mô hình"
  } else if level == "D" {
    bg-color = color-level-d
    label = "Mức D: Quan niệm truyền thống/dân gian"
  }

  rect(
    width: 100%,
    fill: bg-color.lighten(90%),
    stroke: (left: 4pt + bg-color),
    radius: 2pt,
    inset: 10pt,
    [
      *#label*\
      #content
    ]
  )
}

// Bảng dữ liệu với header được tô màu
#let bang-du-lieu(header: (), body: ()) = {
  let ncols = header.len()
  table(
    columns: (1fr,) * ncols,
    stroke: 0.5pt + luma(180),
    inset: (x: 8pt, y: 5pt),
    align: center,
    ..header.map(h => table.cell(fill: luma(235), text(weight: "bold", h))),
    ..body.flatten().map(c => table.cell(c)),
  )
}
