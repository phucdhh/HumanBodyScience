#import "metadata.typ": *

#let question-section() = {
  v(2em)
  heading(level: 2, numbering: none)[Câu hỏi tự nghiên cứu và thảo luận]
}
#let cover-page(title: "", subtitle: "", authors: (), version: "", date: "") = {
  set page(
    paper: "iso-b5",
    margin: 0pt,
    numbering: none,
  )
  
  set text(font: "Linux Libertine", lang: "vi")
  
  // Background gradient
  place(top + left, 
    rect(
      width: 100%, 
      height: 100%,
      fill: gradient.linear(
        rgb("#1e3a8a"), // Xanh đậm
        rgb("#3b82f6"), // Xanh sáng
        angle: 45deg
      )
    )
  )
  
  // Content
  v(25%)
  
  align(center)[
    // Main title
    #text(
      size: 32pt, 
      weight: "bold", 
      fill: white,
      title
    )
    
    #v(1em)
    
    // Subtitle
    #text(
      size: 14pt,
      fill: rgb("#e0e7ff"),
      style: "italic",
      subtitle
    )
    
    #v(3em)
    
    // Decorative line
    #line(length: 60%, stroke: 2pt + white)
    
    #v(3em)
    
    // Authors
    #text(
      size: 16pt,
      fill: white,
      weight: "semibold",
      authors.join(", ")
    )
    
    #v(1fr)
    
    // Version and date at bottom
    #text(
      size: 11pt,
      fill: rgb("#e0e7ff"),
      [Phiên bản #version \ #date]
    )
    
    #v(2em)
  ]
  
  pagebreak()
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
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1em)
    text(size: 20pt, weight: "bold", it)
  }
  set heading(numbering: (..nums) => {
    let vals = nums.pos()
    if vals.len() == 1 {
      return "Chương " + str(vals.at(0) - 1) + ": "
    } else if vals.len() == 2 {
      return str(vals.at(1)) + ". "
    } else if vals.len() == 3 {
      return str(vals.at(1)) + "." + str(vals.at(2)) + ". "
    } else if vals.len() == 4 {
      return str(vals.at(1)) + "." + str(vals.at(2)) + "." + str(vals.at(3)) + ". "
    } else {
      return nums.pos().map(str).join(".") + ". "
    }
  })

  // Table of contents
  outline(depth: 3, indent: auto)
  pagebreak()

  // List of figures
  heading(numbering: none)[Danh sách hình ảnh]
  outline(
    title: none,
    target: figure.where(kind: image),
  )
  pagebreak()

  // Main body
  body
}
