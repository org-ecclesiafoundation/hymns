\version "2.22.2"

\header {
  title = "The Lamb be Praised Eternally"
  composer = "Unknown"
}

text = \lyricmode {
  The Lamb be_ _
  praised e -- ter -- nal -- ly Who died for 
  us up -- on the tree; God loved the 
  world so that He _ gave His Son, the 
  world from sin to save.
}

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4 d f8 g                    |
  a2     a4. (g8) f4   e       | d2. a'4 f a   |
  c2     c4. (a8) bes4 g       | a2. a4  f a   |
  d2     d4. (a8) c4   bes8 a  | g2. a4  d a   |
  f  (a) a4. (g8) f4   e       | d2. \bar "|."
}


soprano = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4 d f8 g                    |
  a2     a4. (g8)  f4   e      | d2. a'4 f a   |
  c2     c4. (a8)  bes4 g      | a2. a4  f a   |
  d2     d4. (a8)  c4   bes8 a | g2. a4  d a   |
  f4 (a) a4. (g8)  f4   e      | d2. \bar "|."
}

alto = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4     d2                    |
  d2     e         cis         | a2. a         |
  g'2    a4. (c,8) d4   c      | c2. d4  d cis |
  d2     f         e           | e2. c4  f2    |
  d2     d   (d4)  cis         | a2. \bar "|."
}

tenor = \relative c {
  \clef bass
  \key d \minor
  \time 3/2
  
  \partial 2.
  f4     bes2                  |
  a2     a         a4   g      |
}

bass = \relative c {
  \clef bass
  \key d \minor
  \time 3/2
  
  \partial 2.
  d4     g2                    |
  f2     cis       a           |
}
%{
lower = \relative c {
  \clef bass
  \key c \major
  \time 3/2

  \partial 2.
  a2 c
}
%}


\score {
  <<
    \new Voice = "mel" { \melody }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff {
      <<
        \new Staff {
          \partCombine \soprano \alto
        }
        \new Staff {
          \partCombine \tenor \bass
        }
      >>
    }
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }

}
