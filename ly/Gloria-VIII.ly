\version "2.18"
\language "italiano"

\header {
  title = "Gloria VIII"
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
}

MusiqueTheme = \relative do'' {
 \key do\minor

 sib8-! sib8 sol8-!

 fa8

 mib8 fa8-! sol8

 fa4 mib4

 \bar "||"

 sib'8-!

 sib8

 sol8-! fa8

 mib8-!

 fa8 sol8-! fa8 mib4

 \bar "'"

 mib8-! fa8

 sol8-! sib8 do4 sib4

 \bar "||"

 mib8 re8[( do8 sib8)] do4

 sib4

 \bar "||"

 mib8-! re8 do8-! sib8 do8[( re8)]

 do4( sib4)

 \bar "||"

 sib8-! sib8 sol8[( fa8 mib8)] fa8[( sol8)]

 mib4

 \bar "||"

 mib8-! fa8 sol8 sib8-! do8

 sib4

 \bar "||"

 sib8-! do8 re8

 mib8-! re8 do8[( re8)]

 do4 sib4

 \bar "'"

 sib8-! sib8

 sol8-! fa8

 mib8-! fa8 sol8

 fa4 mib4

 \bar "||"

 sib'8-! sib8 sol8-!

 fa8 mib4

 fa8-!

 sol8 fa4 mib4

 \bar "'"

 mib8 fa8[( sol8)]

 sib8 do8[( sib8)]

 do8[( re8)] mib8[( re8)] do8[( sib8)] sib4

 \bar "||"

 sib8-! sib8 sol8-!

 fa8 mib8-!

 fa8 sol8 sib8-! do8 sib4

 \bar "'"

 do8[( re8)] mib8[( re8)]

 do4 sib4

 \bar "||"

 mib8-! re8 do8-!

 re8 do8[( sib8)]

 do8-! re8

 do4 sib4

 \bar "'"

 sib8-! sib8 sol8[( fa8 mib8)]

 fa8[( sol8 fa8)] mib4

 \bar "||"

 mib8-!

 fa8 sol8-!

 sib8 do8-! sib8

 do8[( re8] mib8[ re8)] do4( sib4)

 \bar "'"

 sib8-! sib8 sol8[( fa8 mib8)] fa8[( sol8)]

 fa4 mib4

 \bar "||"

 mib'8-!

 re8 do8-!

 sib8 do8-! re8

 do4 sib4

 \bar "'"

 sib8-! sib8 sol4

 fa8 mib8-! fa8 sol8-! sib8 do8[( sib8)]

 do8[( re8] mib8[ re8)] do4( sib4)

 \bar "||"

 sib8-!

 sib8 sol8-!

 fa8

 mib8-! fa8 sol8

 fa4 mib4

 \bar "'"

 mib8-! fa8 sol8-! sib8

 do4 sib4

 \bar "||"

 mib8-! re8 do8-!

 sib8

 do8-! re8

 do4 sib4

 \bar "||"

 mib8-!

 re8 do8[( sib8)]

 do8[( re8)] do8[( sib8])] sib4

 \bar "||"

 sib8

 sib8-! sol8

 fa8[( mib8)] fa8[( sol8)] sib8 do4( sib4)

 \bar "'"

 do8[( re8)] mib8[( re8)]

 do4 sib4

 \bar "||"

 sib8-!

 sib8 sol8[( fa8 mib8)]

 fa8[( sol8)] fa8 mib4

 \bar "'"

 mib8-!

 fa8 sol8-! sib8

 do8-! sib8

 do8[( re8] mib8[ re8)] do4( sib4)

 \bar "||"

 sib8[( sol8 fa8-! mib8 lab8 sol8 fa8)] fa4( mib4)

 \bar "||"
}

Paroles = \lyricmode {

Gló -- ri -- a

in

e -- xcél -- sis

De -- o.


Et

in

ter -- ra

pax

ho -- mí -- ni -- bus


bo -- næ

vo -- lun -- tá -- tis.


Lau -- dá- -- mus

te.


Be -- ne -- dí -- ci -- mus

te.


A -- do -- rá- -- mus

te.


Glo -- ri -- fi -- cá -- mus

te.


Grá -- ti -- as

á -- gi -- mus

ti -- bi


prop -- ter

ma -- gnam

gló -- ri -- am

tu -- am.


Dó -- mi -- ne

De -- us,

Rex

cæ -- lé -- stis,


De -- us

Pa -- ter

o -- mní -- po -- tens.


Dó -- mi -- ne

Fi -- li

u -- ni -- gé -- ni -- te


Ie -- su

Chri -- ste.


Dó -- mi -- ne

De -- us,

A -- gnus

De -- i,


Fí -- li -- us

Pa -- tris.


Qui

tol -- lis

pec -- cá -- ta

mun -- di,


mi -- se -- ré -- re

no -- bis.


Qui

tol -- lis

pec -- cá -- ta

mun -- di,


sús -- ci -- pe

de -- pre -- ca -- ti -- ó -- nem

no -- stram.


Qui

se -- des

ad

dé -- xte -- ram

Pa -- tris,


mi -- se -- ré -- re

no -- bis.


Quó -- ni -- am

tu

so -- lus

san -- ctus.


Tu

so -- lus

Dó -- mi -- nus.


Tu

so -- lus

Al -- tís -- si -- mus,


Ie -- su

Chri- -- ste.


Cum

San -- cto

Spí -- ri -- tu,


in

gló -- ri -- a

De -- i

Pa -- tris.


A -- men.


}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \cadenzaOn
        {\MusiqueTheme}
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