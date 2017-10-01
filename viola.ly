#(define (breakPage)
  (if doPageBreaks
   pageBreak))

sulX =
#(define-music-function (parser location sulString) (string?)
  #{
  \override TextSpanner.style = #'solid
  \override TextSpanner.font-size = #-2
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #0
  \override TextSpanner.bound-details.left.text = \markup { "sul" #sulString " " }
  \override TextSpanner #'bound-details #'right #'text = \markup { \draw-line #'(0 . -1) }
  #})

viola = \new Voice \relative c' {
  \clef alto
  \key c \major
  \time 4/4
  \tempo \markup {
    \override #'(font-name . "Cormorant Garamond")
    \override #'(font-size . 3)
    "Andante."
  }
  \repeat volta 2 {
    e4.\mf\turn( f8) g8.( e16 c'8. a16) g4.( f8 e4) \tuplet 3/2 {g8( f d)} c4 c f8( g) a( f) e2( d4) r
    e4.\turn( f8) g4\tenuto( g\tenuto) fis4~( \tuplet 3/2 {fis8 a c)} e4~( e8 d16 c) b8. d16( g,8.) b16( d,8.) d16( e8. fis16) a2( g4) r
  }
  \repeat volta 2 {
    f'4.\fz( d8) b( g\turn a f) f8.\<->( e16 a8.-> g16) d'8.->( c16 b c d c\!) b8\>( a16) r g8( f16) r e8( d16) r \tuplet 3/2 {a'8( f d)} c2( b4\!) r
    e4.\turn\<( f8) g8.( e16 c'8. g16) e'4.\!( d8) \grace { d8( } c\> b \grace { b } a g) g16( f e f) \grace {b8(}  \tuplet 3/2 { a f d\!)} c4( d) d4.( dis8) e4 r e4.\turn\<( f8) g8.( e16 c'8. g16) e'8.( c16 g'8. e16\!) c8\>( g \grace { g } f e) e( d f d) \grace {e( } d c \grace {d} c b) b2( c4\!) r
  }
  \break
  \repeat volta 2 {
    e8-.\fp\upbow \mark \markup {"Var. 1"} e-.\upbow r e16 f fis( g a) g-. g8 g \grace {d'8(} c4.\trill b16 a) g8 r
    g'16( e) c-.( g-. e8-.) r e'16( c) g-.( e-.) c8( r16 c-.) f( g a) f-. e2( d4) r
    e8\fp-.\upbow e-.\upbow r e16 f fis( g a) g-. g8-.( g-.) c8 e32( d c b a8) c32( b a g fis8) a32( g fis e d8.) c'16\upbow b16.( d32-.) \grace {c16( d} c16-.) b-. \grace { a( b } a-.) g-. \grace { fis( g } fis-.) e-. \grace {d( e} d-.) c-. \grace {b( c} b-.) a-. \grace {g( a } g-.) fis-. \grace {e( fis} e-.) d-. g8 g16( b) d-.( g-. b-. d-.) g4 r
  }
  \repeat volta 2 {
    d8-.\fp\upbow d-.\upbow r f16-. e-. g( f d) b-. g8-. g-. aes2->( g8) b16( c d c e c) b( a d cis e d f e \clef treble g f a gis b a f d) c2( b4) r
    \clef alto e,8-.\upbow e-.\upbow r e( f-.) f( fis-.) fis( g-.) g( gis2) b16( a f! d) c8-. c-. r r16 c( b c d e f d g f) dis2( e4) r
    \clef treble c'2\cresc\trill-> d4\trill-> e\trill-> f->\trill g\trill-> \grace {f16( g} a4->\!) r
    g,16.( g'32) \grace {f16( g} f-.) e-. \grace {d( e } d-.) c-. \grace {b( c} b-.) a-. \clef alto \grace {g( a} g-.) f-. \grace {e( f} e-.) d-. \grace {c( d} c-.) b-. \grace {a( b} a-.) g-. c8 c16( e) \clef treble g-.( c-. e-. g-.) c4 r
  }
  \break
  #(breakPage)
  \repeat volta 2 {
    \clef alto
    <<e,,4.\mf( \mark \markup { "Var. 2" } c>> <<d8 f)>> <<g( e>> <<e) c>> <<c'( a>> <<a) f>> <<g4.( e>> <<f8) d>> <<e4 c>>
    << \new Voice { \stemUp \slurUp { d8( g) g4( f8 e) e( d e c) e2( d4) } }
       \new Voice { \stemDown \slurDown { b4 a4.( g8) f r fis r g2. } } >> r4
    <<c4. e(>> <<f8) d>> <<g4\tenuto( e>> <<g\tenuto) e>> 
    << { a16\<( b c d\! e\> d c b\!) a( b c b a g fis e) }
       { fis g a b c b a g fis g a g fis e d c } >>
    << \new Voice { \stemUp \slurUp d8( dis) e( a) g4( fis) a2( g4) }
       \new Voice { \stemDown \slurDown b,4 c d!2 g,2. } >> r4
  }
  \repeat volta 2 {
    << \new Voice { \stemUp \slurUp <<f''8->\downbow d,>> d4.\upbow( f'16) e( d c b a g f e) c,16( d e f g a b c) d( e f g e d c) }
       \new Voice {\stemDown \slurDown s8 g\<( aes g\!) s2 s1 } >>
    d'8\trill( \tuplet 3/2 { f16) d-. b-. } c8\trill( \tuplet 3/2 {e16) c-. a-.} b8\trill( \tuplet 3/2 {d16) b-. g-.} a8\trill( \tuplet 3/2 {c16) a-. fis-.} g8
    << {b16( d) d( g) g( b) b( d) d( g) g8}
       {g,,16 b b b b g' g b b b b8} >> r
    << {e,4.( f8 g) g( a) b( c) } % b\< c d\! e4 }
       {c,4. d8 e e f d e } % g a b c4 }
     >>
    << { g8 a b c4 }
       { b8\< c d\! e4 } >>
    r4
    f,,4-> a''-> g,,16 f''( d) b-. g( f) d-. b-. c8
    << {c,16( g') g( c) c( e) e( g) g( c) c8 }
       {s16 e,, e e e c' c e e e e8} >> r8
  }
  \break
  \repeat volta 2 {
    \tempo "Un poco Adagio."
    e4.\turn-\markup { \italic "dolce" }( \mark \markup { "Var. 3" } f8) g4\tenuto( g\tenuto) c2 b a g4( c8 a) g4.( f8) e4 r
    \sulX "D"
    e4.\turn^\startTextSpan ( f8) g4\tenuto( g\tenuto) e'2 d c4( b) a \grace {a8(} \afterGrace gis4)(\trill {fis16 gis)} \grace {b4(} a2.) \stopTextSpan r4
  }
  \break
  \repeat volta 2 {
    cis4.\turn( d8) e4\tenuto( e\tenuto) a2 d, g4( b,) c8.( a16 g'8. f16) e2( d4) r
    e,4.\turn( f8) g4\tenuto( g\tenuto) c2 b a4.( c8) c,4( d) d4.( dis8) e4 r
    c'4.( b8) a4\tenuto( a\tenuto) g2( e4) c'4~ c8 \sulX "G" d,^\startTextSpan(  f a) c,4 e8.( d16) d2( c4\stopTextSpan) r
  }
  \break
  \repeat volta 2 {
    \tempo "Tempo 1"
    c,16-\markup { \italic "con forza" } \mark \markup { "Var. 4" } e( g) e( c') g( e') c( g') e( c') g( e') b( c) a( g) a( g) fis( g) d'( b) fis( g) a( f!) g( e) f( d) e( c) d( e f\< g a b c \clef treble d-1 e f-1 g b a f-3 d\!) \clef alto c-2\>( d c b c e d c) b( g f d b g f\! d)

    c e( g) e( c') g( e') c( g') e( c') g( e') c( a) g( fis) d fis a d a d-1-. fis-. \clef treble a-4-. d,-. fis-1-. a-3-. c4-4
    b16( d) g,( b) \clef alto d,( g) b,( d) g,( b) d,( g) b,( d) c( a) g( b) d g \clef treble b d g b d g, b d g4
  }
  #(breakPage)
  \repeat volta 2 {
    \clef alto
    f,16\p( d b g aes f d c) b( d aes d g, b d f) e\<( f fis g gis-4 a-0 b c\! cis\> d dis e b c d c\!)
    b( a g! f! e d cis d) e16.( d32 f16. e32 g16. f32 a,16. d32) c4.\< d16( c b a\! g f\> e f d e\!)
    c\f e( g) e( c') g( e') c( g') e( c') g( e') b( c) a( g) a( g) fis( g) d'( b) fis( g) a( f!) g( e)  f( d) f( e) c'( g) e-. b'( a) f-. d-. a'( g) e-. c-. g'( f) d-. b-.
  } \alternative {
    { d( c) g-. e-. d'( c) g-. e-. c4 r }
    { d'16( c) g-. e-. c4 r2 }
  }
  d''16\p\upbow( c bes) g-. e8 r d'16( c bes) g-. e8 r f16( g a g f4~ f16) g( e f d e c d) b( c d c b c a b) g( a f g e f d e) c4 r r2
  d''16\upbow( c bes) g-. e8 r d'16( c bes) g-. e8 r f16( g a g f4~ f16) g( e f d e c d) b( c d c b c a b g a f g e f d e) c4 r r2
  b'16\p( c d c b c a b g a f g e f d e) c4 r r2 b'16\pp( c-\markup { \italic "calando" } d c b c a b g a f g e f d e) c4 r << {c'-.\upbow( c-.) c}
															       {e, e e} >> r r2 \bar "|."
}
