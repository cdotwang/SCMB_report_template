#set page(
  paper: "a4",
  margin: (x: 3cm, y: 2cm),
  numbering: "1",
)                                                    // set the page size, margin and numbering
#set text(size: 11pt, font: "New Computer Modern")   // set the text size and font

#set heading(numbering: "1.1. ")                     // set the heading numbering
#show heading: set block(above: 2em, below: 1em)     // set the space above and below the heading

#set par(justify: true)                              // set the paragraph justification
#show par: set block(above: 1.5em, below: 1em)       // set the space above and below the paragraph

#set list(indent: 1.5em)                             // set the list indentation
#show figure.caption: set text(size: 0.85em)         // set the text size in caption, make it smaller
#set figure(gap: 1.5em)                              // set the gap between the figure and the caption
#set math.equation(numbering: "(1)")                 // set the equation numbering

#align(center, text(24pt)[Progress Report])
#align(center, text(24pt)[SCMB-Group Debye Institute])
#align(center, text(14pt)[Your name])
#align(center, text(14pt)[#datetime.today().display("[month repr:long] [day padding:none], [year]")])\

= Starting date, ending date
Starting date: I don't know \
End date: #datetime.today().display() 

= Progress since last update
If you want to make a fancy subheading.
== #box(fill: yellow, radius: 0.3em, outset: 0.4em)[Fancy subheading]
#lorem(5)
- #lorem(5)
  - #lorem(5)

This is an inline equation $x = y$. And this is a block equation: $ x = y $
Starting and ending the equation with at least one space lifts it into a block equation.
$ x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a) $
If you want to use LaTeX equation,

#import "@preview/mitex:0.2.2": *
#mitex(`
  x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
`)

This is @figure_label.
#figure(
  rect(fill: aqua, stroke: 0.1em, width: 16em, height: 9em)[#align(horizon)[An image]], // normally this would be a path to an image file 
  // image("path/to/image.png")
  caption: [This is an image.],
)<figure_label>
And this is @table_label.
#figure(
  table(
    columns: 3,
    align: center,
    [1], [2], [3], 
    [A], [B], [C],
  ),
  caption: [This is a table.],
)<table_label>  // for more: https://typst.app/docs/reference/model/table/

= Immediate plans
#lorem(5)

= Literature
#lorem(5)
// #cite(<paper>) or use @

= PhD progress
== Education, Conferences and Workshops
#lorem(5)

*Completed*

- #lorem(5) 

*Planned*

- #lorem(5)

== Teaching Duties
#lorem(5).

= Group Contributions
#lorem(5).

= Submitted/Published articles
#lorem(5).

= Prizes/Awards/Scholarships
#lorem(5).

= Data Management
#lorem(5).

// #bibliography("your.bib", style: "american-physics-society")