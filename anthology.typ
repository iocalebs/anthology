#set page("us-letter")
#set document(title: [Untitled Anthology])
#show quote.where(block: true): set block(
  above: 1.8em,
  below: 1.8em,
  inset: (left: 0.2em),
)

#align(center)[
  #title()
  #text(1.1em)[by Caleb St-Denis]
]

#pagebreak()
#outline()

#pagebreak()
#{
  show heading: set align(center + horizon)
  show heading: set text(size: 1.5em)
  heading()[Poems]
}

#pagebreak()
#{
  show heading: none
  heading(level: 2)[_All tempest_]
}
#include("poems/all-tempest/page.typ")

#{
  show heading: none
  heading(level: 2)[_The Earthly Hope_]
}
#pagebreak()
#include("poems/the-earthly-hope/page.typ")

#pagebreak()
= Afterword

After having spent all this time writing about people's poems,
I was told I ought to try writing one of my own.

And so, this last poem is for Grammy.
Thank you for encouraging me to try.

#quote(block: true)[
  Goose on the path \
  The cyclist rings his bell \
  To no effect \
]
