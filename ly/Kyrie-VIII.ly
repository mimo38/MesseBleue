\version "2.18"
\language "italiano"

\header {
  title = "kyrieVIII"
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
}

MusiqueTheme = \relative do' {
 \key sib \minor
%1
 mib8 sol8[( lab8 sib8])] sib4( do8[ sib8 lab8] sib4 mib8[ do8 sib8-! lab8 sib8 do8] sib4)
%2
 \bar "'"
%3
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
%4
 \bar "||"
%5
 sol8 sol8[( fa8 mib8-! re8] mib4 mib8[ sol8 lab8] sib4 do8[ sib8 lab8] sib4)
%6
 \bar "'"
%7
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
%8
 \bar "||"
%9
 mib'8-! re8 mib8[( re8 do8-! re8 mib8] sib4 mib8[ sib8] do4 sol8[ lab8] sib4)
%10
 \bar "'"
%11
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
%12
 \bar "||"
%13
 mib'8-! re8 mib8[( re8 do8-! re8 mib8] sib4)
%14
 \bar "'"
%15
 mib8[( re8 mib8 re8 do8-! re8 mib8] sib4 mib8[ sib8] do4 sol8[ lab8] sib4)
%16
 \bar "'"
%17
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
%18
 \bar "||"
}

Paroles = \lyricmode {
%1
KY -- ri -- e
%2
%3
&zwj;*__e -- lé -- i -- son.
%4
%5
iij._Chri -- ste
%6
%7
e -- lé -- i -- son.
%8
%9
iij._Ký -- ri -- e
%10
%11
e -- lé -- i -- son.
%12
%13
ij._Ký -- ri -- e
%14
%15
&zwj;*__
%16
%17
&zwj;*&zwj;*__e -- lé -- i -- son.
%18

}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \cadenzaOn \transpose sib, solb, {\MusiqueTheme}
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