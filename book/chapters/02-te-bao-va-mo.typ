#import "../config/template.typ": question-section
#import "../config/theme.typ": muc-bang-chung
#import "../glossary/thuat-ngu.typ": term

= TẾ BÀO VÀ MÔ

== Một thế giới nhỏ bé bên trong bạn

Hãy tưởng tượng: nếu thu nhỏ bạn xuống kích thước của một hạt bụi, rồi đưa bạn vào trong cơ thể, bạn sẽ có cơ hội khám phá một thế giới kỳ diệu. Ở đó - trong cơ thể người - không phải là những thành phố hay con đường thông thường, mà là hàng nghìn tỷ "nhà máy" thu nhỏ — mỗi nhà máy hoạt động nhịp nhàng, sản xuất năng lượng, xử lý thông tin, và giao tiếp với hàng xóm xung quanh. Đây chính là tế bào — những đơn vị nhỏ bé nhưng mạnh mẽ xây nên toàn bộ cơ thể bạn.

Câu chuyện bắt đầu từ năm 1665, khi nhà khoa học người Anh Robert Hooke đặt một lát bần mỏng dưới kính hiển vi thô sơ. Ông thấy cấu trúc của nó gồm vô số khoang nhỏ rỗng, giống phòng của các tu sĩ trong tu viện. Ông gọi chúng là "cell" (tế bào). Thật ra Hooke chỉ nhìn thấy thành của các tế bào thực vật đã chết — nhưng ông vừa đặt nền móng cho một trong những khám phá quan trọng nhất của sinh học.

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

Mỗi tế bào được bao bọc bởi một lớp màng siêu mỏng nhưng cực kỳ tinh vi. Màng tế bào không phải bức tường tĩnh lặng — nó là một cấu trúc năng động, hoạt động 24/7 như một đội ngũ an ninh chuyên nghiệp.

Hãy tưởng tượng màng tế bào như một lớp kép các phân tử lipid có hai đầu: đầu "ưa nước" hướng ra ngoài, đuôi "kị nước" hướng vào trong. Thiết kế thông minh này tạo ra một rào cản chọn lọc — cho phép một số chất đi qua, ngăn chặn những chất khác. Nhúng trong lớp màng này là các protein hoạt động như cửa ngõ, máy bơm, và ăng-ten thu tín hiệu.

=== Cách màng tế bào kiểm soát giao thông

#figure(
  image("../assets/images/ch02_Membrane_transport.svg", width: 75%),
  caption: [Ba loại vận chuyển qua màng tế bào: thụ động, chủ động, và truyền tín hiệu]
)

Màng tế bào kiểm soát giao thông theo ba cách chính:

- *Thụ động:* Nước, oxy, CO₂ tự do đi qua màng từ nơi nồng độ cao đến thấp, giống như người đi theo luồng đông — không tốn năng lượng.
- *Chủ động:* Để đưa chất ngược chiều (như bơm natri ra ngoài, kali vào trong), tế bào phải tiêu tốn năng lượng — giống như máy bơm nước ngược chiều.
- *Truyền tin:* Các protein thụ thể trên màng như ăng-ten, tiếp nhận tin nhắn từ hormone trong máu và kích hoạt phản ứng bên trong tế bào.

== Bào quan — Các "phòng ban" trong nhà máy tế bào

#figure(
  image("../assets/images/ch02_Animal cell structure en.svg", width: 85%),
  caption: [Cấu trúc tế bào động vật với các bào quan chính]
)

Bên trong màng tế bào là một không gian bận rộn chứa nhiều "phòng ban" nhỏ — mỗi phòng ban thực hiện một nhiệm vụ chuyên biệt, phối hợp nhịp nhàng như một nhà máy hiện đại:

- *#term("ti-the"):* Nhà máy điện của tế bào. Đốt cháy đường và oxy để tạo ra *ATP* — đồng tiền năng lượng mà mọi tế bào sử dụng. Đặc biệt, ti thể có DNA riêng và ở người, DNA này chỉ di truyền từ mẹ.
- *Lưới nội chất (ER):* Xưởng sản xuất — ER hạt tổng hợp protein, ER trơn tổng hợp lipid và giải độc.
- *Bộ máy Golgi:* Bưu điện của tế bào — đóng gói, dán nhãn, và gửi protein đến đúng địa chỉ.
- *Lysosome:* Đội vệ sinh — chứa enzyme mạnh để tiêu hóa rác thải và vi khuẩn xâm nhập.
- *Bộ xương tế bào:* Mạng lưới vi ống và sợi protein giúp tế bào giữ hình dạng và vận chuyển vật chất bên trong.

== Nhân tế bào — Trung tâm chỉ huy

#figure(
  image("../assets/images/ch02_Diagram_human_cell_nucleus_id.svg", width: 70%),
  caption: [Cấu trúc nhân tế bào chứa ADN và các bào quan liên quan]
)

Nhân tế bào là bào quan lớn nhất, đóng vai trò như trung tâm chỉ huy chứa toàn bộ bản thiết kế sự sống: #term("adn"). DNA trong nhân được quấn quanh các protein histone tạo thành #term("chromatin"). Khi tế bào chuẩn bị phân chia, chromatin cuộn chặt lại thành nhiễm sắc thể — giống như cuộn cuốn sách lại để dễ di chuyển.

=== Từ một tế bào đến toàn bộ cơ thể

#figure(
  image("../assets/images/ch02_Mitosis Stages.svg", width: 80%),
  caption: [Các giai đoạn của nguyên phân (mitosis)]
)

Cơ thể bạn bắt đầu từ một tế bào duy nhất — hợp tử. Tế bào đó phân chia bằng #term("mitosis"), tạo ra hai tế bào con giống hệt về mặt di truyền. Quá trình này lặp đi lặp lại, một thành hai, hai thành bốn, bốn thành tám... cho đến khi hình thành hàng nghìn tỷ tế bào.

Nhưng làm sao từ một tế bào lại có tế bào mắt, tế bào gan, tế bào cơ? Đó là nhờ *đặc biệt hóa*: các tế bào "bật" hoặc "tắt" các gene khác nhau tùy vị trí và chức năng — giống như cùng một bản nhạc nhưng mỗi nhạc công chơi một đoạn khác nhau.

#figure(
  image("../assets/images/ch02_Cell_differentiation.svg", width: 70%),
  caption: [Quá trình biệt hóa tế bào: từ hợp tử đến các loại mô chuyên biệt]
)

Khác với nguyên phân, #term("meiosis") chỉ xảy ra ở tinh hoàn và buồng trứng, tạo ra tinh trùng và trứng với một nửa số nhiễm sắc thể — thiết kế thông minh để khi gặp nhau tạo lại số đầy đủ.

=== Chết tế bào theo chương trình — Cái chết có ích

#term("apoptosis") là quá trình tự hủy có kiểm soát @kerr1972. Nó khác với hoại tử (chết do tổn thương). Trong bào thai, các tế bào giữa các ngón tay phải chết theo chương trình để bạn có ngón tay rời — nếu không, bạn sẽ có bàn tay giống bàn chải. Tế bào già yếu hay bị đột biến (nguy cơ ung thư) cũng tự kích hoạt apoptosis để bảo vệ cơ thể.

#muc-bang-chung("B")[
  *Telomere — Đồng hồ sinh học của tế bào:* Mỗi lần tế bào phân chia, đầu mút nhiễm sắc thể gọi là telomere ngắn đi một chút — giống như dây giày bị mòn dần mỗi khi buộc. Khi telomere quá ngắn, tế bào không thể phân chia thêm và bước vào trạng thái "già yếu" @hayflick1965. Giới hạn này được gọi là giới hạn Hayflick. Vai trò của nó trong lão hóa toàn cơ thể vẫn đang được tranh luận @blackburn2000.
]

== Bốn loại mô — Vật liệu xây dựng cơ thể

Nếu tế bào là những viên gạch, thì mô là những bức tường được xây từ những viên gạch này. Các tế bào cùng loại liên kết với nhau bằng chất nền ngoại bào để tạo thành mô. Cơ thể có bốn loại mô cơ bản — mỗi loại đóng vai trò khác nhau như những vật liệu xây dựng chuyên dụng.

#figure(
  image("../assets/images/ch02_Four_tissue_types.svg", width: 80%),
  caption: [Bốn loại mô cơ bản và chức năng của từng loại]
)

=== Mô biểu bì — Lớp lót và hàng rào bảo vệ

Mô biểu bì tạo nên bề mặt da và lót các khoang bên trong như thực quản, dạ dày, ruột. Tùy vị trí, tế bào biểu bì xếp thành nhiều lớp hoặc một lớp:

- *Biểu bì đơn tầng* (một lớp) ở những nơi cần trao đổi chất nhanh như phế nang phổi — giống như rèm mỏng cho không khí đi qua.
- *Biểu bì đa tầng* (nhiều lớp) ở da, có chức năng bảo vệ — giống như tường thành nhiều lớp ngăn chặn kẻ xâm nhập.

Các tế bào xếp khít như tường gạch, tạo rào cản ngăn vi khuẩn và vật chất lạ xâm nhập.

=== Mô liên kết — Khung xương và keo dán

Đây là loại mô đa dạng nhất cơ thể. Điểm chung: tế bào nằm rải rác trong chất nền ngoại bào — giống như các viên gạch được neo trong bê tông. Gồm:

- *Mô liên kết lỏng lẻo:* Neo giữ cơ quan tại vị trí.
- *Gân và dây chằng:* Nối cơ với xương, xương với xương.
- *Máu và bạch huyết:* Hệ thống vận chuyển chất lỏng.
- *Xương và sụn:* Khung xương sống.
- *Mô mỡ:* Dự trữ năng lượng và cách nhiệt.

=== Mô cơ — Máy động tự nhiên

Tế bào cơ có khả năng co rút để tạo lực — giống như những sợi dây đàn hoạt động. Có ba loại:

- *Cơ vân:* Gắn vào xương, vận động theo ý muốn — bạn suy nghĩ rồi thực hiện.
- *Cơ trơn:* Thành dạ dày, ruột, mạch máu — hoạt động tự động, không cần bạn suy nghĩ.
- *Cơ tim:* Chỉ ở tim, bền bỉ co giãn suốt đời mà không bao giờ mệt.

=== Mô thần kinh — Mạng lưới thông tin toàn cầu

Gồm hai loại tế bào chính phối hợp như một đội ngũ truyền tin chuyên nghiệp:

- *Neuron (nơ-ron):* Đơn vị truyền dẫn tín hiệu — giống như dây điện.
- *Tế bào thần kinh đệm (Glia):* Nuôi dưỡng, bảo vệ và hỗ trợ neuron — dù ít được nhắc đến, chúng chiếm số lượng áp đảo trong não, giống như đội ngũ kỹ thuật bảo dưỡng hạ tầng.

#muc-bang-chung("C")[
  *Liệu pháp tế bào gốc — Hy vọng và thách thức:* Tế bào gốc là tế bào chưa được đặc biệt hóa, có thể phát triển thành nhiều loại tế bào khác. Các nhà khoa học đang thử nghiệm dùng tế bào gốc để sửa tim, tủy sống, hay điều trị tiểu đường type 1. Tuy lý thuyết hứa hẹn, hầu hết ứng dụng vẫn trong giai đoạn thử nghiệm lâm sàng — cần vượt qua rào cản miễn dịch và nguy cơ khối u trước khi phổ biến.
]

#muc-bang-chung("D")[
  *"Ăn gì bổ nấy" — Một quan niệm phổ biến nhưng không chính xác:* Ở nhiều nền văn hóa Á Đông, người ta tin ăn óc lợn bổ não, ăn xương hầm bổ xương. Trên góc nhìn sinh học, hệ tiêu hóa phân giải mọi loại mô thành các đơn vị phân tử cơ bản (axit amin, đường đơn, acid béo). Cơ thể sau đó lắp ráp các nguyên liệu này tại những mô đang cần — không có sự chuyển giao trực tiếp "tính năng" từ mô động vật ăn vào lên cơ quan người.
]

#question-section()

1. Giải thích tại sao màng tế bào được gọi là "người gác cổng thông minh"?
2. Sự khác biệt cốt lõi giữa nguyên phân (mitosis) và giảm phân (meiosis) là gì?
3. Phân tích tính đúng/sai của lời khuyên: "Bị gãy xương thì hầm xương lợn ăn cho mau lành."
4. Nếu cơ chế apoptosis không hoạt động, cơ thể sẽ đối mặt với nguy cơ lớn nhất là gì?
