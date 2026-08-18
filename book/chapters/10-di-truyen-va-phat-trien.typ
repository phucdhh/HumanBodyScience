#import "../config/template.typ": question-section
#import "../config/theme.typ": muc-bang-chung
#import "../glossary/thuat-ngu.typ": term

= DI TRUYỀN VÀ PHÁT TRIỂN

Bạn mang trong mình một bản thiết kế dài 3 tỷ ký tự — #term("adn") — được viết bằng bốn chữ cái hóa học (A, T, G, C). Bản thiết kế này quy định màu mắt, nhóm máu, chiều cao tiềm năng, và một phần tính cách của bạn. Và nó được truyền lại từ tổ tiên xa xưa nhất của bạn, qua hàng triệu thế hệ.

Trong chương này, chúng ta sẽ khám phá di truyền học — khoa học về cách thông tin di truyền được lưu trữ, truyền lại, và thể hiện ra bên ngoài.

== ADN — Bản thiết kế sự sống

#figure(
  image("../assets/images/dna.svg", width: 40%),
  caption: [Cấu trúc xoắn kép của phân tử ADN]
)

ADN (deoxyribonucleic acid) là một phân tử hình xoắn kép — giống như hai sợi dây xoắn vào nhau, tạo thành cấu trúc cầu thang xoắn ốc. Mỗi "bậc thang" là một cặp base: A (adenine) với T (thymine), G (guanine) với C (cytosine).

Toàn bộ ADN trong một tế bào — gọi là *genome* — dài khoảng 2 mét nếu duỗi thẳng, nhưng được gói gọn trong nhân tế bào có đường kính chỉ 6 micromet. Cách gói: ADN quấn quanh protein histone tạo thành #term("chromatin"), chromatin cuộn chặt thành #term("nhiem-sac-the") khi tế bào chuẩn bị phân chia @lander2001.

=== Gene — Đơn vị thông tin

Mỗi #term("gene") là một đoạn ADN mã hóa cho một protein hoặc một RNA chức năng. Con người có khoảng 20.000 gene — ít hơn nhiều so với một cây lúa (khoảng 40.000 gene) hay một con tắc kè (khoảng 24.000 gene). Điều làm chúng ta phức tạp không phải số lượng gene, mà là cách các gene được điều hòa và kết nối với nhau @alberts2022.

Mỗi người có hai bản copy của mỗi gene — một từ cha, một từ mẹ. Các biến thể khác nhau của cùng một gene gọi là *allele* (các phiên bản khác nhau của gene). Ví dụ: gene quy định nhóm máu ABO có 3 allele (A, B, O) — bạn nhận một allele từ mỗi bên cha mẹ, tạo ra nhóm máu A, B, AB, hoặc O.

== Di truyền — Con nhà tông

=== Di truyền Mendel

Các quy luật di truyền cơ bản được nhà sư người Áo Gregor Mendel khám phá vào thế kỷ 19 khi nghiên cứu cây đậu Hà Lan:

- Mỗi tính trạng do hai allele quy định (một từ cha, một từ mẹ).
- Một số allele *trội* (dominant) — chỉ cần một bản copy là đủ để biểu hiện. Số khác *lặn* (recessive) — cần hai bản copy mới biểu hiện.

Ví dụ: allele mắt nâu (B) là trội so với allele mắt xanh (b). Nếu bạn có:
- BB hoặc Bb → mắt nâu (allele trội "át" allele lặn)
- bb → mắt xanh (chỉ khi có 2 allele lặn)

Một ví dụ khác: bệnh xơ nang (cystic fibrosis) do allele lặn — chỉ biểu hiện khi người đó nhận 2 allele bệnh (một từ mỗi bên cha mẹ).

=== Ngoài Mendel — Di truyền phức tạp hơn

Hầu hết các tính trạng người — chiều cao, cân nặng, trí thông minh, nguy cơ bệnh tim — không tuân theo quy luật Mendel đơn giản. Chúng là *đa gene* (polygenic): chịu ảnh hưởng của hàng trăm, thậm chí hàng nghìn gene, mỗi gene đóng góp một phần nhỏ @plomin2018. Môi trường (dinh dưỡng, giáo dục, lối sống) cũng đóng vai trò quan trọng không kém.

== Đột biến — Sai sót có thể tốt hoặc xấu

#term("dot-bien") là sự thay đổi trong trình tự ADN. Chúng xảy ra tự nhiên mỗi khi tế bào phân chia — khoảng 1-2 đột biến mới mỗi lần phân bào. Hầu hết đột biến vô hại (nằm ở vùng ADN không mã hóa), một số có hại (gây bệnh), và rất hiếm khi có lợi (nguồn nguyên liệu cho tiến hóa).

Đột biến trong *gene sinh ung thư* (*oncogene* - gene "ga" khi đột biến làm tế bào phân chia mất kiểm soát) hoặc *gene ức chế khối u* (*tumor suppressor* - gene "phanh" khi mất chức năng không còn dừng được phân chia) có thể dẫn đến ung thư. Ung thư là bệnh của ADN: một tế bào tích lũy nhiều đột biến qua thời gian, mất kiểm soát phân chia, và phát triển thành khối u @vogelstein2013.

#muc-bang-chung("A")[
  *CRISPR — Cắt và sửa ADN:* Năm 2012, các nhà khoa học phát triển *CRISPR-Cas9* (công cụ chỉnh sửa gene chính xác — giống như GPS tìm vị trí sai + kéo cắt + dán đoạn mới) — một công cụ cho phép cắt ADN tại một vị trí chính xác, như dùng kéo phân tử cắt một câu trong cuốn bách khoa toàn thư 3 tỷ chữ. Công nghệ này có tiềm năng chữa các bệnh di truyền (thiếu máu hồng cầu liềm, xơ nang, Huntington) bằng cách sửa trực tiếp gene đột biến. Tuy nhiên, việc chỉnh sửa gene ở phôi người (thay đổi di truyền cho các thế hệ sau) đặt ra những câu hỏi đạo đức sâu sắc và hiện đang bị cấm hoặc kiểm soát chặt chẽ ở hầu hết các quốc gia.
]

== Phát triển — Từ một tế bào đến 37 nghìn tỷ

#figure(
  image("../assets/images/ch09_6 week human embryo nervous system.svg", width: 55%),
  caption: [Hệ thần kinh phôi người 6 tuần tuổi]
)

Cuộc đời bạn bắt đầu từ một tế bào duy nhất — hợp tử (fertilized egg) — được tạo thành từ sự kết hợp giữa tinh trùng và trứng. Tế bào đó chứa toàn bộ ADN cần thiết để tạo ra bạn.

=== Các giai đoạn phát triển chính

- *Phân chia:* Hợp tử phân chia thành 2, 4, 8, 16 tế bào... trong vài ngày.
- *Phôi nang (blastocyst):* Khoảng ngày thứ 5, khối tế bào tạo thành cấu trúc rỗng gọi là phôi nang, làm tổ trong tử cung.
- *Phôi thai (embryo):* Tuần 3-8 — hình thành các cơ quan chính (tim bắt đầu đập tuần thứ 4).
- *Thai nhi (fetus):* Từ tuần 9 đến khi sinh — các cơ quan hoàn thiện và phát triển.
- *Trẻ sơ sinh → người trưởng thành:* Phát triển thể chất (cao lên, lớn lên), phát triển thần kinh (học nói, đi, tư duy), dậy thì (biến đổi giới tính).

=== Biệt hóa tế bào — Các gene được "bật" và "tắt"

Tất cả tế bào trong cơ thể — tế bào gan, tế bào cơ, tế bào thần kinh — đều chứa cùng một genome. Sự khác biệt nằm ở *gene nào được bật*. Tế bào gan "bật" các gene sản xuất enzyme giải độc và "tắt" gene myosin (co cơ). Tế bào cơ thì ngược lại. Quá trình này gọi là *biệt hóa* và được kiểm soát bởi các tín hiệu hóa học trong môi trường vi mô quanh tế bào.

#muc-bang-chung("D")[
  *"Gene quyết định tất cả" — Chưa chính xác:* Nhiều người nghĩ gene là số phận — có gene béo phì thì chắc chắn béo, có gene trầm cảm thì chắc chắn trầm cảm. Thực tế, hầu hết các tính trạng phức tạp đều là kết quả của sự tương tác giữa gene và môi trường (G×E). Một người có gene nguy cơ béo phì nhưng ăn uống lành mạnh và tập thể dục có thể không bao giờ bị béo phì. Gene nạp đạn, nhưng môi trường và lối sống mới là người bóp cò.
]

#question-section()

1. Phân biệt giữa gene, nhiễm sắc thể, và genome — mối quan hệ giữa chúng như thế nào?
2. Tại sao hai anh em sinh đôi cùng trứng có ADN giống hệt nhau nhưng vẫn có thể khác nhau về tính cách và nguy cơ bệnh tật?
3. Giải thích tại sao ung thư được gọi là "bệnh của ADN" — điều này nói lên gì về chiến lược phòng ngừa?
4. Nếu công nghệ chỉnh sửa gene CRISPR có thể chữa bệnh di truyền, theo bạn có nên cho phép chỉnh sửa gene ở phôi người không? Tại sao?
