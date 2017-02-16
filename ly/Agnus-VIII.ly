\version "2.18"
\language "italiano"

\header {
  title = "Agnus Dei"
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
}

MusiqueTheme = \relative do'' {
 \key re\major

 sol8[( la8 la8 sol8)] la8[( si8)]

 sol8[( la8-- sol8)]-- sol4

 \bar "'"

 sol8

 sol8[( \tiny mi8)] \normalsize mi8[( re8)]

 mi8-! re8 mi8[( sol8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "'"

 sol8 la8[( si8)] si8 la8[( do8 si8-! la8 si8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "||"

 sol8 si8[( re8)]

 re8[( si8 la8-! re8)] re4

 \bar "'"

 re8

 si8[( la8 si8)] sol8-!

 la8 sol8 la8[( si8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "'"

 sol8 la8[( si8)] si8 la8[( do8 si8-! la8 si8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "||"

 sol8[( la8 la8 sol8)] la8[( si8)]

 sol8[( la8-- sol8)]-- sol4

 \bar "'"

 sol8

 sol8[( \tiny mi8)] \normalsize mi8[( re8)]

 mi8-! re8 mi8[( sol8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "'"

 sol8 la8[( si8)]

 si8 la8[( do8 si8-! la8 si8)]

 sol8[(-- la8-- sol8)]-- sol4

 \bar "||"
}

Paroles = \lyricmode {

A -- gnus

De -- i,


&zwj;*__qui

tol -- lis

pec -- cá -- ta

mun -- di_:


mi -- se -- ré -- re

no -- bis.


A -- gnus

De -- i,


&zwj;*__qui

tol -- lis

pec -- cá -- ta

mun -- di_:


mi -- se -- ré -- re

no -- bis.


A -- gnus

De -- i,


&zwj;*__qui

tol -- lis

pec -- cá -- ta

mun -- di_:


do -- na

no -- bis

pa -- cem.


}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \cadenzaOn {\MusiqueTheme}
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