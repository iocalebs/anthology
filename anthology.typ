#set page("us-letter")
#set document(title: [Untitled Anthology])
#show quote.where(block: true): set block(
  above: 1.8em,
  below: 1.8em,
  inset: (left: 0.2em),
)
#let poem(slug, title) = {
  show heading: none
  heading(level: 2, title)
  include("poems/" + slug + "/page.typ")
  pagebreak()
}

#align(center)[
  #title()
  #text(1.1em)[by Caleb St-Denis]
]
#pagebreak()
#set page(numbering: none)
#pagebreak()
#set page(numbering: "1", number-align: right)

#set page(numbering: "1", number-align: right)
#outline()
#pagebreak()
#set page(numbering: none)
#pagebreak()
#set page(numbering: "1", number-align: right)

= Introduction
Each poem in this anthology is accompanied by
 a short description of its origins
 and the key events that led to my discovery of their existence.

This edition is arranged such that in a duplex printing,
 the poems themselves are placed on the right-hand page,
 and their descriptions on the preceding left-hand page.
This allows the descriptions to be viewed alongside the poems,
 or safely ignored by reading the right-hand pages only.

#pagebreak()
#set page(numbering: none)
#pagebreak()

#{
  show heading: set align(center + horizon)
  show heading: set text(size: 1.5em)
  heading()[Poems]
}
#pagebreak()
#set page(numbering: "1", number-align: right)

#poem("all-tempest")[_All tempest_]
#poem("who-has-seen-the-wind")[_Who has seen the wind?_]
#poem("keep-going")[_Keep Going_]
#poem("the-earthly-hope")[_The Earthly Hope men set their hearts upon_]

#set page(numbering: none)
#pagebreak()
#set page(numbering: "1", number-align: right)

= Afterword

After having spent all this time writing about other people's poems,
I was told I ought to try writing one of my own.

And so, this last poem is for Grammy.
Thank you for encouraging me to try.

#quote(block: true)[
  Geese on the path \
  The cyclist rings his bell \
  To no effect \
]
