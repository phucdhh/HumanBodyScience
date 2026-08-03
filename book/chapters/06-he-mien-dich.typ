#import "../config/template.typ": question-section
#import "../config/theme.typ": muc-bang-chung
#import "../glossary/thuat-ngu.typ": term

= HỆ MIỄN DỊCH

Mỗi ngày, cơ thể bạn bị tấn công bởi vô số vi khuẩn, virus, nấm và ký sinh trùng. Chúng ở trong không khí bạn thở, trên bề mặt bạn chạm, trong thức ăn bạn ăn. Thế mà phần lớn thời gian bạn không hề biết gì về chúng. Đó là nhờ #term("mien-dich") — một hệ thống phòng thủ tinh vi gồm hàng nghìn tỷ tế bào, hoạt động không ngừng nghỉ để bảo vệ bạn.

== Hai lớp phòng thủ

#figure(
  image("../assets/images/ch06_Layered Defense of the Human Immune System.svg", width: 70%),
  caption: [Các lớp phòng thủ của hệ miễn dịch]
)

Hệ miễn dịch có hai lớp bảo vệ, hoạt động phối hợp với nhau:

=== Miễn dịch bẩm sinh — Lớp phòng thủ đầu tiên

Đây là hàng rào đã có sẵn từ khi sinh ra, phản ứng nhanh nhưng không đặc hiệu — giống như một bức tường thành bảo vệ toàn bộ thành phố:

- *Hàng rào vật lý:* Da (lớp bảo vệ đầu tiên), niêm mạc đường hô hấp và tiêu hóa.
- *Hàng rào hóa học:* Dịch dạ dày (acid HCl), lysozyme trong nước mắt, chất nhầy bẫy vi khuẩn.
- *Tế bào thực bào (phagocyte):* Đại thực bào và bạch cầu trung tính — "ăn" và tiêu diệt mầm bệnh xâm nhập ngay lập tức.
- *Phản ứng viêm:* Khi mô bị tổn thương, cơ thể gửi tín hiệu hóa học (histamine, cytokine) để thu hút tế bào miễn dịch đến — gây sưng, nóng, đỏ, đau. Đây là dấu hiệu hệ miễn dịch đang làm việc.

=== Miễn dịch thích ứng — Lớp phòng thủ tinh nhuệ

#figure(
  image("../assets/images/ch06_Antibody_structure.svg", width: 50%),
  caption: [Cấu trúc kháng thể hình chữ Y]
)

Nếu mầm bệnh vượt qua hàng rào bẩm sinh, hệ miễn dịch thích ứng sẽ vào cuộc — chậm hơn (vài ngày) nhưng chính xác và có "trí nhớ". Giống như lực lượng đặc nhiệm được huấn luyện để truy tìm một tên tội phạm cụ thể @janeway2016:

- *Tế bào B:* Sản xuất #term("khang-the") — protein hình chữ Y gắn vào mầm bệnh, đánh dấu chúng để tiêu diệt.
- *Tế bào T hỗ trợ* (*CD4+* - tế bào T có protein bề mặt CD4): Chỉ huy — ra lệnh cho các tế bào miễn dịch khác hoạt động.
- *Tế bào T độc* (*CD8+* - tế bào T có protein bề mặt CD8): Sát thủ — tiêu diệt tế bào nhiễm virus hoặc tế bào ung thư.
- *Tế bào nhớ:* Sau khi chiến thắng, một số tế bào B và T trở thành "lính kỳ cựu" — sống hàng chục năm, sẵn sàng phản ứng ngay lập tức nếu cùng mầm bệnh xâm nhập lần sau.

#muc-bang-chung("A")[
  *Vắc-xin hoạt động thế nào?* Vắc-xin là cách "huấn luyện" hệ miễn dịch thích ứng một cách an toàn — cho nó gặp một phần mầm bệnh đã bị làm yếu hoặc vô hiệu hóa (gọi là *kháng nguyên* - antigen, bất kỳ chất lạ nào kích hoạt đáp ứng miễn dịch), để nó tạo tế bào nhớ mà không gây bệnh thật @pulendran2011. Khi mầm bệnh thật xâm nhập sau này, hệ miễn dịch đã sẵn sàng — phản ứng nhanh và mạnh đến mức bạn thậm chí không biết mình đã bị nhiễm. Đây là nguyên lý của tiêm chủng — một trong những phát minh y học cứu sống nhiều người nhất lịch sử.
]

== Khi hệ miễn dịch hoạt động sai

=== Dị ứng — Nhận định sai mục tiêu

Dị ứng là khi hệ miễn dịch phản ứng quá mức với các chất vô hại — phấn hoa, lông thú, đậu phộng, tôm — như thể chúng là kẻ xâm lược nguy hiểm. Cơ thể giải phóng *histamine* (chất hóa học gây phản ứng viêm — giãn mạch máu, tăng tiết dịch, kích thích dây thần kinh) gây ngứa, hắt hơi, sổ mũi, và trong trường hợp nặng, sốc phản vệ (anaphylaxis) có thể tử vong nếu không cấp cứu kịp thời.

#muc-bang-chung("C")[
  *Giả thuyết vệ sinh (Hygiene Hypothesis):* Từ những năm 1980, các nhà khoa học nhận thấy trẻ em lớn lên ở nông trại — tiếp xúc nhiều với vi sinh vật, bụi bẩn, và động vật — có tỷ lệ dị ứng và hen suyễn thấp hơn trẻ em thành thị. Giả thuyết vệ sinh cho rằng hệ miễn dịch cần được "huấn luyện" bằng cách tiếp xúc với vi sinh vật từ sớm, nếu không nó sẽ "nhàn rỗi" và quay ra tấn công các chất vô hại @bach2002. Giả thuyết này còn đang được nghiên cứu và tranh luận, nhưng nó giải thích một phần tại sao tỷ lệ dị ứng tăng mạnh ở các nước phát triển.
]

=== Bệnh tự miễn — Tấn công nhầm đồng đội

#term("tu-mien") xảy ra khi hệ miễn dịch mất khả năng phân biệt "ta" với "địch" và tấn công chính mô của cơ thể @cooper2018. Có hơn 80 bệnh tự miễn khác nhau:

- *Tiểu đường type 1:* Hệ miễn dịch phá hủy tế bào beta của tụy.
- *Viêm khớp dạng thấp:* Tấn công màng hoạt dịch khớp.
- *Lupus ban đỏ hệ thống:* Tấn công nhiều cơ quan (da, thận, khớp, não).
- *Bệnh Hashimoto:* Tấn công tuyến giáp → suy giáp.
- *Đa xơ cứng:* Tấn công *vỏ myelin* (lớp bao bọc sợi trục nơ-ron, giống cách điện dây điện, tăng tốc độ truyền tín hiệu lên 100 lần) bọc sợi thần kinh.

Bệnh tự miễn ảnh hưởng đến khoảng 5-10% dân số thế giới, và tỷ lệ này đang tăng — một phần do chẩn đoán tốt hơn, một phần do thay đổi môi trường sống.

=== Suy giảm miễn dịch

Khi hệ miễn dịch bị suy yếu — do bẩm sinh, do HIV/AIDS, do hóa trị ung thư, hoặc do thuốc ức chế miễn dịch — cơ thể trở nên dễ bị nhiễm trùng mà người khỏe mạnh dễ dàng chống lại.

#muc-bang-chung("D")[
  *"Tăng cường miễn dịch" — Cẩn thận với tiếp thị:* Rất nhiều sản phẩm — vitamin C, kẽm, tỏi, sữa ong chúa, tảo xoắn — quảng cáo "tăng cường hệ miễn dịch". Khái niệm này nghe có vẻ hay nhưng thực ra không chính xác về mặt y học. Một hệ miễn dịch khỏe mạnh là một hệ cân bằng — không quá yếu (dễ nhiễm trùng) cũng không quá mạnh (dị ứng, tự miễn). Hầu hết mọi người không cần "tăng cường" gì thêm. Các biện pháp thực sự có bằng chứng để duy trì miễn dịch khỏe mạnh rất đơn giản: ngủ đủ giấc, ăn uống đủ chất, vận động, tiêm vắc-xin đầy đủ, và không hút thuốc.
]

#question-section()

1. Phân biệt miễn dịch bẩm sinh và miễn dịch thích ứng — điểm khác biệt chính về tốc độ, độ đặc hiệu, và trí nhớ?
2. Giải thích tại sao vắc-xin có thể bảo vệ bạn khỏi bệnh trong nhiều năm, thậm chí suốt đời?
3. Một người bị dị ứng phấn hoa — điều gì đang xảy ra trong hệ miễn dịch của họ?
4. "Uống vitamin C liều cao giúp tăng cường miễn dịch, phòng cảm cúm." Dựa trên kiến thức chương này, bạn đánh giá tuyên bố trên thế nào?
