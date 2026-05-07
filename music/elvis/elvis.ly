\version "2.24.4"

\header {
  title = "Can't Help Falling in Love"
  %subtitle = "from the Paramount Picture BLUE HAWAII"
  %composer = "Words and Music by GEORGE DAVID WEISS, HUGO PERETTI and LUIGI CREATORE" 
  tagline = " "
}

\markup \vspace #1

\layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}

\score {
  <<
    \new Voice = "mel" {
      \time 6/8
      \key d \major
      \relative c' {
        s1*3
        \break

        d2. | 
        a' | 
        d, |
        r4. r8 e8 fis8 |
        g2. |
        fis2. |
        e2. |
        r4. r4 a,8 |
        b2. | 
        cis2. |
        d4. r4. |
        e4 fis8~ fis8 g4 |
        fis4. r4. |
        e2. |
        d2. |
        R2. |

        d2. |
        a'2. |
        d,2. |
        r4. r8 e8 fis8 |
        g2. |
        fis2. |
        e2. |
        r4. r4 a,8 |
        b2. |
        cis2. |
        d4. r4. |
        e4 fis8~ fis8 g4 |
        fis4. r4. |
        e2. |
        d2. |
        R2. |
      }
    }
    \new Lyrics \lyricsto "mel" {
      Wise men say
      On -- ly fools rush in
      But I can't help
      fall -- ing __ in love with you

      Shall I stay?
      Would it be a sin
      if I can't help
      fall -- ing __ in love with you?
    }

    \new PianoStaff <<
      \new Staff = "upper" {
      \key d \major
      \relative c' {
          r8 a d fis d a |
          r a cis e cis a |
          r fis a d a fis |
          fis' d a a' fis d \bar "||"
          r8 d fis a fis d |
          r a cis fis cis a |
          r b d fis d b |
          r b d fis d b |
          r b d g d b | 
          r a d fis d a |
          r a cis e cis a |
          r a cis e cis a |
          r d g b g d |
          r e g cis g e |
          r fis b d b fis |
          r g b e b g |
          r a, d fis d a |
          r a cis e cis a |
          r fis a d a fis |
          fis' d a a' fis d |

          r a d fis d a |
          r cis fis a fis cis |
          r b d fis d b |
          r b d fis d b |
          r b d g d b |
          r a d fis d a |
          r a cis e cis a |
          r a cis e cis a |
          r d g b g d |
          r e g cis g e |
          r fis b d b fis |
          r g b e b g |
          r a, d fis d a |
          r a cis e cis a |
          r fis a d a fis |
          fis' d a a' fis d |
        }
      }
      \new Staff = "lower" {
        \clef bass
        \key d \major
        \fixed c, {
          d2. |
          a |
          d |
          a |
          d2. |
          fis |
          b |
          a |
          g |
          fis |
          e |
          a |
          g | 
          a |
          b4.~ b8 d8 fis8 |
          g4. e4. | 
          a,2. |
          a,2. |
          d2. |

          a4. a,4. |
          d2. | 
          fis2. |
          b2. |
          b4. a4. |
          g2. | fis2. |
          e2. |
          a2. |
          g2. |
          a2. |
          b4.~ b8 d8 fis8 |
          g4. e4. |
          a,2. |
          a,2. |
          d2. |
          a,4. d4.|
        }
      }
    >>
  >>
}