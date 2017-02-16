\version "2.18"

\header {
  title = "kyrieVIII"
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
}

MusiqueTheme = {
 \key c\major
%1
 a'8 a'8[( g'8 f'8-! e'8] f'4 f'8[ a'8 bes'8] c''4 d''8[ c''8 bes'8] c''4)
%2
 \bar "'"
%3
 c''8[( a'8 g'8-! f'8 bes'8 a'8)] g'8-! g'8 f'4
%4
 \bar "||"
}

Paroles = \lyricmode {
%1
Chri -- ste
%2
%3
e -- lé -- i -- son.
%4

}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \cadenzaOn \transpose c a, {\MusiqueTheme}
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{
    \context {
      \Staff
      \override TimeSignature #'stencil = #point-stencil
      \override Slur #'stencil = ##f
    }
  }
  \midi{}
}