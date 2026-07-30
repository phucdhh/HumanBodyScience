#import "../config/template.typ": question-section
#import "../config/theme.typ": muc-bang-chung
#import "../glossary/thuat-ngu.typ": term

= Tế bào và mô

== Câu chuyện về một khám phá thay đổi y học

Năm 1665, nhà khoa học người Anh Robert Hooke đặt một lát bần mỏng dưới kính hiển vi thô sơ. Ông thấy cấu trúc của nó gồm vô số khoang nhỏ rỗng, giống phòng của các tu sĩ trong tu viện. Ông gọi chúng là "cell" (tế bào). Thật ra Hooke chỉ nhìn thấy thành tế bào thực vật đã chết — nhưng ông vừa đặt nền móng cho một trong những khám phá quan trọng nhất của sinh học.

Sau đó, Antonie van Leeuwenhoek, một người Hà Lan tự chế tạo thấu kính, đã lần đầu tiên nhìn thấy tế bào sống và vi sinh vật. Những quan sát này dẫn đến *Học thuyết tế bào* — nền tảng của mọi sinh học hiện đại:

1. Mọi sinh vật đều được cấu tạo từ một hoặc nhiều tế bào.
2. Tế bào là đơn vị tổ chức cơ bản nhất của sự sống.
3. Mọi tế bào đều sinh ra từ tế bào có trước @alberts2022.

#muc-bang-chung("A")[
  *Tại sao tế bào phải nhỏ?* Nếu tế bào quá lớn, màng của nó không đủ diện tích để vận chuyển oxy và chất dinh dưỡng vào bên trong. Lý do: thể tích tăng theo lập phương ($r^3$) nhưng diện tích bề mặt chỉ tăng theo bình phương ($r^2$). Đây là lý do cơ thể bạn cần hàng nghìn tỷ tế bào nhỏ thay vì một vài tế bào khổng lồ.
]

== Màng tế bào — Người gác cổng thông minh

#figure(
  image("../assets/images/ch02_Cell membrane detailed diagram en.svg", width: 80%),
  caption: [Mô hình khảm động của màng tế bào]
)

Bao bọc mọi tế bào là một lớp màng siêu mỏng nhưng cực kỳ tinh vi. Màng tế bào không phải bức tường tĩnh lặng — nó là một cấu trúc năng động, được mô tả bằng *Mô hình khảm động* (Fluid mosaic model) @singer1972.

Hãy tưởng tượng màng tế bào như một lớp kép phospholipid: các phân tử có "đầu" ưa nước quay ra ngoài và "đuôi" kỵ nước quay vào trong, tạo một rào cản chọn lọc. Nhúng trong lớp màng này là các protein — chúng hoạt động như cửa ngõ, máy bơm, và ăng-ten thu tín hiệu.

=== Các chất đi qua màng thế nào?

- *Thụ động:* Nước, oxy, CO₂ tự do khuếch tán qua màng từ nơi nồng độ cao đến thấp, không tốn năng lượng.
- *Chủ động:* Để đưa chất ngược chiều nồng độ (như bơm Na⁺ ra ngoài, K⁺ vào trong), tế bào phải tiêu tốn ATP.
- *Truyền tín hiệu:* Các protein thụ thể trên màng như ăng-ten, tiếp nhận hormone từ máu và kích hoạt phản ứng bên trong tế bào.

== Bào quan — Các "phòng ban" trong nhà máy tế bào

#figure(
  image("../assets/images/ch02_Animal cell structure en.svg", width: 85%),
  caption: [Cấu trúc tế bào động vật với các bào quan chính]
)

Bên trong màng tế bào là tế bào chất — một không gian chứa nhiều bào quan (organelle), mỗi bào quan làm một nhiệm vụ chuyên biệt:

- *#term("ti-the"):* Nhà máy điện của tế bào. Đốt cháy đường và oxy để tạo ra ATP — đồng tiền năng lượng. Đặc biệt, ti thể có DNA riêng và ở người, DNA này chỉ di truyền từ mẹ.
- *Lưới nội chất (ER):* Có hai loại — ER hạt tổng hợp protein, ER trơn tổng hợp lipid và giải độc.
- *Bộ máy Golgi:* Bưu điện của tế bào — đóng gói, dán nhãn, và gửi protein đến đúng địa chỉ.
- *Lysosome:* Đội vệ sinh — chứa enzyme mạnh để tiêu hóa rác thải và vi khuẩn xâm nhập.
- *Bộ xương tế bào:* Mạng lưới vi ống và sợi protein giúp tế bào giữ hình dạng và vận chuyển vật chất bên trong.

== Nhân tế bào — Trung tâm chỉ huy

#figure(
  image("../assets/images/ch02_Diagram_human_cell_nucleus_id.svg", width: 70%),
  caption: [Cấu trúc nhân tế bào chứa ADN và các bào quan liên quan]
)

Nhân tế bào là bào quan lớn nhất, chứa toàn bộ bản thiết kế sự sống: #term("ad"). DNA trong nhân được quấn quanh các protein histone tạo thành #term("chromatin"). Khi tế bào chuẩn bị phân chia, chromatin cuộn chặt lại thành nhiễm sắc thể.

=== Phân bào và biệt hóa

#figure(
  image("../assets/images/ch02_Mitosis Stages.svg", width: 80%),
  caption: [Các giai đoạn của nguyên phân (mitosis)]
)

Cơ thể bạn bắt đầu từ một tế bào duy nhất — hợp tử. Tế bào đó phân chia bằng #term("mitosis"), tạo ra hai tế bào con giống hệt về mặt di truyền. Nhưng làm sao từ một tế bào lại có tế bào mắt, tế bào gan, tế bào cơ? Đó là nhờ *biệt hóa*: các tế bào "bật" hoặc "tắt" các gene khác nhau tùy vị trí và chức năng.

Khác với nguyên phân, #term("meiosis") chỉ xảy ra ở tinh hoàn và buồng trứng, tạo ra tinh trùng và trứng với một nửa số nhiễm sắc thể.

=== Chết tế bào theo chương trình — Cái chết có ích

#term("apoptosis") là quá trình tự hủy có kiểm soát @kerr1972. Nó khác với hoại tử (chết do tổn thương). Trong bào thai, các tế bào giữa các ngón tay phải chết theo chương trình để bạn có ngón tay rời. Tế bào già yếu hay bị đột biến (nguy cơ ung thư) cũng tự kích hoạt apoptosis để bảo vệ cơ thể.

#muc-bang-chung("B")[
  *Telomere — Đồng hồ sinh học của tế bào:* Mỗi lần tế bào phân chia, đầu mút nhiễm sắc thể gọi là telomere ngắn đi một chút. Khi telomere quá ngắn, tế bào không thể phân chia thêm và bước vào trạng thái "già yếu" @hayflick1965. Giới hạn này được gọi là giới hạn Hayflick. Vai trò của nó trong lão hóa toàn cơ thể vẫn đang được tranh luận @blackburn2000.
]

== Bốn loại mô — Vật liệu xây dựng cơ thể

Các tế bào cùng loại liên kết với nhau bằng chất nền ngoại bào để tạo thành mô. Cơ thể có bốn loại mô cơ bản:

=== Mô biểu bì — Lớp lót và hàng rào

Tạo nên bề mặt da và lót các khoang bên trong (thực quản, dạ dày, ruột). Biểu bì *đơn tầng* (một lớp) ở những nơi cần trao đổi chất như phế nang phổi. Biểu bì *đa tầng* (nhiều lớp) ở da, có chức năng bảo vệ. Các tế bào xếp khít như tường gạch.

=== Mô liên kết — Khung và keo dán

Loại mô đa dạng nhất cơ thể. Điểm chung: tế bào nằm rải rác trong chất nền ngoại bào. Gồm: mô liên kết lỏng lẻo (neo giữ cơ quan), gân và dây chằng, máu và bạch huyết, xương và sụn, mô mỡ (dự trữ năng lượng, cách nhiệt).

=== Mô cơ — Máy co rút

Tế bào cơ có khả năng co rút để tạo lực:
- *Cơ vân:* Gắn vào xương, vận động theo ý muốn.
- *Cơ trơn:* Thành dạ dày, ruột, mạch máu — hoạt động tự động.
- *Cơ tim:* Chỉ ở tim, bền bỉ suốt đời.

=== Mô thần kinh — Mạng lưới thông tin

Gồm hai loại tế bào chính:
- *Neuron:* Đơn vị truyền dẫn tín hiệu.
- *Tế bào thần kinh đệm (Glia):* Nuôi dưỡng, bảo vệ và hỗ trợ neuron — dù ít được nhắc đến, chúng chiếm số lượng áp đảo trong não.

#muc-bang-chung("C")[
  *Liệu pháp tế bào gốc — Hy vọng và thách thức:* Tế bào gốc là tế bào chưa biệt hóa, có thể phát triển thành nhiều loại tế bào khác. Các nhà khoa học đang thử nghiệm dùng tế bào gốc để sửa tim, tủy sống, hay điều trị tiểu đường type 1. Tuy lý thuyết hứa hẹn, hầu hết ứng dụng vẫn trong giai đoạn thử nghiệm lâm sàng — cần vượt qua rào cản miễn dịch và nguy cơ khối u trước khi phổ biến.
]

#muc-bang-chung("D")[
  *"Ăn gì bổ nấy" — Một quan niệm phổ biến nhưng không chính xác:* Ở nhiều nền văn hóa Á Đông, người ta tin ăn óc lợn bổ não, ăn xương hầm bổ xương. Trên góc nhìn sinh học, hệ tiêu hóa phân giải mọi loại mô thành các đơn vị phân tử cơ bản (axit amin, đường đơn, acid béo). Cơ thể sau đó lắp ráp các nguyên liệu này tại những mô đang cần — không có sự chuyển giao trực tiếp "tính năng" từ mô động vật ăn vào lên cơ quan người.
]

#question-section()

1. Giải thích tại sao màng tế bào được gọi là "người gác cổng thông minh"?
2. Sự khác biệt cốt lõi giữa nguyên phân (mitosis) và giảm phân (meiosis) là gì?
3. Phân tích tính đúng/sai của lời khuyên: "Bị gãy xương thì hầm xương lợn ăn cho mau lành."
4. Nếu cơ chế apoptosis không hoạt động, cơ thể sẽ đối mặt với nguy cơ lớn nhất là gì?
