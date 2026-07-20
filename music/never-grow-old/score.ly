\version "2.26.0"

\header {
  title    = "Where We'll Never Grow Old"
  composer = "James Cleveland Moore"
  tagline  = ##f
}

\layout {
  indent = 0.0
  \context {
    \Voice
    autoBeaming = ##f
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  I have heard of a land
  on the far a -- way strand,
  'Tis a beau -- ti -- ful home of the soul;
  Built by Je -- sus on high,
  there we nev -- er shall die,
  'Tis a land where we nev -- er grow old.
}

refrain = \lyricmode {
  Nev -- er grow old,
  nev -- er grow old,
  In a land where we'll nev -- er grow old;
  Nev -- er grow old,
  nev -- er grow old,
  In a land where we'll nev -- er grow old.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  In that beau -- ti -- ful home
  where we'll nev -- er -- more roam,
  We shall be in the sweet by and by;
  Hap -- py praise to the King,
  thro' e -- ter -- ni -- ty sing,
  'Tis a land where we nev -- er shall die.
}

verseThree = \lyricmode {
  \set stanza = "3."
  When our work here is done
  and the life -- crown is won,
  And our trou -- bles and tri -- als are o'er,
  All our sor -- row will end,
  and our voic -- es will blend,
  With the love ones who've gone on be -- fore.
}

<<
  \time 6/4
  \partial 4
  \new Staff = "upper" {
    \clef treble
    \key ees \major
    \new Voice = "melody" \relative c' {
      <<
        {
          \voiceOne
          ees8 f8 | <ees g>4. fis8
        }
        \new Voice {
          \voiceTwo
          ees8 ees8 | s4. ees8
        }
      >>
      \oneVoice
      \stemUp
      <ees g>4 <bes ees>2
      <ees g>8 <fis aes>8 | <g bes>4. <fis a>8 <g bes>4 <ees g>2
      <g bes>8 <g bes>8 | <aes c>4 <aes ees'>4 <aes c>4 <g bes>8 <ees g>4.
      <<
        {
          \voiceOne
          ees4
        }
        \new Voice {
          \voiceTwo
          ees4
        }
      >>
      \oneVoice
      <d f>2.~ <d f>2
      <<
        {
          \voiceOne
          ees8 f8 <ees g>4. fis8 <ees g>4 ees2
        }
        \new Voice {
          \voiceTwo
          ees8 ees8 s4. ees8 s4 ees2
        }
      >>
      <ees g>8 <f aes>8 | <g bes>4. <fis a>8 <g bes>4 <ees g>2
      <g bes>8 <g bes>8 | <aes c>4 <aes ees'>4 <aes c>4 <g bes>8 <ees g>4. <d f>4 |
      <<
        {
          \voiceOne
          ees2.~ ees2. \bar "."
        }
        \new Voice {
          \voiceTwo
          ees2.~ ees2. \bar "."
        }
      >>
      \oneVoice
      <g bes>8^\markup { \caps "Refrain" } <ees g>4. <g bes>4
      <<
        {
          \voiceOne
          ees'2. |
        }
        \new Voice = "voice2a" {
          \voiceTwo
          g,4 aes4 bes4 |
        }
      >>
      \oneVoice
      \stemUp
      <aes c>8
      \stemDown
      <aes ees'>4.
      \stemUp
      <aes c>4 <g bes>2
      <g bes>8 <g bes>8 | <g bes>4 <ees g>4 <ees g>4 <ees g>8 <bes f'>4. <c ees>4 | <d bes'>2.~ <d bes'>2. |
      <g bes>8 <ees g>4. <g bes>4
      <<
        {
          \voiceOne
          ees'2. |
        }
        \new Voice = "voice2b" {
          \voiceTwo
          g,4 aes4 bes4 |
        }
      >>
      \oneVoice
      \stemUp
      <aes c>8 <aes ees'>4. <aes c>4 <g bes>2
      <g bes>8 <g bes>8 | <g bes>4 <ees g>4
      <<
        {
          \voiceOne
          ees4
        }
        \new Voice {
          \voiceTwo
          ees4
        }
      >>
      \oneVoice
      <ees g>8 <ees g>4. <d f>4 |
      \partial 4*5
      <bes ees>2.~ <bes ees>2 \bar ".."
    }
  }
  \new Lyrics \lyricsto "melody" {
    \verseOne
    \refrain
  }
  \new Lyrics \lyricsto "melody" \verseTwo
  \new Lyrics \lyricsto "melody" \verseThree
  \new Lyrics \lyricsto "voice2a" {
    _ where we'll
  }
  \new Lyrics \lyricsto "voice2b" {
    _ where we'll
  }
  \new Staff = "lower" {
    \clef bass
    \key ees \major
    \fixed c {
      \partial 4
      <ees g>8 <ees aes>8 | <ees bes>4. <ees a>8 <ees bes>4 <ees g>2
      <ees bes>8 <ees bes>8 | <ees ees'>4. <ees ees'>8 <ees ees'>4 <ees bes>2
      <ees ees'>8 <ees ees'>8 | <aes ees'>4 <aes c'>4 <aes ees'>4 <ees ees'>8 <ees bes>4. <c a>4 | <bes, bes>2.~ <bes, bes>2
      <ees g>8 <ees aes>8 | <ees bes>4. <ees a>8 <ees bes>4 <ees g>2
      <ees bes>8 <ees bes>8 | <ees ees'>4. <ees ees'>8 <ees ees'>4 <ees bes>2
      <ees ees'>8 <ees ees'>8 | <aes ees'>4 <aes c'>4 <aes ees'>4 <bes ees'>8
      <<
        {
          \voiceOne
          bes4.
        }
        \new Voice {
          \voiceTwo
          bes4.
        }
      >>
      \oneVoice
      <bes, aes>4 | <ees g>2.~ <ees g>2. \bar "."
      <ees ees'>8 <ees bes>4. <ees ees'>4
      <<
        {
          \voiceOne
          <ees'>2. |
        }
        \new Voice {
          \voiceTwo
          ees4 f4 g4 |
        }
      >>
      \oneVoice
      <aes ees'>8 <aes c'>4. <aes ees'>4 <ees ees'>2
      <ees ees'>8 <ees ees'>8 | <ees ees'>4 <ees bes>4 <ees bes>4 <ees bes>8 <d bes>4. <c a>4 | <bes, bes>2.~ <bes, bes>2. |
      <ees bes>8 <ees bes>4. <ees ees'>4
      <<
        {
          \voiceOne
          ees'2. |
        }
        \new Voice {
          \voiceTwo
          ees4 f4 g4 |
        }
      >>
      \oneVoice
      <aes ees'>8 <aes c'>4. <aes ees'>4 <ees ees'>2
      <ees ees'>8 <ees ees'>8 | <ees ees'>4 <ees bes>4 <c a>4 <bes, bes>8 <bes, bes>4. <bes, aes>4
      \partial 4*5 <ees g>2.~ <ees g>2 \bar ".."
    }
  }
>>
