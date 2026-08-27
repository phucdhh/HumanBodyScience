#import "../config/template.typ": question-section
#import "../config/theme.typ": muc-bang-chung, bang-du-lieu, color-level-a, color-level-b, color-level-c, color-level-d
#import "../glossary/thuat-ngu.typ": term

= KHOA HỌC BIẾT ĐIỀU GÌ ĐÓ BẰNG CÁCH NÀO?

#figure(
  image("../assets/images/ch00_The Scientific Method.svg", width: 50%),
  caption: [Quy trình phương pháp khoa học]
)

Trước khi tìm hiểu về cơ thể người, chúng ta cần trả lời một câu hỏi quan trọng: làm sao để biết một thông tin Khoa học về Thân thể người là đáng tin?

Hãy tưởng tượng bạn sống ở thế kỷ 16. Bác sĩ của bạn tin rằng bệnh tật đến từ "máu xấu", và cách chữa là... trích huyết — lấy bớt máu ra. Họ không ác, cũng không phải ít hiểu biết. Có thể họ chỉ thiếu một thứ: công cụ để kiểm tra xem phương pháp của mình có thực sự hiệu quả hay không. Dần dần, Khoa học giúp xây dựng nên những công cụ đó. Hiểu được chúng sẽ giúp bạn đọc tin tức sức khỏe, quảng cáo thực phẩm chức năng, hay lời khuyên y tế trên mạng xã hội một cách tỉnh táo hơn, và trên hết, bạn có thể hiểu biết về cơ thể người nói chung và cơ thể bạn nói riêng một cách ngày càng thấu đáo.

Chương này trang bị cho bạn ba nhóm công cụ đó: cách khoa học kiểm chứng một tuyên bố, cách xếp hạng độ tin cậy của các loại bằng chứng, và cách đọc một tin tức y tế hay quảng cáo sức khỏe mà không bị đánh lừa. Đây là nền tảng để hiểu đúng các chương còn lại của cuốn sách — từ hệ miễn dịch đến những phương pháp y học cổ truyền.

== Phương pháp khoa học — Nghệ thuật tự nghi ngờ

=== Khoa học không phải là kho chứa sự thật

Đôi khi chúng ta hình dung Khoa học như một cuốn từ điển khổng lồ chứa các sự thật bất biến. Thực ra, khoa học giống một quy trình hơn: một cách đặt câu hỏi và kiểm tra câu trả lời, được thiết kế để giảm thiểu sai lầm của con người khi tìm hiểu vũ trụ, con người và những thứ xung quanh.

Điều thú vị là phương pháp khoa học được xây dựng trên một nguyên tắc rất phản trực giác: cố gắng chứng minh mình *sai*. Nhà triết học Karl Popper gọi đây là nguyên tắc *khả phủ chứng*: một tuyên bố khoa học phải có thể bị bác bỏ bởi bằng chứng @popper1959.

Ví dụ: "Tập thể dục làm giảm huyết áp" là một tuyên bố khoa học, vì ta hoàn toàn có thể thiết kế một thí nghiệm để kiểm tra nó. Còn "Cơ thể có năng lượng huyền bí mà khoa học không thể đo được" thì không phải là tuyên bố khoa học, vì không có cách nào để chứng minh nó sai.

=== Khi y học không có công cụ kiểm chứng

Năm 1799, George Washington — tổng thống đầu tiên của nước Mỹ — bị viêm họng nặng. Các bác sĩ chẩn đoán ông bị "mất cân bằng dịch thể" và quyết định trích huyết: mở tĩnh mạch lấy đi khoảng 40% thể tích máu trong vòng chưa đầy một ngày. Ngày hôm sau, ông qua đời. Trích huyết từng được dùng suốt hơn 2.000 năm để chữa gần như mọi bệnh. Các bác sĩ của Washington không ác ý, cũng không kém hiểu biết — họ chỉ thiếu *bằng chứng thực nghiệm*: một cách để kiểm tra xem phương pháp của mình thực sự giúp bệnh nhân hay còn hại họ.

Giữa thế kỷ 19, tại bệnh viện phụ sản Vienna, bác sĩ Ignaz Semmelweis nhận ra một nghịch lý @semmelweis1861. Khu đỡ đẻ do các bác sĩ phụ trách — những người vừa mổ tử thi bệnh nhân xong — có tỷ lệ sản phụ tử vong vì sốt hậu sản lên tới khoảng 10%; khu do các nữ hộ sinh đảm nhận chỉ khoảng 4%. Khi ông yêu cầu các bác sĩ rửa tay bằng nước vôi clo trước khi đỡ đẻ, tỷ lệ tử vong lập tức tụt xuống dưới 1%. Vậy mà đề xuất của ông bị bác bỏ suốt nhiều năm — một phần vì chưa ai giải thích được *vì sao* rửa tay lại có tác dụng (thuyết vi khuẩn còn chưa ra đời), một phần vì các đồng nghiệp không muốn thừa nhận chính bàn tay họ mang bệnh đến cho sản phụ.

Hai câu chuyện này dạy ta hai bài học. *Thứ nhất*, ngay cả những người thông minh và thiện chí cũng có thể sai khi không có cách kiểm chứng. *Thứ hai*, một kết quả quan sát dù ấn tượng đến đâu cũng cần được kiểm tra lại bằng thực nghiệm có kiểm soát — như câu chuyện dưới đây.

#muc-bang-chung("A")[
  *Thử nghiệm có kiểm soát đầu tiên — "thí nghiệm" giữa đại dương:* Năm 1747, bác sĩ phẫu thuật người Scotland James Lind tiến hành một trong những thử nghiệm lâm sàng có kiểm soát đầu tiên được ghi lại @lind1753. Ông chia 12 thủy thủ bị bệnh scorbut (do thiếu vitamin C) thành 6 nhóm nhỏ, mỗi nhóm dùng một loại "thuốc" khác nhau — từ giấm, nước biển, đến cam và chanh. Nhóm ăn cam chanh phục hồi nhanh chóng, các nhóm khác thì không. Điểm mấu chốt không phải kết quả quá lớn (số lượng rất nhỏ), mà là *cấu trúc so sánh*: chỉ khi có một nhóm để đối chiếu, ta mới phân biệt được hiệu quả thật so với sự trùng hợp ngẫu nhiên.
]

=== Vòng đời của một nghiên cứu khoa học

Mọi nghiên cứu đều bắt đầu từ một quan sát gây tò mò: "Tại sao người dân vùng Địa Trung Hải lại ít bị bệnh tim hơn?" Từ đó, nhà khoa học đặt giả thuyết, thiết kế thí nghiệm, thu thập dữ liệu, và phân tích kết quả.

Nhưng bước quan trọng nhất đến sau cùng: *bình duyệt ngang hàng* (peer review). Trước khi công bố, một nghiên cứu phải được các chuyên gia độc lập khác trong cùng lĩnh vực đọc và phê bình @sackett2000. Đây là bộ lọc chất lượng đầu tiên.

Sau khi công bố, một kết quả chỉ thực sự đáng tin khi các nhóm nghiên cứu *độc lập*, ở các nơi *khác nhau*, có thể làm lại và thu được kết quả tương tự. Đây gọi là *tái lặp* (replication).

#muc-bang-chung("A")[
  *Tại sao khoa học có thể "sai" — và đó lại là điểm mạnh:* Không phải bài báo khoa học nào qua bình duyệt cũng đúng. Có thể có sai sót trong thiết kế, gian lận dữ liệu, hoặc đơn giản là kết quả ngẫu nhiên. Nhưng chính cơ chế tự sửa sai — qua bình duyệt, tái lặp, và tổng quan hệ thống — làm cho Khoa học thực chứng đáng tin cậy hơn bất kỳ nguồn tri thức nào khác. Chưa có hệ thống nào khác có khả năng nhận ra và sửa lỗi của chính mình một cách có tổ chức như vậy.
]

== Thang bằng chứng trong y học

=== Từ chuyện bà hàng xóm đến thử nghiệm lâm sàng

Bà hàng xóm của bạn uống nước lá cây X và huyết áp giảm. Đây có phải bằng chứng lá cây X có tác dụng không? Theo ngôn ngữ y học, đây là một *báo cáo ca bệnh riêng* (case report) — loại bằng chứng yếu nhất. Có thể huyết áp bà giảm vì bà ngủ ngon hơn, bắt đầu đi bộ mỗi sáng, có niềm tin vào X và tinh thần lạc quan hơn khi dùng X, hoặc đơn giản là huyết áp tự nhiên dao động.

Y học đã xây dựng một hệ thống phân cấp để đánh giá độ tin cậy của các loại bằng chứng khác nhau:

- *Ý kiến chuyên gia & báo cáo ca bệnh riêng:* Có giá trị gợi ý hướng nghiên cứu, nhưng chưa đủ để kết luận.
- *Nghiên cứu quan sát:* Phát hiện *tương quan* (correlation - có thấy dấu hiệu thể hiện mối quan hệ qua lại) nhưng không chứng minh được *nhân quả* (causation - cái này là nguyên nhân của cái kia).
- *Thử nghiệm lâm sàng đối chứng ngẫu nhiên (RCT):* Đây là "tiêu chuẩn vàng" để chứng minh một phương pháp điều trị có hiệu quả hay không @schulz2010.
- *Tổng quan hệ thống & Phân tích gộp:* Tổng hợp dữ liệu từ nhiều RCT để có bức tranh toàn diện nhất @higgins2011.

Các bậc thang này được sắp xếp thành một *tháp bằng chứng* — càng lên cao, mỗi khẳng định càng dựa trên bằng chứng mạnh hơn:

#figure(
  caption: [Tháp bằng chứng — càng lên cao, kết luận càng đáng tin cậy],
  align(center,
    stack(
      dir: ttb,
      spacing: 3pt,
      rect(width: 42%, height: 1.4em, fill: color-level-a.lighten(88%), stroke: 0.8pt + color-level-a, radius: 2pt, align(center, text(size: 9pt, weight: "bold")[Mức A — Tổng quan & phân tích gộp])),
      rect(width: 56%, height: 1.4em, fill: color-level-b.lighten(88%), stroke: 0.8pt + color-level-b, radius: 2pt, align(center, text(size: 9pt, weight: "bold")[Mức B — Thử nghiệm lâm sàng RCT mù đôi])),
      rect(width: 70%, height: 1.4em, fill: color-level-c.lighten(88%), stroke: 0.8pt + color-level-c, radius: 2pt, align(center, text(size: 9pt, weight: "bold")[Mức C — Nghiên cứu quan sát])),
      rect(width: 84%, height: 1.4em, fill: color-level-d.lighten(88%), stroke: 0.8pt + color-level-d, radius: 2pt, align(center, text(size: 9pt, weight: "bold")[Mức D — Ý kiến chuyên gia & báo cáo ca bệnh])),
    )
  ),
)

=== Một RCT hoạt động thế nào?

Hãy tưởng tượng bạn là một nhà nghiên cứu và muốn biết thuốc X có chữa được bệnh Y không. Cách làm khoa học là:

1. *Ngẫu nhiên hóa:* Chia bệnh nhân thành hai nhóm hoàn toàn ngẫu nhiên. Một nhóm uống thuốc X, nhóm kia uống giả dược (viên đường chẳng hạn, có hình dáng bên ngoài giống viên thuốc nhưng không có thuốc). Việc ngẫu nhiên đảm bảo hai nhóm tương đồng về nhiều khía cạnh trước khi bắt đầu.
2. *Mù đôi:* Cả bệnh nhân lẫn bác sĩ đều không biết ai uống thuốc thật, ai uống giả dược - trừ bạn. Điều này loại trừ hiệu ứng tâm lý: bệnh nhân có thể khỏe hơn chỉ vì tin mình được điều trị (hiệu ứng giả dược).
3. *So sánh:* Nếu nhóm uống thuốc X khỏe hơn nhóm giả dược một cách rõ rệt, ta có thể kết luận thuốc X có tác dụng (trong các điều kiện đã được đặt ra).

#figure(
  caption: [Cấu trúc của một RCT — ngẫu nhiên hóa và mù đôi],
  align(center,
    stack(
      dir: ttb,
      spacing: 3pt,
      rect(width: 72%, height: 1.4em, fill: luma(240), radius: 2pt, align(center)[#text(size: 9pt)[Bệnh nhân đủ tiêu chuẩn đồng ý tham gia]]),
      align(center, text(size: 12pt)[#sym.arrow.b]),
      rect(width: 72%, height: 1.4em, fill: luma(240), radius: 2pt, align(center)[#text(size: 9pt)[Ngẫu nhiên hóa — cả bệnh nhân lẫn bác sĩ đều "mù"]]),
      align(center, text(size: 12pt)[#sym.arrow.b]),
      grid(
        columns: (1fr, 1fr),
        rect(width: 90%, height: 1.4em, fill: color-level-c.lighten(90%), radius: 2pt, align(center)[#text(size: 9pt)[Nhóm 1 — uống thuốc X]]),
        rect(width: 90%, height: 1.4em, fill: color-level-d.lighten(90%), radius: 2pt, align(center)[#text(size: 9pt)[Nhóm 2 — uống giả dược]]),
      ),
      align(center, text(size: 12pt)[#sym.arrow.b]),
      rect(width: 72%, height: 1.4em, fill: luma(240), radius: 2pt, align(center)[#text(size: 9pt)[So sánh kết quả — nhóm nào khỏe hơn rõ rệt?]]),
    )
  ),
)

#muc-bang-chung("B")[
  *Tương quan không phải nhân quả — Câu chuyện rượu vang đỏ:* Nhiều nghiên cứu quan sát từng chỉ ra rằng phụ nữ uống rượu vang đỏ lượng nhỏ có sức khỏe tim mạch tốt hơn. Nhưng liệu đó có phải nhờ rượu vang? Hóa ra, những phụ nữ uống rượu vang đỏ thường có thu nhập cao hơn, lối sống lành mạnh hơn, và khám sức khỏe định kỳ hơn. Khi các RCT được tiến hành, lợi ích của rượu vang đỏ gần như biến mất. Đây là lý do "tương quan không phải nhân quả" — một nguyên tắc quan trọng giúp bạn không bị đánh lừa bởi những con số biết nói.
]

=== Hiệu ứng giả dược — niềm tin có sức mạnh riêng

#term("gia-duoc") — một viên thuốc trơ không chứa hoạt chất — tưởng như không thể có tác dụng gì. Vậy mà trong hàng loạt thử nghiệm, một tỷ lệ đáng kể người bệnh dùng giả dược vẫn thấy đỡ hơn hẳn so với không điều trị, nhất là với các triệu chứng chủ quan như đau, buồn nôn, lo âu và mất ngủ @hrobjartsson2010.

Cơ chế của hiệu ứng này không hề "ma thuật": khi bạn tin một phương pháp sẽ có tác dụng, người ta thấy não giải phóng các chất giảm đau nội sinh (endorphin) và điều chỉnh chú ý, cảm xúc theo hướng dễ chịu hơn. Trong nhiều nghiên cứu, dùng thuốc chặn thụ thể opioid — vốn triệt tiêu tác dụng của endorphin — làm giảm hiệu quả giảm đau của giả dược, cho thấy có cơ chế sinh học thật sự phía sau hiệu ứng này.

Hiệu ứng ngược cũng tồn tại: *hiệu ứng nocebo* (#term("nocebo")) — khi người bệnh *kỳ vọng* tác dụng phụ, họ có thể thực sự gặp tác dụng phụ dù chỉ dùng giả dược. Đó là lý do mô tả tác dụng phụ trên tờ hướng dẫn thuốc có thể tự nó "sinh ra" một phần các triệu chứng được báo cáo.

Hai hệ quả thực tế rất quan trọng:

- Một phương pháp "khiến tôi cảm thấy khỏe hơn" chưa chứng minh được nó có tác dụng đặc hiệu — đó có thể là giả dược, là hồi quy về trung bình (sẽ nói dưới đây), hay đơn giản là diễn biến tự nhiên của bệnh.
- Vì giả dược chỉ mạnh với một số loại triệu chứng nhất định, một phương pháp được chứng minh bằng RCT mù đôi luôn đáng tin hơn một phương pháp chỉ dựa trên trải nghiệm cá nhân.

#muc-bang-chung("A")[
  *Giả dược không phải là "tưởng tượng":* Hiệu ứng giả dược là một phản ứng sinh học có thật, có thể đo được qua hoạt động não và các chất giảm đau nội sinh. Điều này không biện hộ cho "chữa bệnh bằng niềm tin" — mà ngược lại: chính vì giả dược mạnh đến vậy, chúng ta càng cần RCT mù đôi để phân biệt tác dụng đặc hiệu của một phương pháp với hiệu ứng kỳ vọng.
]

== Khoa học cũng có giới hạn

=== Những thiên kiến cần biết

Ngay cả các RCT tốt nhất cũng không hoàn hảo:

- *Thiên kiến tài trợ:* Nghiên cứu do công ty dược tài trợ có xu hướng cho kết quả tích cực hơn @goldacre2012.
- *Thiên kiến công bố:* Các tạp chí khoa học thích đăng kết quả "thú vị" (dương tính) hơn kết quả "nhàm chán" (âm tính), làm méo mó bức tranh tổng thể.
- *Thiên kiến chọn mẫu:* Người tình nguyện tham gia thử nghiệm thường khỏe hơn, trẻ hơn, và tuân thủ điều trị tốt hơn người dân nói chung.

=== Hồi quy về trung bình

Một nguyên tắc thống kê đơn giản nhưng dễ bị bỏ qua: các giá trị cực đoan thường có xu hướng trở về gần mức trung bình khi đo lại @barnett2005. Huyết áp hôm nay đo cao bất thường thì lần đo sau thường thấp hơn. Bạn thức dậy một buổi sáng với cơn đau lưng tệ nhất trong nhiều tháng, rồi ngày hôm sau đỡ hơn — không phải vì bạn đã làm gì, mà vì cơ thể vốn dao động quanh mức nền của chính nó. Hiện tượng này gọi là *hồi quy về trung bình* (#term("hoi-quy-trung-binh")).

Hiện tượng này giải thích vì sao rất nhiều phương pháp "chữa bách bệnh" có vẻ như hiệu quả. Người ta thường tìm đến một liệu pháp đúng vào lúc triệu chứng tồi tệ nhất — rồi dù không làm gì, tình trạng cũng có xu hướng cải thiện chỉ nhờ hồi quy về trung bình. Phương pháp bị ghi công một cách nhầm lẫn. Trong thể thao, các nhà bình luận gọi đây là "lời nguyền trang bìa": vận động viên vừa được ca ngợi hết lời sau chuỗi phong độ đỉnh cao thì trận sau thường chơi kém hơn — không phải vì bị "nguyền", mà vì phong độ đỉnh cao vốn khó duy trì.

Bài học: bất kỳ cải thiện nào xảy ra sau khi dùng một sản phẩm hay liệu pháp đều cần được đối chiếu với một nhóm không dùng (nhóm đối chứng) trong cùng điều kiện. Nếu không, ta dễ gán công nhầm lẫn.

=== "Có ý nghĩa thống kê" và "Có ý nghĩa lâm sàng"

Một hiểu lầm phổ biến: Một nghiên cứu với 10.000 người phát hiện thuốc X làm giảm huyết áp thêm 1.2 mmHg, với p < 0.001 (rất có ý nghĩa thống kê). Bạn có nên uống thuốc X này không? Gần như chắc chắn là không. Con số 1.2 mmHg là mức thay đổi quá nhỏ để có lợi ích sức khỏe thực tế — nó nằm trong phạm vi dao động tự nhiên của huyết áp trong ngày. Với mẫu đủ lớn, ngay cả khác biệt vô nghĩa cũng có thể "có ý nghĩa thống kê".

=== Cỡ mẫu và khoảng tin cậy

Khi một nghiên cứu kết luận "thuốc X giảm huyết áp trung bình 5 mmHg", con số 5 mmHg ấy không phải là một giá trị tuyệt đối chắc chắn. Mẫu càng lớn, kết quả càng sát giá trị thật của toàn bộ dân số; mẫu càng nhỏ, sai số càng lớn. Vì vậy, thay vì chỉ đưa một con số, các nghiên cứu tốt thường báo thêm *khoảng tin cậy* (#term("khoang-tin-cay")): ví dụ "giảm 5 mmHg (khoảng tin cậy 95%: 4.2–5.8 mmHg)" — nghĩa là với cách đo này, giá trị thật gần như chắc chắn nằm trong khoảng đó.

Khoảng tin cậy nói lên điều mà p-value không nói: *mức độ chắc chắn*, chứ không chỉ "có ý nghĩa hay không". Một nghiên cứu ra kết luận "giảm 1.2 mmHg (p < 0.001)" đúng về mặt thống kê, nhưng khoảng tin cậy hẹp và nằm sát 0 cho thấy hiệu quả thực tế gần như vô nghĩa. Khi đọc một tin y tế, hãy tìm khoảng tin cậy thay vì chỉ nhìn vào dòng chữ "p < 0.05" đầy ấn tượng — và nhớ rằng một kết quả "có ý nghĩa" chưa đồng nghĩa với "quan trọng".

#muc-bang-chung("C")[
  *Cuộc khủng hoảng tái lặp:* Khi các nhà nghiên cứu độc lập thử làm lại nhiều nghiên cứu nổi tiếng đã công bố trên các tạp chí hàng đầu, chỉ khoảng 30-50% cho ra kết quả tương tự @opensciencecollaboration2015. Điều này không có nghĩa "khoa học nói dối". Nó cho thấy khoa học đang tự vận hành: những kết quả không tái lặp được sẽ dần bị loại bỏ. Bài học cho bạn đọc là hãy cẩn thận với tiêu đề "Nghiên cứu mới phát hiện...". Một nghiên cứu đơn lẻ hiếm khi thay đổi bức tranh toàn cảnh.
]

== Cách đọc thông tin y tế thông minh

Mỗi khi đọc một tin tức sức khỏe, quảng cáo thực phẩm chức năng, hay lời khuyên y tế, hãy tự hỏi 5 điều @ioannidis2005 sau đây:

1. *Bằng chứng từ đâu?* Từ ý kiến cá nhân? Nghiên cứu quan sát? RCT? hay tổng quan hệ thống?
2. *Nghiên cứu trên đối tượng nào?* Kết quả trên chuột không thể tự động áp dụng cho người.
3. *Có nhóm đối chứng không?* "100 người dùng và 80 người thấy tốt hơn" — tốt hơn so với *ai*?
4. *Ai tài trợ?* Thông tin này thường được công bố ở cuối bài báo, hoặc có khi giấu kín không muốn cho độc giả biết.
5. *Đã được tái lặp chưa?* Nhiều nghiên cứu độc lập đồng thuận đáng tin hơn một nghiên cứu "đột phá".

=== Đọc biểu đồ cẩn thận — trục tung đang bắt đầu từ đâu?

Một mẹo thường thấy trong quảng cáo và báo chí đó là *cắt bớt trục tung* (trục đứng) để làm một khác biệt nhỏ nào đó trông thật lớn, khuếch đại khác biệt lên. Hai biểu đồ dưới đây mô tả cùng một dữ liệu về ba sản phẩm — nhưng trục tung bên trái bắt đầu từ 0, còn trục tung bên phải bị "phóng to" từ một điểm cắt cao hơn.

#figure(
 caption: [
    Cùng một dữ liệu, hai cách vẽ],
  grid(
    columns: (1fr, 1fr),
    align(center,
      stack(dir: ttb, spacing: 3pt)[
        #box(width: 13em, height: 6em, {
          place(top + left, dx: 1.8em, dy: 0em, rect(width: 0.6pt, height: 6em, fill: black))
          place(top + left, dx: 0em, dy: 0.05em, text(size: 8pt, "600"))
          place(top + left, dx: 1.5em, dy: 0.05em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(top + left, dx: 0em, dy: 2.05em, text(size: 8pt, "400"))
          place(top + left, dx: 1.5em, dy: 2.05em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(top + left, dx: 0em, dy: 4.05em, text(size: 8pt, "200"))
          place(top + left, dx: 1.5em, dy: 4.05em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(top + left, dx: 0em, dy: 5.5em, text(size: 8pt, "0"))
          place(top + left, dx: 1.5em, dy: 5.5em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(bottom + left, dx: 1.8em, dy: 0em, rect(width: 11.2em, height: 0.6pt, fill: black))
          place(bottom + left, dx: 1.8em, dy: 0em, box(width: 11.2em, align(center,
            stack(dir: ltr, spacing: 1.2em,
              rect(width: 1.6em, height: 5.4em, fill: color-level-b, radius: 1pt),
              rect(width: 1.6em, height: 5.6em, fill: color-level-b, radius: 1pt),
              rect(width: 1.6em, height: 5.8em, fill: color-level-b, radius: 1pt),
            )
          )))
        })
      ]
    ),
    align(center,
      stack(dir: ttb, spacing: 3pt)[
        #box(width: 13em, height: 6em, {
          place(top + left, dx: 1.8em, dy: 0em, rect(width: 0.6pt, height: 6em, fill: black))
          place(top + left, dx: 0em, dy: 0.05em, text(size: 8pt, "600"))
          place(top + left, dx: 1.5em, dy: 0.05em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(top + left, dx: 0em, dy: 3.05em, text(size: 8pt, "550"))
          place(top + left, dx: 1.5em, dy: 3.05em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(top + left, dx: 0em, dy: 5.5em, text(size: 8pt, "500"))
          place(top + left, dx: 1.5em, dy: 5.5em, rect(width: 0.3em, height: 0.6pt, fill: black))
          place(bottom + left, dx: 1.8em, dy: 0em, rect(width: 11.2em, height: 0.6pt, fill: black))
          place(bottom + left, dx: 1.8em, dy: 0em, box(width: 11.2em, align(center,
            stack(dir: ltr, spacing: 1.2em,
              rect(width: 1.6em, height: 2.4em, fill: color-level-c, radius: 1pt),
              rect(width: 1.6em, height: 3.6em, fill: color-level-c, radius: 1pt),
              rect(width: 1.6em, height: 4.8em, fill: color-level-c, radius: 1pt),
            )
          )))
        })
      ]
    ),
  ),
)

Nhìn biểu đồ bên phải, sản phẩm thứ ba dường như vượt trội "khó tin". Nhìn biểu đồ bên trái với trục đầy đủ, khác biệt thực ra rất nhỏ. Trước khi tin vào một biểu đồ, hãy kiểm tra trục tung bắt đầu từ đâu, đơn vị đo là gì, và phạm vi hiển thị có bị thu hẹp theo cách gây hiểu lầm hay không.

=== Những tuyên bố sức khỏe đáng ngờ

Một số kiểu tuyên bố lặp đi lặp lại trong quảng cáo thực phẩm chức năng và các liệu pháp chưa được kiểm chứng rộng rãi có thể gây hiểu nhầm. Nếu gặp phải những tin tức như vậy, bạn hãy nâng cao cảnh giác trước khi ra bất cứ quyết định nào có liên quan:

#bang-du-lieu(
  header: ("Tuyên bố", "Dấu hiệu nhận biết", "Ví dụ thường gặp"),
  body: (
    ("Chữa “bách bệnh”", "Một sản phẩm hứa hẹn trị được nhiều bệnh không liên quan nhau", "Tinh chất chữa ung thư, tiểu đường lẫn đau khớp"),
    ("Bí quyết “độc quyền”", "Công thức “bí truyền”, không công bố, không kiểm chứng", "Thực phẩm chức năng gia truyền"),
    ("Bằng chứng chỉ là lời kể", "Chỉ có chứng từ cá nhân, thiếu nghiên cứu đối chứng", "Người nổi tiếng khen ngợi, hàng nghìn “khách hàng hài lòng”"),
    ("Làm ra vẻ bí mật", "Khẳng định bị ngành y tế “che giấu sự thật”", "Luận điệu “các hãng dược không muốn bạn biết”"),
    ("Thuật ngữ “giả khoa học”", "Dùng từ nghe rất khoa học nhưng mơ hồ, không đo được", "“Năng lượng lượng tử”, “tần số chữa lành”"),
  )
)

=== Hệ thống mức bằng chứng trong cuốn sách này

Suốt cuốn sách, mỗi tuyên bố quan trọng sẽ được gắn một mức bằng chứng:

- *A — Đã kiểm chứng vững chắc:* Nhiều RCT chất lượng cao hoặc tổng quan hệ thống.
- *B — Bằng chứng khá tốt:* Có nghiên cứu ủng hộ nhưng chưa đạt đồng thuận hoàn toàn.
- *C — Giả thuyết đang nghiên cứu:* Dữ liệu ban đầu hứa hẹn nhưng chưa đủ kết luận.
- *D — Quan niệm truyền thống/dân gian:* Trình bày như hiện tượng văn hóa, không gán nhãn "Khoa học thực chứng".

#muc-bang-chung("D")[
  *"Tự nhiên là tốt, nhân tạo là xấu":* Một lầm tưởng phổ biến. Asen, botulinum toxin (chất độc mạnh nhất đã biết), và nhiều virus chết người đều hoàn toàn "tự nhiên". Insulin tổng hợp giúp cứu và duy trị sự sống hàng triệu người tiểu đường mỗi ngày. Câu hỏi đúng đắn không phải "Tự nhiên hay nhân tạo?" mà là "Bằng chứng về an toàn và hiệu quả của nó thế nào?"
]

#question-section()

1. Tìm một tiêu đề tin tức y tế gần đây trên một trang web tin tức và phân tích nó bằng 5 câu hỏi trong chương này.
2. Tại sao nguyên tắc "mù đôi" lại quan trọng? Điều gì có thể xảy ra nếu chỉ áp dụng "mù đơn"?
3. Một công ty thực phẩm chức năng quảng cáo "100% người dùng thử nghiệm cảm thấy khỏe hơn". Có ít nhất 3 điểm yếu về phương pháp luận trong tuyên bố này là gì?
4. Tại sao lời khuyên của bác sĩ 30 năm kinh nghiệm không nhất thiết đáng tin hơn một tổng quan hệ thống được thực hiện bài bản?
5. Giải thích vì sao câu nói "tôi uống thuốc X một tuần rồi hết bệnh" chưa phải là bằng chứng đủ — dựa trên ít nhất hai khái niệm trong chương (ví dụ hồi quy về trung bình, hiệu ứng giả dược, thiên kiến chọn mẫu).
6. Một biểu đồ quảng cáo khẳng định "sản phẩm của chúng tôi tốt hơn 300%" nhưng trục tung chỉ vẽ từ 500 đến 530. Bạn sẽ đánh giá tuyên bố này thế nào?
