#import "metadata.typ": *

#let question-section() = {
  v(2em)
  heading(level: 2, numbering: none)[Câu hỏi tự nghiên cứu và thảo luận]
}
#let project(title: "", authors: (), body) = {
  // Set document metadata
  set document(author: authors, title: title)
  
  // Set basic page properties
  set page(
    paper: "iso-b5",
    margin: (inside: 2.5cm, outside: 2cm, y: 2.5cm),
    numbering: "1",
    number-align: center,
  )

  // Text configuration
  set text(font: "Linux Libertine", size: 11pt, lang: "vi")
  set par(justify: true, leading: 0.65em)

  // Heading configurations
  show heading: set block(above: 1.4em, below: 1em)
  show heading.where(level: 1): set text(size: 20pt)
  set heading(numbering: (..nums) => {
    let vals = nums.pos()
    if vals.len() == 1 {
      return "Chương " + str(vals.at(0) - 1) + ": "
    } else if vals.len() == 2 {
      return "Bài " + str(vals.at(1)) + ": "
    } else if vals.len() == 3 {
      return str(vals.at(2)) + ". "
    } else if vals.len() == 4 {
      return str(vals.at(2)) + "." + str(vals.at(3)) + ". "
    } else {
      return nums.pos().map(str).join(".") + ". "
    }
  })

  // Title page
  align(center)[
    #block(text(weight: 700, 2.5em, title))
    #v(1em, weak: true)
    #block(text(1.2em, authors.join(", ")))
    #v(2em)
  ]

  // Table of contents
  outline(depth: 3, indent: auto)
  pagebreak()

  // Main body
  body
}
