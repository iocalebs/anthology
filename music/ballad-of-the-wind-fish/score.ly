\version "2.26.0"

\header {
  title = "The Ballad of the Wind Fish"
  tagline = " "
  copyright = \markup { \char ##x00A9 "Nintendo 2019" }
}

\markup \vspace #1

<<
  \new Voice = "melody" {
    \relative c'' {
      \numericTimeSignature
      \time 4/4
      \key d \major

      r8 b8 cis8 d8~ d2  | r8 b8 cis8 d8~ d2 | r8 cis8 b8 fis8 a4. b8~ | b2   r2 | \break
      r8 b8 cis8 d8~ d2  | r8 a8 d8   g8~ g2 | r8 fis8 e8 fis8~ fis2~  | fis2 r2 | \break
      r8 b,8 cis8 d8~ d2 | r8 b8 cis8 d8~ d2 | r8 cis8 b8 fis8 a4. b8~ | b2   r2 | \break
      r8 b8 cis8 d8~ d2  | r8 a8 d8   g8~ g2 | r8 fis8 e8 fis8~ fis2~  | fis2 r2 | \break
      r1 |
      r4 cis'4 b4 fis4 | fis4. g8~ g2~ | g4 r8 e'8 d8 cis8 b8 fis8 | e8 fis8 b8 g4 r8 g8 a8~ |
      a2 c,8 e8 a8 fis8~ | fis2. d8 b'8~ | b1 | bes4. g'8~ g4 fis~ | fis1 |
      r1 | \break
      r8 b,,8 cis8 d8~ d2 | r8 b8 cis8 d8~ d2 | r8 cis8 b8 fis8 a4. b8~ | b2   r2 | \break
      r8 b8   cis8 d8~ d2 | r8 a8 d8   g8~ g2 | r8 fis8 e8 fis8~ fis2~  | fis2 r2 | \break
    }
  }
  \new Lyrics \lyricsto "melody" {
    \override LyricSpace.minimum-distance = #2
    ゆ め よ __ ど う か __ さ め な い で __
    き み は __ ね が う __ け れ ど __
    ゆ め は __ い つ か __ さ め る も の __
    そ れ が __ と き の __ さ だ め __

    か ぜ の よ に __ す べ て き え さ っ て も
    お も __ い で の そ __ ら を __ お よ ぐ __

    ゆ め は __ さ め て __ し ま っ て も __
    い つ も __ き み の __  な か に __
  }
>>
