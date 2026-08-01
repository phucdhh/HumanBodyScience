#import "config/template.typ": *
#import "config/metadata.typ": *
#import "config/theme.typ": muc-bang-chung
#import "glossary/thuat-ngu.typ": term

// Cover page
#import "config/build_metadata.typ": build-timestamp, build-date
#cover-page(
  title: book-title,
  subtitle: "Khám phá cơ thể người qua lăng kính khoa học",
  authors: (book-author,),
  version: build-timestamp,
  date: build-date,
)

#show: project.with(
  title: book-title,
  authors: (book-author,),
)

// Các chương
#include "chapters/loi-noi-dau.typ"
#include "chapters/00-nhap-mon.typ"
#include "chapters/01-co-the-nguoi-la-gi.typ"
#include "chapters/02-te-bao-va-mo.typ"
#include "chapters/03-he-xuong-va-co.typ"
#include "chapters/04-he-than-kinh-va-nao-bo.typ"
#include "chapters/05-he-noi-tiet.typ"
#include "chapters/06-he-mien-dich.typ"
#include "chapters/07-tim-mach-va-ho-hap.typ"
#include "chapters/08-tieu-hoa-chuyen-hoa-vi-sinh.typ"
#include "chapters/09-di-truyen-va-phat-trien.typ"
#include "chapters/10-nhan-thuc-tu-duy-cam-xuc.typ"
#include "chapters/11-giac-ngu-va-lao-hoa.typ"
#include "chapters/12-co-the-nguoi-va-than-hoc.typ"
#include "chapters/13-y-hoc-hien-dai-truyen-thong.typ"
#include "chapters/14-suc-khoe-benh-tat-phong-ngua.typ"

// Phụ lục
#pagebreak()
#include "chapters/99-muc-luc-thuat-ngu.typ"
#include "chapters/15-he-thong-kinh-mach.typ"
#include "chapters/16-khi-cong.typ"

// Tài liệu tham khảo
#bibliography("bibliography/references.bib", style: "apa", title: "Tài liệu tham khảo")
