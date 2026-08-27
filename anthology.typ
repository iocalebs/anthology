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
#let poem(dir, toc) = {
  include("poems/" + dir + "/desc.typ")
  pagebreak(to: "odd")
  show heading: none
  heading(level: 2, toc)
  include("poems/" + dir + "/entry.typ")
  pagebreak()
}
#let score(dir, toc) = {
  show heading: none
  heading(level: 2, toc)
  include("music/" + dir + "/entry.typ")
  pagebreak()
}
#let score_desc(dir, head) = {
  set heading(outlined: false)
  heading(level: 2, head)
  include("music/" + dir + "/desc.typ")
}

#set page(numbering: "i")

#{
  set page(numbering: none)
  set align(center)
  title()
  text(1.1em)[Caleb St-Denis]
  pagebreak()
}

#blank()

#heading(outlined: false)[Preface]

This anthology contains poems and musical compositions,
 along with descriptions of their origins.

In the Poems section,
 each poem appears on a right-hand page (_le recto_),
 and its background information on the page opposite (_le verso_).
This allows the reader to view the poems alongside the background information
 or, if they prefer, to skip the introductions and focus on the poetry—by
 folding the book back on itself, for example.

In the Music section,
 the background information for each composition
 is placed at the end of the section—after all the sheet music—so that
 the music pages can be sight-read without distraction, even when the book
 is held open.

#pagebreak()
#blank()

#outline()
#pagebreak()

#blank()

#set page(numbering: "1")
#counter(page).update(1)

#section("Poems")
#poem("the-earthly-hope")[_The Earthly Hope men set their hearts upon_]
#poem("who-has-seen-the-wind")[_Who has seen the wind?_]
#poem("keep-going")[_Keep Going_]
#poem("all-tempest")[_All tempest_]
#poem("getting-old")[_You Tell Me I'm Getting Old_]
#blank()
#blank()
#poem("geese-on-the-path")[_Geese on the path_]

#blank()

#section("Music")
#score("les-anges-dans-nos-campagnes")[_Les anges dans nos campagnes_]
#score("never-grow-old")[_Where We'll Never Grow Old_]
//#score("cant-help-falling-in-love")[_Can't Help Falling in Love_]
#score("ballad-of-the-wind-fish")[_The Ballad of the Wind Fish_]
#score("nayotake")[_Supple Bamboo_ (なよたけ)]

#blank()
#pagebreak(to: "odd", weak: true)

#score_desc("les-anges-dans-nos-campagnes")[_Les anges dans nos campagnes_]
#score_desc("never-grow-old")[_(Where We'll) Never Grow Old_]
//#score_desc("cant-help-falling-in-love")[_Can't Help Falling in Love_]
#score_desc("ballad-of-the-wind-fish")[_The Ballad of the Wind Fish_]
#score_desc("nayotake")[なよたけ]
