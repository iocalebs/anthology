\version "2.24.4"

\header {
  title = "なよたけ"
  % subtitle = "from \"The Tale of Princess Kaguya\""
  composer = "Joe Hisaishi"
  tagline = " "
}

\markup \vspace #1

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" {
      \time 4/4
      \key ees \major
      \numericTimeSignature
      \relative c'' {
        c8 ees8 ees8 ees8 ees4. d16 ees16 |
        f8 d8 c2. |

        aes4 c8 bes8 d4 c8 aes8 |
        g4. aes8 g2\fermata |

        ees'8 g8 g8 g8 g4. f16 d16 |
        d8 ees8 ees2. |
        
        c8 ees8 ees8 ees8 ees4 d8 bes8 |
        f8 c'8 c2.\fermata |

        f8 aes8 aes8 aes8 bes4. ees,8 |
        ees8 f8 f4 c2\fermata |

        r2. aes'8 f8 | 
        ees4 c8 ees8 bes8. c16 aes8 bes8 | 
        f2. aes'8 f8 |
        <f, ees'>8. f'16 c8 ees8 <g, bes>8 c8 aes8 bes8 |
        f1 |

        c8 ees8 ees4. ees8 d4 |
        bes4 <g c>2.\arpeggio |
      }
    }
    \new Staff = "left" {
      \clef bass
      \key ees \major
      \relative c {
        r1 |
        r1 |

        r1 |
        r1 |

        <f c'> |
        r1 |
        
        <c' ees>2~ <bes ees>2 |
        <aes c>1 |
    
        <c aes'> |
        <bes c>4~ <aes c>4~ <f c'>2 |

        r1 |
        r1 |
        r1 |
        <des aes'>2 <ees bes'>2 |
        <f c'>1 |

        f1 |
        r4 <c, f c'>2.\arpeggio
      }
    }
  >>
}

