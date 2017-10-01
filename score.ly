\version "2.18.2"

#(set-default-paper-size "letter")

#(define doPageBreaks #t)

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
    "Arr. Hermann Ritter, rev. Jason R. Fruit."
  }
  tagline = ##f
}

\paper { 
  %% systems-per-page = #10
  page-breaking = #ly:page-turn-breaking
} 

\score {
  \header {
    piece = \markup {
      " "
    }
  }
  <<
    \new Staff \with {
      instrumentName = \markup {
	\override #'(font-name . "Cormorant Garamond")
	"Viola"
      }
      shortInstrumentName = \markup {
	\override #'(font-name . "Cormorant Garamond")
	"Va."
      }
    } {
      \viola 
    }

    \new PianoStaff \with {
      instrumentName = \markup {
	\override #'(font-name . "Cormorant Garamond")
	"Piano"
      }
      shortInstrumentName = \markup {
	\override #'(font-name . "Cormorant Garamond")
	"Pf."
      }
    }    
    <<
      \new Staff \relative c' {
	\clef treble
	\key c \major
	\time 4/4
	\tempo \markup {
	  \override #'(font-name . "Cormorant Garamond")
	  \override #'(font-size . 3)
	  "Andante."
	}
	\repeat volta 2 {
	  << {e2\p( g4 a) \tieUp g2~ g4}
	     {c,2 e4 f d2 s4 }
	     {g,2 g4 a b2( c4)} >>
	  << \new Voice { \stemUp \slurUp \tieUp g'~( g e) a( f) }
	     \new Voice { \stemDown \slurDown b,4 c2 c4.( d8) } >>
	  << { e2( d4) r }
	     { c2( b4) s } >>
	  r2 g'( c fis,)
	  %%l2
	  << { b4( g~ g8.) fis16( g8. a16) c2( b4) r }
	     { g4 d s s fis2( g4) } >>
	}
	\repeat volta 2 {
	  << { g2( d c4) }
	     { d2 g, g4 } >>
	  r r c4~ c r r
	  << { f e2( d4) r e2 c}
	     { a4 c2( b4) s c2 g } >>
	  %%l3
	  \clef bass
	  << \new Voice { \stemUp \slurUp \tieUp g4( a b c) }
	     \new Voice { \stemDown \slurDown \tieDown e,2( f4 g) } >>
	  << { c2( g4 b) b2( c4) r }
	     { a2 e4 f f2( e4) s } >>
	  << { e'1 e2 g }
	     { c,1 c2 s }
	     {g1 g2 c } >>
	  << \new Voice { \stemUp \slurUp \tieUp a'4.( f8) \grace g8( f) e \grace f( e) d }
	     \new Voice { \stemDown \slurDown \tieDown c4.( a8) g4 g8( f) } >>
	  << { d'2( c4) r}
	     {f,2 e4 s } >>
	}
	%%l4
	\clef treble
	\repeat volta 2 {
	  << { e'8\fp e r e r e r e e\fp e r e r e r e e\fp e r e r e r f r e r e d4 r }
	     { g,8 g r g r g r g g g r g r g r g g g r g r g r a r g r g b4 s } >>
	  %%l5
	  << { e8\fp e r e r d r g fis\fp fis r fis r fis r fis g\fp g r e r g r fis g4 r r2 }
	     { g,8 g r g r g r d' c c r c r c r c b b r c r b r a b4 s s2 } >>
	}
	%%ptl1
	\repeat volta 2 {
	  << { f'8\fp f r f r f r f f\fp f r f r e r e d d r d r d r a' r c r c b a g f }
	     { g,8 g r g r g r g d' d r d r g, r g a a r a r a r d r e r e d f e d } >>
	  %%l2
	  << { e8\fp e r c' r c r c r c r c r c r a g g r e d d r d r b r b r c r c }
	     { g8 g r c r c r c r c r c r c r f e e r g, f f r b r f r f r e r e } >>
	  %% l3
	  << { e'8\< e r e r f r g r a r c c4 r c4->\! r r f,\p e r r2 }
	     { g,8 g r g r g r c r c r c c4 r e r r d c r r2 }
	     { s1 s4 s8 g' a4 } >>
	}
	\repeat volta 2 {
	  %%l4
	  r1 r4 g,8\p r c r r4 c4.( b8 a) r a r c2( b4) r
	  %%l5
	  << { <<c8 g>> r r4 r2 \clef bass a1( b8) r c r b r a r r4 b8 r b r r4 }
	     { e,8  s s4 s2 fis1( g8) r e r d r d r r4 d8 r d r r4 } >>
	}
	\repeat volta 2 {
	  %%p3l1
	  << { b'1( c8) r r4 r2 b8 r c r b r c r b4 r r2 }
	     { \tieDown g1~ g8 s s4 s2 g8 s g s g s fis s g4 s s2 } >>
	  %%l2
	  \clef treble
	  << { e'8 r r4 r2 r2 r8 e f g a4 r b r c r r2 }
	     { c,8 s s4 s2 s1 s2 f4 s e s s2 } >>
	}
	\repeat volta 2 {
	  %%l3
	  r2 g~( g4 fis g2) a,4( b c a'8 f!)
	  << { d2( e4) }
	     { g,2 c4 } >> r4
	  << \new Voice { \stemUp \slurUp e2 d4( g) }
	     \new Voice { \stemDown \slurDown g,1 } >>
	  << { g'2( f) e4 f e <<e d>> }
	     { c2 b c4 d c b } >>
	  %%l4
	  <<a2. c e>> r4
	}
	\repeat volta 2 {
	  << \new Voice { \stemUp \slurUp e4.( d8 cis4) cis d2( g) g4( f e) a,8.( d16) c2( b4) r4 e2( d4 des) }
	     \new Voice {\stemDown \slurDown a1 a2( b) c!4 f, g a g2. s4 g2.( e4) } >>
	  %%l5
	  << \new Voice { \stemUp \slurUp c'2( d!) c2.( b4) b2. r4 e2( f4 fis g2) r4 \clef bass c,4 c2.( b4) b2( c4) r }
	     \new Voice {\stemDown \slurDown f,4.( fis8 g2) s1 a2( gis4) s s1 s2. g4 a4.( f8 e4 f) f2( e4) s } >>
	}
	\repeat volta 2 {
	  %%p4l1
	  \clef treble
	  << { e'8\f e e e e e e e d d d d d d d d e e e e f f f f }
	     { g,8 g g g g g g g g g g g g g g g g g g g a a a a } >>
	  %%l2
	  << { e'8 e e e d d d d e e e e e e e e fis fis fis fis a a a a }
	     { s1 s d,8 d d d d d d d }
	     { c8 c c c b b b b c g g g g g g g a a a a c c c c } >>
	  %%l3
	  << { g'8 g g g g g g fis g g g g g4 r }
	     { d8 d d d d d d d d d d d d4 s }
	     { b8 b b b b b b a b b b b b4 s } >>
	}
	\repeat volta 2 {
	  << { d8\p d d d d d d d }
	     { g,8 g g g g g g g } >>
	  %%l4
	  << { e'8 e e e e e e e f \clef bass a, a a a a a a g g g g g g g g }
	     { c8 c c c c c c c a f f f f f f f e e e e d d d d } >>
	  %%l5
	  << { g\f \clef treble e' e e e e e e d d d d d d d d e e f f e \clef bass g, f f }
	     { e g g g g g g g g g g g g g g g g g a a g e d d } >>
	}
	%%p5l1
	\alternative {
	  { << { e e e e e4 r }
	       { c8 c c c c4 s } >> }
	  { << {e8 \clef treble s e'\> s e s e s\! }
	       {c,8 g'( c g c g c g) } >> }
	}
	<< { e'\p s e s e s e s }
	   { c s c s c s c s }
	   { bes( g bes g bes g bes g) } >>
	%%l2
	\clef bass
	<< { a s a s a s a s b! s b s b s b s c s c s c s c s }
	   { f,( c f c f c f c) f( d f d f d f d) e( c e c e c e c) } >>
	%%l3
	\clef treble
	<< { e' s e s e s e s \clef bass a, s a s a s a s b! s b s b s b s }
	   { c s c s c s c s }
	   { bes( g bes g bes g bes g) f( c f c f c f c) f( d f d f d f d) } >>
	%%l4
	<< { c'8 s c s c s c s b\pp s b s b s b s c s c s c s c s }
	   { e,( c e c e c e c) f( d f d f d f d) e( c e c e c e c) } >>
	%%l5
	<< { b'8_\markup { \italic "calando" } s b s b s b s c s c s c s c s c4 r r2 }
	   {f,8( d f d f d f d) e( c e c e c e c e4) } >>
      }

      
      \new Staff \relative c {
	\clef bass
	\key c \major
	\time 4/4
	\repeat volta 2 {

	  << {c1~ c2.}
	     {c,1~ c2.} >> d'4( e a,) f'( d) r g( g,) r
	  << {e''2( d c1)}
	     {c2( b a1)} >>
	  %%l2
	  g4( b d d,) r d( g) r
	}
	\repeat volta 2 {
	  b2( b, c4) r r
	  << { g'4( a) }
	     { e f } >>
	  r r d r g( g,) r
	  << { g'2 e }
	     { c2 c } >>
	  %%l3
	  c2( d4 e) f( f, g2) g2( c4) r c1~ c2 e, f2 g g( c,4) r
	}
	%%l4
	\repeat volta 2 {
	  c'4-. c-. c-. c-. c-. c-. c-. c-. c-. c-. c-. f,-. g-. g-. g-. r
	  %%l5
	  c-. c-. b-. b-. a-. a-. a-. a-. g-. c-. d-. d-. g, r r2
	}
	%%p2l1
	\repeat volta 2 {
	  b4-. b-. b-. b-. b-. b-. c-. c-. f-. f-. f-. f-. g-. g-. g, r
	  %%l2
	  << { c-. c,-> d-> dis-> e-> e-> e-> f-. g-. g-. g-. g-. g-. g-. c-. c-. }
	     { s c d dis e e e f } >>
	  %%l3
	  c-. c-> b-> bes-> a-> e-> f-> r g-> r r g c r r2
	}
	\repeat volta 2 {
	  %%l4
	  r1 r r r4 g8 r g' r r4
	  %%l5
	  c,8 r r4 r2 d,1( g8) r c, r d r d r r4 g8 r g r r4
	}
	\repeat volta 2 {
	  %%p3l1
	  d'1( c8) r r4 r2 f8 r e r d r d r g,4 r r2
	  %%l2
	  c8 r r4 r2 r2 r8
	  << { c'8 c c c4 }
	     { c,8 d e f4 } >>
	  r4 g r c, r r2
	}
	\repeat volta 2 {
	  %%l3
	  << { e'2^\p( d c d) }
	     { c2 b a g } >>
	  f2( e4 f) b,( g c) r c2( b c gis) a4 d e e,
	  %%l4
	  a2. r4
	}
	\repeat volta 2 {
	  g'!1 fis2( f) e4( d c) f, g2. r4
	  c2( b4 bes
	  %%l5
	  a aes g2)
	  <<f'1 a>>
	  f2( e4) r
	  << { c'1( d2 e4) }
	     { a,1 b2 c4 } >>
	  e,4( f f,) g( g,) g'2( c4) r
	}
	\repeat volta 2 {
	  %%p4l1
	  c8 c c c c c c c b b b b b b b b c c c c f, f f f
	  %%l2
	  g g g g g g g g c c c c c c c c c c c c fis, fis fis fis
	  %%l3
	  g g b b d d d d g, g g g g4 r
	}
	\repeat volta 2 {
	  b8 b b b b b b b
	  %%l4
	  c c c c c c c c f, f f f f f f f g g g g g g g g
	  %%l5
	  c8 c c c c c c c b b b b b b b b c c f, f g g g g
	}
	%%p5l1
	\alternative {
	  { c, c c c c4 r }
	  { c1 }
	}
	c1
	%%l2
	c1 c c~
	%%l3
	c8 r c'16( bes g e c8) r c'16( bes g e c1)
	<< {g'2 g}
	   { c, c } >>
	%%l4
	<< { g'1 g2 g g1 }
	   {c,1 c2 c c1 } >>
	%%l5
	<< {g'2 g g1~ g4 r r2 }
	   { c,2 c c1~ c4 s s2 } >>	
      }
    >>
  >>
}