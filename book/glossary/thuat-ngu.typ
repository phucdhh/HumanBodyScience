// Định nghĩa các thuật ngữ để sử dụng thống nhất
// Format: key: (Tiếng Việt, English, Giải thích ngắn)
#let thuat-ngu = (
  // === TẾ BÀO VÀ MÔ ===
  "te-bao": ("Tế bào", "Cell", "Đơn vị cơ bản của sự sống"),
  "mo": ("Mô", "Tissue", "Nhóm tế bào có cùng chức năng"),
  "adn": ("ADN", "DNA", "Vật chất di truyền lưu trữ thông tin"),
  "arn": ("ARN", "RNA", "Phân tử trung gian giữa ADN và protein"),
  "protein": ("Protein", "Protein", "Phân tử sinh học thực hiện chức năng tế bào"),
  "lipid": ("Lipid", "Lipid", "Chất béo, thành phần màng tế bào"),
  "carbohydrate": ("Carbohydrate", "Carbohydrate", "Đường và tinh bột, nguồn năng lượng"),
  "co-quan": ("Cơ quan", "Organ", "Cấu trúc gồm nhiều mô, thực hiện chức năng đặc biệt"),
  "he-co-quan": ("Hệ cơ quan", "Organ system", "Nhóm cơ quan làm việc cùng nhau"),
  "enzyme": ("Enzyme", "Enzyme", "Protein xúc tác phản ứng sinh hóa"),
  "atp": ("ATP", "Adenosine triphosphate", "Đồng tiền năng lượng của tế bào"),
  "phospholipid": ("Phospholipid", "Phospholipid", "Lipid có phosphate, thành phần chính màng tế bào"),
  
  // Bào quan
  "nhan-te-bao": ("Nhân tế bào", "Nucleus", "Bào quan chứa ADN"),
  "ti-the": ("Ti thể", "Mitochondria", "Nhà máy năng lượng tế bào"),
  "golgi": ("Bộ máy Golgi", "Golgi apparatus", "Bào quan đóng gói protein"),
  "lysosome": ("Lysosome", "Lysosome", "Túi enzyme tiêu hóa chất thải"),
  "lui-noi-chat": ("Lưới nội chất", "Endoplasmic reticulum", "Xưởng sản xuất protein và lipid"),
  "bo-xuong-te-bao": ("Bộ xương tế bào", "Cytoskeleton", "Mạng lưới protein giữ hình dạng tế bào"),
  "bao-quan": ("Bào quan", "Organelle", "Cấu trúc chuyên biệt trong tế bào"),
  
  // Phân bào và di truyền
  "chromatin": ("Chất nhiễm sắc", "Chromatin", "ADN và protein đóng gói trong nhân"),
  "histone": ("Histone", "Histone", "Protein quấn ADN thành cấu trúc compact"),
  "mitosis": ("Nguyên phân", "Mitosis", "Quá trình phân chia tế bào sinh ra 2 tế bào con giống nhau"),
  "meiosis": ("Giảm phân", "Meiosis", "Phân chia tạo giao tử với nửa số nhiễm sắc thể"),
  "apoptosis": ("Chết theo chương trình", "Apoptosis", "Cái chết tế bào có kiểm soát"),
  "nhiem-sac-the": ("Nhiễm sắc thể", "Chromosome", "Cấu trúc ADN đóng gói, mang gene"),
  "gene": ("Gene", "Gene", "Đoạn ADN mã hóa một protein"),
  "allele": ("Allele", "Allele", "Các biến thể khác nhau của cùng một gene"),
  "dot-bien": ("Đột biến", "Mutation", "Thay đổi trình tự ADN"),
  "telomere": ("Telomere", "Telomere", "Đầu mút nhiễm sắc thể, bảo vệ ADN"),
  
  // Loại mô
  "mo-bieu-bi": ("Mô biểu bì", "Epithelial tissue", "Mô phủ bề mặt cơ thể"),
  "mo-lien-ket": ("Mô liên kết", "Connective tissue", "Mô nối các cấu trúc"),
  "mo-co": ("Mô cơ", "Muscle tissue", "Mô có khả năng co"),
  "mo-than-kinh": ("Mô thần kinh", "Nervous tissue", "Mô dẫn truyền tín hiệu điện"),
  "bieu-bi-don-tang": ("Biểu bì đơn tầng", "Simple epithelium", "Mô biểu bì một lớp tế bào"),
  "bieu-bi-da-tang": ("Biểu bì đa tầng", "Stratified epithelium", "Mô biểu bì nhiều lớp tế bào"),
  "co-van": ("Cơ vân", "Skeletal muscle", "Cơ gắn vào xương, vận động theo ý muốn"),
  "co-tron": ("Cơ trơn", "Smooth muscle", "Cơ hoạt động tự động trong nội tạng"),
  "co-tim": ("Cơ tim", "Cardiac muscle", "Cơ chỉ ở tim, bền bỉ suốt đời"),
  "glia": ("Tế bào thần kinh đệm", "Glia", "Tế bào hỗ trợ và bảo vệ neuron"),
  
  // === HỆ XƯƠNG VÀ CƠ ===
  "collagen": ("Collagen", "Collagen", "Protein cấu trúc chính của xương và da"),
  "canxi": ("Canxi", "Calcium", "Khoáng chất quan trọng cho xương và co cơ"),
  "photpho": ("Phốt pho", "Phosphorus", "Khoáng chất kết hợp canxi tạo xương"),
  "osteoblast": ("Tạo cốt bào", "Osteoblast", "Tế bào tạo xương mới"),
  "osteoclast": ("Hủy cốt bào", "Osteoclast", "Tế bào phá hủy xương cũ"),
  "osteocalcin": ("Osteocalcin", "Osteocalcin", "Hormone từ xương, điều hòa canxi"),
  "actin": ("Actin", "Actin", "Protein sợi mảnh trong cơ"),
  "myosin": ("Myosin", "Myosin", "Protein sợi dày trong cơ, tạo lực co"),
  "gan-co": ("Gân", "Tendon", "Dây nối cơ với xương"),
  "day-chang": ("Dây chằng", "Ligament", "Dây nối xương với xương"),
  
  // === HỆ THẦN KINH ===
  "neuron": ("Nơ-ron", "Neuron", "Tế bào thần kinh, đơn vị dẫn truyền tín hiệu"),
  "synapse": ("Xi-náp", "Synapse", "Điểm tiếp xúc giữa hai nơ-ron"),
  "axon": ("Sợi trục", "Axon", "Phần dài của nơ-ron, truyền tín hiệu đi xa"),
  "dendrite": ("Nhánh", "Dendrite", "Phần nhận tín hiệu của nơ-ron"),
  "myelin": ("Myelin", "Myelin", "Bao bọc sợi trục, tăng tốc độ truyền tín hiệu"),
  "ion": ("Ion", "Ion", "Nguyên tử hoặc phân tử mang điện tích"),
  "he-than-kinh": ("Hệ thần kinh", "Nervous system", "Hệ thống điều khiển cơ thể"),
  "he-than-kinh-tu-chu": ("Hệ thần kinh tự chủ", "Autonomic nervous system", "Điều khiển chức năng vô thức"),
  
  // Chất dẫn truyền
  "glutamate": ("Glutamate", "Glutamate", "Chất dẫn truyền kích thích chính trong não"),
  "gaba": ("GABA", "Gamma-aminobutyric acid", "Chất dẫn truyền ức chế chính trong não"),
  "dopamine": ("Dopamine", "Dopamine", "Chất dẫn truyền liên quan phần thưởng và động lực"),
  "serotonin": ("Serotonin", "Serotonin", "Chất dẫn truyền điều hòa tâm trạng"),
  "acetylcholine": ("Acetylcholine", "Acetylcholine", "Chất dẫn truyền điều khiển cơ và trí nhớ"),
  
  // Cấu trúc não
  "vo-nao": ("Vỏ não", "Cerebral cortex", "Lớp ngoài của não, xử lý thông tin cao cấp"),
  "thuy-truoc-tran": ("Thùy trước trán", "Prefrontal cortex", "Vùng não điều khiển quyết định và lập kế hoạch"),
  "amygdala": ("Hạch hạnh nhân", "Amygdala", "Trung tâm cảm xúc, đặc biệt là sợ hãi"),
  "hippocampus": ("Hồi hải mã", "Hippocampus", "Trung tâm hình thành trí nhớ mới"),
  "tieu-nao": ("Tiểu não", "Cerebellum", "Điều phối vận động và thăng bằng"),
  
  // === HỆ NỘI TIẾT ===
  "hormone": ("Hormone", "Hormone", "Chất truyền tin hóa học trong máu"),
  "noi-tiet": ("Nội tiết", "Endocrine", "Hệ thống tuyến tiết hormone"),
  "giau-vi": ("Giấu vị", "Hypothalamus", "Vùng não điều khiển các tuyến nội tiết"),
  "tuyen-yen": ("Tuyến yên", "Pituitary gland", "Tuyến chủ, điều khiển các tuyến khác"),
  "tuyen-giap": ("Tuyến giáp", "Thyroid gland", "Tuyến điều hòa chuyển hóa"),
  "tuyen-thuong-than": ("Tuyến thượng thận", "Adrenal gland", "Tuyến tiết cortisol và adrenaline"),
  "tuy-tang": ("Tụy", "Pancreas", "Tuyến tiết insulin và glucagon"),
  "trh": ("TRH", "Thyrotropin-releasing hormone", "Hormone kích thích tuyến yên tiết TSH"),
  "tsh": ("TSH", "Thyroid-stimulating hormone", "Hormone kích thích tuyến giáp sản xuất hormone giáp"),
  "t3": ("T3", "Triiodothyronine", "Hormone giáp hoạt động mạnh, điều hòa chuyển hóa"),
  "t4": ("T4", "Thyroxine", "Hormone giáp chính, điều hòa chuyển hóa"),
  "insulin": ("Insulin", "Insulin", "Hormone hạ đường huyết"),
  "glucagon": ("Glucagon", "Glucagon", "Hormone tăng đường huyết"),
  "cortisol": ("Cortisol", "Cortisol", "Hormone stress, điều hòa chuyển hóa"),
  "adrenaline": ("Adrenaline", "Adrenaline/Epinephrine", "Hormone chiến hoặc chạy"),
  
  // === HỆ MIỄN DỊCH ===
  "mien-dich": ("Miễn dịch", "Immune system", "Hệ thống phòng vệ cơ thể"),
  "khang-the": ("Kháng thể", "Antibody", "Protein nhận diện và trung hòa mầm bệnh"),
  "khang-nguyen": ("Kháng nguyên", "Antigen", "Chất lạ kích hoạt miễn dịch"),
  "vaccine": ("Vắc-xin", "Vaccine", "Chế phẩm kích thích miễn dịch phòng bệnh"),
  "tu-mien": ("Tự miễn", "Autoimmune", "Miễn dịch tấn công tế bào của chính mình"),
  "bach-cau": ("Bạch cầu", "White blood cell", "Tế bào miễn dịch trong máu"),
  "te-bao-t": ("Tế bào T", "T cell", "Bạch cầu tiêu diệt tế bào bị nhiễm"),
  "te-bao-b": ("Tế bào B", "B cell", "Bạch cầu sản xuất kháng thể"),
  "histamine": ("Histamine", "Histamine", "Chất gây viêm và dị ứng"),
  "cytokine": ("Cytokine", "Cytokine", "Protein truyền tin giữa tế bào miễn dịch"),
  
  // === HỆ TIM MẠCH VÀ HÔ HẤP ===
  "tim-mach": ("Tim mạch", "Cardiovascular", "Hệ thống tuần hoàn máu"),
  "ho-hap": ("Hô hấp", "Respiratory", "Hệ thống trao đổi khí"),
  "dong-mach": ("Động mạch", "Artery", "Mạch máu đưa máu đi xa tim"),
  "tinh-mach": ("Tĩnh mạch", "Vein", "Mạch máu đưa máu về tim"),
  "mao-mach": ("Mao mạch", "Capillary", "Mạch máu nhỏ nhất, trao đổi chất"),
  "hong-cau": ("Hồng cầu", "Red blood cell", "Tế bào vận chuyển oxy"),
  "hemoglobin": ("Hemoglobin", "Hemoglobin", "Protein trong hồng cầu, gắn oxy"),
  "huyet-ap": ("Huyết áp", "Blood pressure", "Áp lực máu lên thành mạch"),
  "mmhg": ("mmHg", "Millimeters of mercury", "Đơn vị đo huyết áp"),
  "phe-quan": ("Phế quản", "Bronchus", "Ống khí lớn trong phổi"),
  "phe-nang": ("Phế nang", "Alveolus", "Túi khí nhỏ nơi trao đổi khí"),
  
  // === HỆ TIÊU HÓA ===
  "tieu-hoa": ("Tiêu hóa", "Digestive", "Hệ thống phân giải thức ăn"),
  "da-day": ("Dạ dày", "Stomach", "Cơ quan tiết axit và enzyme tiêu protein"),
  "ruot-non": ("Ruột non", "Small intestine", "Nơi hấp thu chất dinh dưỡng chính"),
  "ruot-gia": ("Ruột già", "Large intestine", "Nơi hấp thu nước và hình thành phân"),
  "gan": ("Gan", "Liver", "Cơ quan lớn nhất, chuyển hóa và giải độc"),
  "mat": ("Mật", "Bile", "Dịch từ gan, giúp tiêu hóa chất béo"),
  "ph": ("pH", "pH scale", "Thang đo độ axit/kiềm (0-14)"),
  "vi-sinh": ("Hệ vi sinh vật", "Microbiome", "Cộng đồng vi khuẩn sống trong cơ thể"),
  
  // === CHUYỂN HÓA ===
  "chuyen-hoa": ("Chuyển hóa", "Metabolism", "Tổng hợp các phản ứng hóa học trong cơ thể"),
  "bmr": ("BMR", "Basal metabolic rate", "Năng lượng cơ thể tiêu hao khi nghỉ ngơi"),
  "glucose": ("Glucose", "Glucose", "Đường đơn, nguồn năng lượng chính"),
  "glycogen": ("Glycogen", "Glycogen", "Dạng dự trữ glucose trong gan và cơ"),
  
  // === DI TRUYỀN VÀ PHÁT TRIỂN ===
  "di-truyen": ("Di truyền", "Genetics", "Khoa học về gene và tính di truyền"),
  "genome": ("Genome", "Genome", "Toàn bộ ADN của một sinh vật"),
  "oncogene": ("Oncogene", "Oncogene", "Gene đột biến gây ung thư"),
  "tumor-suppressor": ("Gene ức chế khối u", "Tumor suppressor gene", "Gene ngăn chặn ung thư"),
  "crispr": ("CRISPR", "CRISPR-Cas9", "Công nghệ chỉnh sửa gene"),
  "phoi": ("Phôi", "Embryo", "Giai đoạn đầu phát triển sinh vật"),
  
  // === NHẬN THỨC VÀ TÂM LÝ ===
  "nhan-thuc": ("Nhận thức", "Cognition", "Quá trình xử lý thông tin trong não"),
  "y-thuc": ("Ý thức", "Consciousness", "Trải nghiệm chủ quan về thế giới"),
  "tri-nho": ("Trí nhớ", "Memory", "Khả năng lưu trữ và gợi nhớ thông tin"),
  "cam-xuc": ("Cảm xúc", "Emotion", "Trạng thái tâm lý phản ứng với sự kiện"),
  
  // === GIẤC NGỦ VÀ LÃO HÓA ===
  "giac-ngu": ("Giấc ngủ", "Sleep", "Trạng thái nghỉ ngơi chu kỳ của cơ thể"),
  "rem": ("REM", "Rapid eye movement", "Giai đoạn ngủ mơ, mắt chuyển động nhanh"),
  "nrem": ("NREM", "Non-rapid eye movement", "Giai đoạn ngủ sâu, không mơ"),
  "melatonin": ("Melatonin", "Melatonin", "Hormone điều hòa giấc ngủ"),
  "circadian": ("Chu kỳ circadian", "Circadian rhythm", "Đồng hồ sinh học 24 giờ"),
  "lao-hoa": ("Lão hóa", "Aging", "Quá trình suy giảm chức năng theo thời gian"),
  "beta-amyloid": ("Beta-amyloid", "Beta-amyloid", "Protein tích tụ trong não Alzheimer"),
  
  // === CÂN BẰNG NỘI MÔI ===
  "homeostasis": ("Cân bằng nội môi", "Homeostasis", "Duy trì môi trường bên trong ổn định"),
  "feedback-am": ("Vòng phản hồi âm", "Negative feedback", "Cơ chế tự điều chỉnh về trạng thái ban đầu"),
  "feedback-duong": ("Vòng phản hồi dương", "Positive feedback", "Cơ chế khuếch đại thay đổi"),
  
  // === PHƯƠNG PHÁP KHOA HỌC ===
  "rct": ("RCT", "Randomized Controlled Trial", "Thử nghiệm đối chứng ngẫu nhiên - tiêu chuẩn vàng"),
  "gia-duoc": ("Giả dược", "Placebo", "Thuốc giả không hoạt tính"),
  "mu-doi": ("Mù đôi", "Double-blind", "Cả bệnh nhân và bác sĩ không biết ai nhận thuốc thật"),
  "p-value": ("P-value", "P-value", "Xác suất kết quả xảy ra do ngẫu nhiên"),
  "binh-duyet": ("Bình duyệt đồng nghiệp", "Peer review", "Đánh giá nghiên cứu bởi chuyên gia"),
  "falsifiable": ("Khả phủ chứng", "Falsifiability", "Có thể chứng minh là sai - tiêu chí của khoa học"),
  
  // === SỨC KHỎE VÀ BỆNH TẬT ===
  "benh-tat": ("Bệnh tật", "Disease", "Rối loạn cấu trúc hoặc chức năng cơ thể"),
  "suc-khoe": ("Sức khỏe", "Health", "Trạng thái khỏe mạnh hoàn toàn về thể chất, tinh thần và xã hội"),
  "bmi": ("BMI", "Body Mass Index", "Chỉ số khối cơ thể"),
  
  // === Y HỌC TRUYỀN THỐNG ===
  "kinh-mach": ("Kinh mạch", "Meridian", "Đường dẫn khí trong y học cổ truyền"),
  "khi": ("Khí", "Qi/Chi", "Năng lượng sống trong triết học phương Đông"),
  "khi-huyet": ("Khí huyết", "Qi and Blood", "Hai chất sống cơ bản trong Đông y"),
  "huyet": ("Huyệt", "Acupoint", "Điểm châm cứu trên kinh mạch"),
  "khi-cong": ("Khí công", "Qigong", "Bài tập rèn luyện khí"),
  "am-duong": ("Âm-Dương", "Yin-Yang", "Hai mặt đối lập và bổ sung nhau"),
  "ngu-hanh": ("Ngũ hành", "Five Elements", "Kim - Mộc - Thủy - Hỏa - Thổ"),
  "dong-y": ("Đông y", "Traditional Chinese Medicine", "Y học cổ truyền Trung Quốc"),
  "cham-cuu": ("Châm cứu", "Acupuncture", "Phương pháp chữa bệnh bằng kim châm vào huyệt"),
)

// Hàm hiển thị thuật ngữ (chỉ hiển thị tên tiếng Việt)
#let term(key) = {
  if key in thuat-ngu {
    thuat-ngu.at(key).at(0)
  } else {
    "[" + key + "]"
  }
}

// Hàm hiển thị thuật ngữ với tiếng Anh
#let term-en(key) = {
  if key in thuat-ngu {
    let entry = thuat-ngu.at(key)
    entry.at(0) + " (" + entry.at(1) + ")"
  } else {
    "[" + key + "]"
  }
}

