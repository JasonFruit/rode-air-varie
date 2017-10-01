\version "2.18.2"

#(set-default-paper-size "letter")

#(define doPageBreaks #f)

\include "viola.ly"

\header {
  title = \markup {
    \override #'(font-name . "Cormorant Garamond")
    "Air Varié."
  }
  subtitle = \markup {
    \override #'(font-name . "Cormorant Garamond")
    \override #'(font-size . 1)
    "Viola."
  }
  composer = \markup {
    \override #'(font-name . "Cormorant Garamond")
    \override #'(font-size . 3)
    "Pierre Rode Op. 10."
  }
  arranger = \markup {
    \override #'(font-name . "Cormorant Garamond")
    \override #'(font-size . 2)
    "Arranged by Jason R. Fruit."
  }
  tagline = ##f
}

\paper { 
  systems-per-page = #10
  page-breaking = #ly:page-turn-breaking
} 

\score {
  \header {
    piece = \markup {
      " "
    }
  }
  \new Staff \with {
    instrumentName = \markup {
      \override #'(font-name . "Cormorant Garamond")
      ""
    }
    shortInstrumentName = \markup {
      \override #'(font-name . "Cormorant Garamond")
      ""
    }
  } {
    \viola 
  }
}