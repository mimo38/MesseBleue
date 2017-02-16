\version "2.18"
\language "italiano"

\header {
  title = "Sanctus VIII"
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
}

MusiqueTheme = \relative do' {
 \key do\major

 fa8[( sol8] la8[ fa8] sol8[ sol8 \tiny fa8)] \normalsize fa4

 \bar "'"

 fa8[( \tiny mi8)] \normalsize re4( do4)

 \bar "'"

 fa8[( sol8 la8] do8[ la8 la8 sol8 fa8)] sol4( fa4)

 \bar "'"

 fa8[( la8] do8[ sib8 do8)] sib8[( la8)] la4

 do8 sib8[( la8)]

 sol8[( fa8] sol8[ la8 fa8 fa8 re8-! do8] fa8[ sol8 la8] do8[ la8 la8 sol8 fa8)] sol8[( fa8)] fa4

 \bar "|"

 fa8 la8[( do8)]

 do4

 la8[( sol8 do8)] do4

 do8[( \tiny re8)] \normalsize

 re8[( do8 sib8-! do8)] sib4( la4)

 \bar "'"

 do8 sib8[( la8)] sol8[( la8)]

 la8[( sol8 fa8)] fa4

 \bar "|"

 fa8 fa8[( \tiny mi8)] \normalsize re8[( do8)]

 fa8

 sol8[( la8)] la8( do8[ la8 la8 sol8 fa8)] sol4( fa4)

 \bar "|"

 fa8 la8[( do8)] do8[( la8 sol8-! do8)] do4

 do8[( re8)]

 re8[( do8 sib8-! do8)] sib4( la4)

 \bar "'"

 la8-!

 la8 fa8-! la8

 do8[( do8 re8)] do8 do4

 \bar "|"

 do8 do8[( re8 re8 do8 la8-! sib8)] sol8[( fa8)]

 \bar "'"

 sol8[( la8)]

 fa8[( mi8)] re8[(-- do8] fa8[ sol8 la8] do8[ la8 la8 sol8 fa8)] sol4( fa4)

 \bar "||"
}

Paroles = \lyricmode {

San -- ctus,


&zwj;*__San -- ctus,


San -- ctus


Dó -- mi -- nus

De -- us

Sá -- ba -- oth.


Ple -- ni

sunt

cæ -- li

et

ter -- ra


gló -- ri -- a

tu -- a.


Ho -- sán -- na

in

ex -- cél -- sis.


Be -- ne -- dí -- ctus

qui

ve -- nit


in

nó -- mi -- ne

Dó -- mi -- ni.


Ho -- sán -- na


in

ex -- cél -- sis.


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