#set page("us-letter", number-align: right)
#set document(title: [Untitled Anthology])
#show quote.where(block: true): set block(
  above: 1.8em,
  below: 1.8em,
  inset: (left: 0.2em),
)
#let blank() = {
  set page(numbering: none)
  pagebreak()
}
#let section(title) = {
  set page(numbering: none)
  show heading: set align(center + horizon)
  show heading: set text(size: 1.5em)
  heading(title)
  pagebreak()
}
#let poem(slug, title) = {
  show heading: none
  heading(level: 2, title)
  include("poems/" + slug + "/page.typ")
  pagebreak(to: "even")
}
#let song(slug, title) = {
  show heading: none
  heading(level: 2, title)
  include("music/" + slug + "/page.typ")
  pagebreak(to: "even")
}

#set page(numbering: "i")

#{
  set page(numbering: none)
  set align(center)
  title()
  text(1.1em)[by Caleb St-Denis]
  pagebreak()
}

#blank()

#heading(outlined: false)[Preface]

This anthology contains poems and musical scores,
 along with brief descriptions of where they came from
 and how I learned of them.

In the Poems section,
 each poem appears on a right-hand page (_le recto_),
 and its background information on the preceding left-hand page (_le verso_).
If the binding allows,
 you can fold the book back on itself
 to read the poems on their own.

In the Music section,
 the background information for each musical score
 is placed at the end of the section,
 so that the music can be read without distraction
 when the book is held open.

#pagebreak()
#blank()

#outline()
#pagebreak()

#blank()

#set page(numbering: "1")
#counter(page).update(1)

#section("Poems")
#poem("all-tempest")[_All tempest_]
#poem("growing-old")[_You tell me I'm growing old_]
#poem("keep-going")[_Keep Going_]
#poem("who-has-seen-the-wind")[_Who has seen the wind?_]
#poem("the-earthly-hope")[_The Earthly Hope men set their hearts upon_]
#blank()
#blank()
#poem("geese-on-the-path")[_Geese on the path_]

#blank()

#section("Music")
#song("nayotake")[_Supple Bamboo_ (なよたけ)]

#set page(numbering: none)
