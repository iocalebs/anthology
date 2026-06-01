#set page("us-letter")
#set document(title: [Untitled Anthology])
#show title: set align(center)
#show quote.where(block: true): set block(
  above: 1.8em,
  below: 1.8em,
  inset: (left: 0.2em),
)

#title()

#pagebreak()
#include("poems/a-passing-cyclist/page.typ")

#pagebreak()
#include("poems/all-tempest/page.typ")

#include("poems/the-earthly-hope/context.typ")
#pagebreak()
#read("poems/the-earthly-hope/poem.txt")
#parbreak() // cannot render RTL and LTR in same paragraph
#text(lang: "fa")[
  #read("poems/the-earthly-hope/poem-farsi.txt")
]
