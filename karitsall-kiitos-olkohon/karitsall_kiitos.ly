\version "2.22.2"

\header {
  title = "The Lamb be Praised Eternally"
  composer = "Unknown"
}

lyricsOne = \lyricmode {
  The Lamb be_ _ praised e -- ter -- nal -- ly 
  Who died for us up -- on the tree; 
  God loved the world so that He _ gave 
  His Son, the world from sin to save.
}

lyricsTwo = \lyricmode {
  His blood re_ _ -- deems us from all sin;
  'Twas shed by Je -- sus, us to win.
  From his five wounds it flows for_ _ us.
  O Sin -- ner, drink; re -- ceive and trust.
}

lyricsThree = \lyricmode {
  Be -- cause His_ _ blood for us con -- tests,
  The Fa -- ther's fa -- vor us at -- tends;
  He bought us that we be His_ _ own,
  And serve Him e -- ver round His throne.
}

lyricsFour = \lyricmode {
  His blood, it_ _ keeps us from all harm,
  From Sa -- tan's 
  pow'r, and all a -- larm;
  With gar -- ments wash'd in Je -- sus'_ _ blood,
  We're cloth'd for hea -- ven's high -- est good.
}

lyricsFive = \lyricmode {
  Thus clothed we're_ _ rea -- dy for the feast
  In com -- pa -- ny with all the Saints;
  His wounds re -- deem us from our_ _ sin,
  Our hope of heav'n is found there -- in.
}

lyricsSix = \lyricmode {
  His o -- pen_ _ wounds to us He shows,
  In which His pre -- cious lambs re -- pose;
  A place for you He has pre_ _ -- pared.
  So has -- ten to the foun -- tain -- head.
}

lyricsSeven = \lyricmode {
  The blood which_ _ flowed from Him in pain,
  The cru -- ci -- fix -- ion, was our gain.
  For you, for me, for all man_ _ -- kind,
 His blood for all of us suf -- ficed.
}

lyricsEight = \lyricmode {
  All thanks and_ _ glo -- ry, bless -- ing be
  To Je -- sus for such love. May we
  Your a -- gon -- y and death re_ _ -- call;
  Lord, I am yours, have me, my all.
}

lyricsNine = \lyricmode {
  So will I_ _ e'er be -- long to You
  And You are mine, Your Word stands true!
  In You we rest, Lord, joy -- ous_ _ -- ly,
  and dwell in peace e -- ter -- nal -- ly.
}

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4 d f8 g                     |
  a2     a4. (g8)   f4   e      | d2. a'4 f  a   |
  c2     c4. (a8)   bes4 g      | a2. a4  f  a   |
  d2     d4. (a8)   c4   bes8 a | g2. a4  d  a   |
  f  (a) a4. (g8)   f4   e      | d2. \bar "|."
}


soprano = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4 d f8 g                     |
  a2     a4. (g8)   f4   e      | d2. a'4 f  a   |
  c2     c4. (a8)   bes4 g      | a2. a4  f  a   |
  d2     d4. (a8)   c4   bes8 a | g2. a4  d  a   |
  f4 (a) a4. (g8)   f4   e      | d2. \bar "|."
}

alto = \relative c' {
  \clef treble
  \key d \minor
  \time 3/2

  \partial 2. 
  d4     d2                     |
  d2     e          cis         | a2. a          |
  g'2    a4. (c,8)  d4   c      | c2. d4  d  cis |
  d2     f          e           | e2. c4  f2     |
  d2     d   (d4)   cis         | a2. \bar "|."
}

tenor = \relative c {
  \clef bass
  \key d \minor
  \time 3/2
  
  \partial 2.
  f4     bes2                   |
  a2     a          a4   g      | f2. f          |
  c'2    f,         g4   e      | f2. f4  a  g   |
  a2     (a4.) d8   c4   g      | c2. f,4 a2     |
  bes2   a4.   bes8 a4   g      | f2. \bar "|."
}

bass = \relative c {
  \clef bass
  \key d \minor
  \time 3/2
  
  \partial 2.
  d4     g2                     |
  f2     cis        a           | d2. f,4 a  f   |
  e2     f4. a8     g4   c4     | f2. d4  d  e   |
  f2     d          c           | c2. f4  d2     |
  bes2   f4. g8     a2          | d2. \bar "|."
}

\score {
  <<
    \new Voice = "mel" { \melody }
    \new Lyrics \lyricsto mel \lyricsOne
    \new Lyrics \lyricsto mel \lyricsTwo
    \new Lyrics \lyricsto mel \lyricsThree
    \new Lyrics \lyricsto mel \lyricsFour
    %{
    \new Lyrics \lyricsto mel \lyricsSix
    \new Lyrics \lyricsto mel \lyricsSeven
    \new Lyrics \lyricsto mel \lyricsEight
    \new Lyrics \lyricsto mel \lyricsNine
    %}
    %{
    \new PianoStaff = "pianoStaff" {
      <<
        \new Staff {
          \partCombine \soprano \alto
        }
        \new Staff {
          \partCombine \tenor \bass
        }
      >>
    }
    %}
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}

\markup {
  \vspace #2
  \column{
    "Verse 5:"
    \line {"Thus clothed we're ready for the feast"}
    \line {"In company with all the Saints;"}
    \line {"His wounds redeem us from our sin,"}
    \line {"Our hope of heav'n is found therein."}
    \vspace #1
    "Verse 6:"
    \line {"His open wounds to us He shows,"}
    \line {"In which His precious lambs repose;"}
    \line {"A place for you He has prepared."}
    \line {"So hasten to the fountainhead. "}
    \vspace #1
    "Verse 7:"
    \line {"The blood which flowed from Him in pain,"}
    \line {"The crucifixion, was our gain."}
    \line {"For you, for me, for all mankind,"}
    \line {"His blood for all of us sufficed."}
  }
  
  \column{
    "Verse 8:"
    \line {"All thanks and glory, blessing be"}
    \line {"To Jesus for such love. May we"}
    \line {"Your agony and death recall;"}
    \line {"Lord, I am yours, have me, my all."}
    \vspace #1
    "Verse 9:"
    \line {"So will I e'er belong to You"}
    \line {"And You are mine, Your Word stands true!"}
    \line {"In You we rest, Lord, joyously,"}
    \line {"and dwell in peace eternally."}
  }
}
