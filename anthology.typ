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
#pagebreak()

This edition is intended to be bound with a spiral coil.
Poems are placed on the right-hand page.
Their descriptions on the preceding left-hand page.
This allows the description to be viewed alongside the poem.
Or, the book can be folded back onto iself to read just the poems themselves.

#pagebreak()
#include("poems/all-tempest/page.typ")

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
