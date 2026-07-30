#!/usr/bin/env python3
"""
Tải ảnh minh họa vector (SVG) từ Wikimedia Commons cho sách Khoa học về cơ thể người.
Dành cho các chương: 0-14 (15 chương).
"""

import os
import requests
import json
from pathlib import Path

# =========================================================================
# CẤU HÌNH CHO TỪNG CHƯƠNG: từ khóa tìm kiếm, tên file đầu ra, ghi chú
# =========================================================================
CHAPTER_IMAGES = [
    # Chương 0: Nhập môn
    {
        "chapter": 0,
        "title": "Nhập môn",
        "search_keywords": [
            "evidence pyramid medicine",
            "scientific method diagram",
            "vitruvian man da vinci"
        ],
        "preferred_files": ["File:Vitruvian-man-1492-da-vinci.jpg"]
    },
    
    # Chương 1: Cơ thể người là gì?
    {
        "chapter": 1,
        "title": "Cơ thể người là gì?",
        "search_keywords": [
            "human body systems diagram",
            "homeostasis feedback loop",
            "microbiome gut brain axis"
        ],
        "preferred_files": [
            "File:Human_body_diagram.svg",
            "File:Homeostasis_negative_feedback.svg"
        ]
    },
    
    # Chương 2: Tế bào và mô
    {
        "chapter": 2,
        "title": "Tế bào và mô",
        "search_keywords": [
            "animal cell diagram",
            "cell membrane fluid mosaic",
            "mitosis stages",
            "four basic tissues"
        ],
        "preferred_files": [
            "File:Diagram_human_cell_nucleus_id.svg",
            "File:Fluid_mosaic_model.svg"
        ]
    },
    
    # Chương 3: Hệ xương và cơ
    {
        "chapter": 3,
        "title": "Hệ xương và cơ",
        "search_keywords": [
            "human skeleton anterior view",
            "bone structure osteon",
            "muscle sliding filament",
            "bone remodeling osteoblast osteoclast"
        ],
        "preferred_files": [
            "File:Human_skeleton_front_en.svg",
            "File:Sliding_filament_theory.svg"
        ]
    },
    
    # Chương 4: Hệ thần kinh và não bộ
    {
        "chapter": 4,
        "title": "Hệ thần kinh và não bộ",
        "search_keywords": [
            "neuron diagram labeled",
            "brain lobes diagram",
            "synapse structure",
            "action potential graph"
        ],
        "preferred_files": [
            "File:Complete_neuron_cell_diagram_en.svg",
            "File:Lobes_of_the_brain_en.svg",
            "File:Synapse.svg"
        ]
    },
    
    # Chương 5: Hệ nội tiết
    {
        "chapter": 5,
        "title": "Hệ nội tiết",
        "search_keywords": [
            "endocrine system glands",
            "thyroid gland anatomy",
            "pancreas insulin glucagon",
            "adrenal gland anatomy"
        ],
        "preferred_files": [
            "File:Endocrine_system_diagram.svg"
        ]
    },
    
    # Chương 6: Hệ miễn dịch
    {
        "chapter": 6,
        "title": "Hệ miễn dịch",
        "search_keywords": [
            "immune system cells diagram",
            "antibody structure",
            "vaccination mechanism",
            "white blood cells types"
        ],
        "preferred_files": [
            "File:Antibody_structure.svg",
            "File:B_cell_T_cell.svg"
        ]
    },
    
    # Chương 7: Tim mạch và hô hấp
    {
        "chapter": 7,
        "title": "Tim mạch và hô hấp",
        "search_keywords": [
            "heart anatomy labeled",
            "circulatory system diagram",
            "respiratory system anatomy",
            "alveoli gas exchange"
        ],
        "preferred_files": [
            "File:Heart_numlabels.svg",
            "File:Surface_anatomy_of_the_heart.svg",
            "File:Respiratory_system_diagram.svg"
        ]
    },
    
    # Chương 8: Tiêu hóa, chuyển hóa, vi sinh vật
    {
        "chapter": 8,
        "title": "Tiêu hóa, chuyển hóa & vi sinh vật",
        "search_keywords": [
            "digestive system diagram",
            "liver anatomy",
            "small intestine villi",
            "gut microbiome"
        ],
        "preferred_files": [
            "File:Digestive_system_diagram_en.svg",
            "File:Liver_anatomy.svg"
        ]
    },
    
    # Chương 9: Di truyền và phát triển
    {
        "chapter": 9,
        "title": "Di truyền và phát triển",
        "search_keywords": [
            "DNA double helix structure",
            "chromosome diagram",
            "human embryo development",
            "mitosis meiosis comparison"
        ],
        "preferred_files": [
            "File:DNA_simple2.svg",
            "File:Human_chromosomes.svg"
        ]
    },
    
    # Chương 10: Nhận thức, tư duy, cảm xúc
    {
        "chapter": 10,
        "title": "Nhận thức, tư duy & cảm xúc",
        "search_keywords": [
            "brain prefrontal cortex",
            "limbic system diagram",
            "memory consolidation",
            "two systems thinking fast slow"
        ],
        "preferred_files": [
            "File:Brain_prefrontal_cortex.svg",
            "File:Limbic_system_diagram.svg"
        ]
    },
    
    # Chương 11: Giấc ngủ và lão hóa
    {
        "chapter": 11,
        "title": "Giấc ngủ và lão hóa",
        "search_keywords": [
            "sleep cycle stages NREM REM",
            "telomere shortening",
            "aging hallmarks",
            "circadian rhythm"
        ],
        "preferred_files": [
            "File:Sleep_cycle.svg",
            "File:Telomere_structure.svg"
        ]
    },
    
    # Chương 12: Cơ thể người và thần học
    {
        "chapter": 12,
        "title": "Cơ thể người và thần học",
        "search_keywords": [
            "mind body problem diagram",
            "near death experience brain",
            "consciousness neuroscience"
        ],
        "preferred_files": []
    },
    
    # Chương 13: Y học hiện đại và truyền thống
    {
        "chapter": 13,
        "title": "Y học hiện đại & truyền thống",
        "search_keywords": [
            "acupuncture points diagram",
            "traditional chinese medicine",
            "herbal medicine plants"
        ],
        "preferred_files": [
            "File:Acupuncture_points_chart.svg"
        ]
    },
    
    # Chương 14: Sức khỏe, bệnh tật, phòng ngừa
    {
        "chapter": 14,
        "title": "Sức khỏe, bệnh tật, phòng ngừa",
        "search_keywords": [
            "health prevention pyramid",
            "determinants of health model",
            "lifestyle medicine"
        ],
        "preferred_files": [
            "File:Health_determinants_model.svg"
        ]
    },
    
    # Bìa sách
    {
        "chapter": "cover",
        "title": "Bìa sách",
        "search_keywords": [
            "vitruvian man da vinci anatomy",
            "human anatomy vintage illustration"
        ],
        "preferred_files": [
            "File:Vitruvian-man-1492-da-vinci.jpg"
        ]
    },
]

# =========================================================================
# HÀM TIỆN ÍCH
# =========================================================================

API_URL = "https://commons.wikimedia.org/w/api.php"
HEADERS = {"User-Agent": "HumanBodyScienceBook/1.0 (https://github.com/phucdhh/HumanBodyScience)"}

def get_image_url(filename: str) -> str | None:
    """Lấy URL tải xuống trực tiếp từ Wikimedia Commons."""
    params = {
        "action": "query",
        "format": "json",
        "titles": f"File:{filename}",
        "prop": "imageinfo",
        "iiprop": "url",
        "iiurlwidth": 2000,  # yêu cầu kích thước đủ lớn để in
    }
    try:
        resp = requests.get(API_URL, params=params, headers=HEADERS, timeout=15)
        data = resp.json()
        pages = data.get("query", {}).get("pages", {})
        for page in pages.values():
            if "imageinfo" in page:
                return page["imageinfo"][0]["url"]
    except Exception as e:
        print(f"  ⚠️  Lỗi API cho {filename}: {e}")
    return None


def search_files(keyword: str, limit: int = 10) -> list[str]:
    """Tìm file trên Wikimedia Commons theo từ khóa, ưu tiên SVG."""
    params = {
        "action": "query",
        "format": "json",
        "list": "search",
        "srsearch": f"{keyword} filetype:svg",
        "srnamespace": 6,
        "srlimit": limit,
    }
    try:
        resp = requests.get(API_URL, params=params, headers=HEADERS, timeout=15)
        data = resp.json()
        return [r["title"].replace("File:", "") for r in data.get("query", {}).get("search", [])]
    except Exception as e:
        print(f"  ⚠️  Lỗi tìm kiếm '{keyword}': {e}")
        return []


def download_file(url: str, dest_path: Path) -> bool:
    """Tải file từ URL."""
    try:
        resp = requests.get(url, headers=HEADERS, timeout=30)
        resp.raise_for_status()
        dest_path.parent.mkdir(parents=True, exist_ok=True)
        dest_path.write_bytes(resp.content)
        return True
    except Exception as e:
        print(f"  ❌ Lỗi tải {url}: {e}")
        return False


# =========================================================================
# CHƯƠNG TRÌNH CHÍNH
# =========================================================================

def main():
    # Thư mục đầu ra
    base_dir = Path(__file__).parent
    img_dir = base_dir / "assets" / "images"
    img_dir.mkdir(parents=True, exist_ok=True)
    
    print(f"📁 Thư mục lưu ảnh: {img_dir}")
    print("=" * 60)
    
    total_downloaded = 0
    
    for ch in CHAPTER_IMAGES:
        ch_num = ch["chapter"]
        ch_title = ch["title"]
        print(f"\n📖 Chương {ch_num}: {ch_title}")
        
        # Thử tải các file ưu tiên trước
        for fname in ch.get("preferred_files", []):
            filename = fname.replace("File:", "")
            local_name = f"ch{ch_num:02d}_{filename}"
            local_path = img_dir / local_name
            
            if local_path.exists():
                print(f"  ⏭️  Đã có: {local_name}")
                total_downloaded += 1
                continue
            
            print(f"  🔎 Đang lấy: {filename}")
            url = get_image_url(filename)
            if url and download_file(url, local_path):
                print(f"  ✅ {local_name} ({local_path.stat().st_size/1024:.0f} KB)")
                total_downloaded += 1
            else:
                print(f"  ❌ Thất bại: {filename}")
        
        # Nếu chưa đủ, tìm kiếm thêm theo từ khóa
        for keyword in ch["search_keywords"]:
            print(f"  🔍 Tìm kiếm: {keyword}")
            files = search_files(keyword, limit=5)
            for filename in files:
                local_name = f"ch{ch_num:02d}_{filename}"
                local_path = img_dir / local_name
                
                if local_path.exists():
                    continue
                
                url = get_image_url(filename)
                if url and download_file(url, local_path):
                    print(f"  ✅ {local_name} ({local_path.stat().st_size/1024:.0f} KB)")
                    total_downloaded += 1
    
    print(f"\n{'='*60}")
    print(f"🎉 Hoàn tất! Đã tải {total_downloaded} ảnh vào {img_dir}")
    print("💡 Chạy lại script bất cứ lúc nào để tải thêm ảnh còn thiếu.")


if __name__ == "__main__":
    main()