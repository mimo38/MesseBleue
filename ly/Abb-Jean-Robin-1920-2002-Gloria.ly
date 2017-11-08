\version "2.18.2"
\language "italiano"

% 
\header {
  title = "Gloria"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key do \minor
  \time 4/4
}
\paper {
 #(include-special-characters)
}
guidon = {\teeny \hide Staff.Stem}
coupe = \bar ""
guidonoff = \undo \guidon

mezzoSopranoVoice = \relative do'' {
  \global
  \dynamicUp
  \cadenzaOn
\guidon sib8-!^\markup{Intonation} sib8 sol8-!
fa8
mib8 fa8-! sol8
fa4 mib4
\bar "||"
\guidonoff
  \cadenzaOff
  sib'4.  sib8 do4 (re) mib2 sib4 do sib lab sol2 mib4. fa8 sol4 sib do2 sib \fermata\bar "||"
s1
mib8(re do sib) lab4 sib8 sib do2 re2 \fermata\bar "||" \break
%\cadenzaOn
s1s8
%\cadenzaOff
%\break
[mib,8 fa] sol lab sib4 (do8) do sib1\fermata 
\cadenzaOn
 \bar "||" sib8-! do8 re8
%28
 mib8-! re8 do8[( re8)]
%29
 do4 sib4
%30
 \bar "'"
%31
 sib8-! sib8
%32
 sol8-! fa8
%33
 mib8-! fa8 sol8
%34
 fa4 mib4
%35
 \bar "||"
 \cadenzaOff
 sol4 (fa) mib sib' sib4. sib8 do4. lab8 sib4 sol \breathe mib' sib [do8 re] 
 \autoBeamOff
 mib re do4. do8 sib1 \fermata
 \autoBeamOn
 \cadenzaOn
 \bar "||"sib8-! sib8 sol8-!
%46
 fa8 mib8-!
%47
 fa8 sol8 sib8-! do8 sib4
%48
 \bar "'"
%49
 do8[( re8)] mib8[( re8)]
%50
 do4 sib4
%51
 \bar "||"
 \cadenzaOff
 sib4 (lab) sol fa8 mib sib'4. sib8 do4 re mib (re8do) re2 \break sib4 fa8 sol lab4 (sol8fa) sol1 \fermata
  s1*3 s8
\break sib4 sib sol8 lab sib4 (do8) re mib4 sib4 \breathe do4. sib8 lab2 sol8 fa sol lab sib4. (do8 re4 mib8) re do2 re2 \fermata
s1*2 s4 s8
mib4 (re8.) re16 mib4 sib do8 (sib lab) sib8 do2 re1 \fermata
  \cadenzaOn
 \bar "||"

 mib8-!
 re8 do8[( sib8)]
 do8[( re8)] do8[( sib8])] sib4
 \bar "||"
\cadenzaOff
mib,4 sib' lab sib do4. do8 sib2 sol4 (sib) mib (re) do2 re \fermata
s1*3
mib2 (sib4 do sib2)(sib8)(lab sol fa mib4 sib' do sib lab2.)(sol8 fa) sol1\fermata\bar "|."}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  \tiny Gló -- ri -- a
in
e -- xcél -- sis
De -- o.
\normalsize
Et in ter -- ra pax ho -- mi -- ni -- bus bo -- ne vo -- lun -- ta -- tis.
  Be -- ne -- di -- ci -- mus te.
  Glo --  _ -- ri -- fi -- ca -- mus te
  Grá -- ti -- as
%28
á -- gi -- mus
%29
ti -- bi
%30
%31
prop -- ter
%32
ma -- gnam
%33
gló -- ri -- am
%34
tu -- am.
Dó -- mi -- ne De -- us Rex cæ -- les -- tis, De -- us Pa -- _  ter om -- ni -- po -- tens.
Dó -- mi -- ne
%46
Fi -- li
%47
u -- ni -- gé -- ni -- te
%48
%49
Ie -- su
%50
Chri -- ste.
Dó -- mi -- ne _ De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris.
Qui tol -- lis pec -- ca -- ta mun -- di, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram.
Quo -- ni -- am tu so -- lus Sanc -- tus.
Tu

so -- lus

Dó -- mi -- nus.
Tu so -- lus al -- tis -- si -- mus, Je -- su Chri -- ste.
A -- men.

}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
  R1 R4.
  sib4. sib8 sib2 sib8 lab sib do re4 mib8do re4 re mib2 r4 sib8 sib mib4 fa mib (fa8 mib) re2 \fermata
   mib8 re8[( do8 sib8)] do4  sib4  \bar "||"
   sol8 (sib mib4) mib re8 do8 sib4 la sib2 \fermata
   \cadenzaOn
    sib8-! sib8 sol8[( fa8 mib8)] fa8[( sol8)] mib4  \bar "||"
    \cadenzaOff
    \break
 mib'4 mib8 mib re (do fa) mib re1 \fermata
 s1*2 s2.
 \cadenzaOff
 sib4 (lab) sol fa sib4. sib8 lab4 (do8) do re4 re8 do \breathe sib4 mib [mib8 sib]
 \autoBeamOff do fa mib4. mib8 re1\fermata
 \autoBeamOn
 s1*2 s4 s8
 sol,4 (do) sib lab8 sol mib4 (fa'8) fa mib4 sib do (re8mib) fa2 sib,8 do re re mib4 (sib4) sib1 \fermata
 s1*3 s8
 sib4 sol sol8 fa fa (sib sol) sol sol (lab) sib4 \breathe mib4. mib8 do (sib do re) mib mib mib mib re (do re mib sib4.) sib8 sib4 (la) sib2 \fermata
 \cadenzaOn
 \bar "||"sib8-!  sib8 sol8-!
%79
 fa8
%80
 mib8-! fa8 sol8
%81
 fa4 mib4
%82
 \bar "'"
%83
 mib8-! fa8 sol8-! sib8
%84
 do4 sib4
%85
\bar "||"
\cadenzaOff
r2  mib4 re8. re16 mib4 do8 do sib4 (la) sib1 \fermata
s1 s4
mib4 mib mib  re do (fa8) mib re2 mib4 (sib) sib2 sib8(la sol la) sib2 \fermata
\cadenzaOn
\bar "||"

 sib8-!

 sib8 sol8[( fa8 mib8)]

 fa8[( sol8)] fa8 mib4

 \bar "'"

 mib8-!

 fa8 sol8-! sib8

 do8-! sib8

 do8[( re8] mib8[ re8)] do4( sib4)  \bar "||"
 \cadenzaOff
 r4 sol8 (sib mib2)(mib8)( re do sib do4 sib)(sib8)( do re4 do8 re mib4)(mib4.) (fa16 mib re8 do sib4) sib1\fermata
}

verseTenorVoice = \lyricmode {
    Et in ter -- ra _ _ _ pax ho  _  -- mi -- ni -- bus bo -- ne vo -- lun -- ta -- tis.
    Lau -- dá -- mus
%16
te.
  Be -- ne -- di -- ci -- mus _ te.
  A -- do -- rá- -- mus
%22
te.
  Glo -- ri -- fi -- ca -- mus te
  Dó -- mi -- ne De -- us Rex cæ -- les -- tis, _ De -- us Pa -- _  ter om -- ni -- po -- tens.
Dó -- mi -- ne _ De -- us, A -- gnus De -- i, Fi -- _  li -- us Pa -- tris.
Qui tol -- lis pec -- ca -- ta mun -- di, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram.
Qui
%78
se -- des
%79
ad
%80
dé -- xte -- ram
%81
Pa -- tris,
%82
%83
mi -- se -- ré -- re
%84
no -- bis.
Quo -- ni -- am tu so -- lus Sanc -- tus.
Tu so -- lus al -- tis -- si -- mus, Je -- su Chri -- ste.
Cum

San -- cto

Spí -- ri -- tu,


in

gló -- ri -- a

De -- i

Pa -- tris.
A -- men.

  }

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
  R1 R4.
  sib'4. sib8 lab2 sol sol4 sol sol fa mib4. (fa8) sol4. fa8 mib4 re do8 (sib lab4)  sib2 \fermata
  s1
  mib8 (sib do4) fa fa8 mib mib4 (fa) sib,2 \fermata 
  s1s8
mib4 mib8 do' sib4 (lab8) lab sib1 \fermata
 s1*2 s2.
mib,2 mib4 mib re8 (do re) sol8 fa4 (lab8) lab sol8 lab sib4 \breathe  sol sol lab lab8 lab [lab fa sol] lab sib1 \fermata
 s1*2 s4 s8
mib,2 mib4 mib re4. re8 do4 sol'  fa2 sib,2 re4 sib8 sib do4 (re) mib1 \fermata
\cadenzaOn
%60
 \bar "||"mib8-!
%61
 fa8 sol8-!
%62
 sib8 do8-! sib8
%63
 do8[( re8] mib8[ re8)] do4( sib4)
%64
 \bar "'"
%65
 sib8-! sib8 sol8[( fa8 mib8)] fa8[( sol8)]
%66
 fa4 mib4
%67
 \bar "||"
 \cadenzaOff
 \autoBeamOn
 \partial 4 sib4 mib mib8mib re4(mib8) re do4 re \breathe do8[re mib] sol fa2 mib8 re do fa sol2 (sib8 ([lab sol])) fa mib4 (fa) sib,2 \fermata
s1*2 s4 s8
mib4 (sib'8.) sib16 mib,4 sol fa8 (sol lab) lab mib4 (fa) sib,1 \fermata
s1 s4
mib4  sol do sib lab4. lab8 sib2 mib,4 (re) do2 fa sib, \fermata
s1*3
mib2 sol4 (lab sol2 fa4. lab8 sol2 lab4 sol do)( do, sib8 do re4) mib1\fermata
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
    Et in ter -- ra pax ho -- mi -- ni -- bus bo -- ne vo -- lun -- ta -- tis.
      Be -- ne -- di -- ci -- mus  te.
  Glo -- ri -- fi -- ca -- mus te
  Dó -- mi -- ne De -- us Rex cæ -- les -- _ tis, _De -- us Pa -- ter om -- ni -- _ _ po -- tens.
  Dó -- mi -- ne  De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris.
  Qui
tol -- lis
pec -- cá -- ta
mun -- di,
mi -- se -- ré -- re
no -- bis.
Qui tol -- lis pec -- ca -- ta mun -- di, sus -- _ _ _ci -- pe de -- pre -- ca -- ti -- o -- nem nos -- tram.
Quo -- ni -- am tu so -- lus Sanc -- tus.
Tu so -- lus al -- tis -- si -- mus, Je -- su Chri -- ste.
A -- _ men.

}


mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "MS"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice }
\addlyrics { \verseMezzoSopranoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Ténor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Basse"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

% \score{<<
%   \PretreVoicePart
%          >>
%   \layout {
% 		  \context {
% 		    \Staff \RemoveEmptyStaves
% 		    \override VerticalAxisGroup #'remove-first = ##t
%   }}
%   \midi {
%     \tempo 4=100
%   }
% }

\score {
  <<
    \mezzoSopranoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout {
		  \context {
		    \Staff \RemoveEmptyStaves
		    \override VerticalAxisGroup #'remove-first = ##t
  }}
  \midi {
    \tempo 4=100
  }
}
