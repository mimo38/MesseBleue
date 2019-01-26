\version "2.18.2"
\language "italiano"

% 
\header {
  title = "Messe de Angelis"
  subtitle = "dite \"Messe bleue\""
  subsubtitle = "Messe à 3 voix mixtes avec alternance de grégorien"
  composer = "Abbé Jean Robin (1920 - 2002)"
  arranger = "Pâques 1949"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key do \minor
  \time 4/4
}
\paper {
 % between-system-space = 10\cm
 #(include-special-characters)
}

mezzoSopranoVoice = \relative do'' {
  \global
  \dynamicUp
  % En avant la musique !
 %\repeat volta 2 {
  mib,2^\markup{\bold {I et III}} sol8 lab8 sib8 do8 sib4 mib (do4.) sib16 lab16
sib4.( sol8 fa8mib8lab8sol8)
fa4. fa8 sol2\fermata %^\markup{ \italic fin} 
\bar "||"
% \alternative{
R1*4
%1
\break
sol8^\markup{\bold {IV et VI}} sol8[( fa8 mib8-! re8] mib4 mib8[ sol8 lab8] sib4 do8[ sib8 lab8] sib4)
%2
 \bar "'"
%3
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
%4
 s2 s8 \bar "||"
%Christe
\break 
\cadenzaOff sol4^\markup{\bold {V}} sol4. (fa8 mib re) mib4 sib'4. (do8 sib lab sol4. fa8 mib4 lab8 sol) fa4. sol16 lab sol2\fermata  \bar "||"
%Kyrie
mib'4 ^\markup{\bold {VII}} re mib (sib do sib8  lab sib4 sol) do4.  (re8 mib mib, lab sol) fa4. fa8 sol2\fermata\bar "||"
R1*4
\break 
\cadenzaOff mib'4 ^\markup{\bold {IX}} re mib sib( do sib8lab )sib4. lab8 sol4 \breathe mib8 (fa sol lab sib4 do4. re8 mib re do sib lab4 sib8 do )sib4. lab8 sol1\fermata
\bar "|."
}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky - _  -- _ -- ri -- e  e -- _ _ _  le -- i -- son
  %1
Chri -- ste
%2
%3
e -- lé -- i -- son.
%4
  Chri -- ste _ e -- le -- i _ -- son.
  Ky -- ri -- e  e -- le -- i -- son.

Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son.
}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
  mib4(re8 do8) sib4. sib8 sol4sib do8 mib (mib4) (mib4.)  
  sib8 do4. (mib8) mib4 (re8) do8  sib2\fermata
R1*4
R1*4
%Christe
sib4 do2. (do8 sib16 lab sib8 do re2) mib8 (re do re mib sib do4) do8 mib re re mib2\fermata
%Kyrie
r4 r4 mib4 re mib2 fa4 (mib8 re do4 fa sib, do) do( re8) do sib2\fermata

 \cadenzaOn mib8-! ^\markup{\bold {VIII}}re8 mib8[( re8 do8-! re8 mib8] sib4 mib8[ sib8] do4 sol8[ lab8] sib4)
 \bar "'"
%11
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4
 s2 s8 \bar "||"
 
 %dernier Kyrie
 r4 r4 mib'4 re mib mib, fa (sib8) sib sib4 \breathe sib \(do (do8) mib mib re do sib sib2 do8 mib re do \)fa4 (re8) re sib1\fermata
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
   Ky -- _ ri -- e  e -- _ _ _ _  le -- i -- son
  Chri -- ste e -- le -- _ _ i -- son.
  Ky -- ri -- e e -- le -- i -- son.
  Ký -- ri -- e
%10
%11
e -- lé -- i -- son.
Ky -- ri -- e, e -- le -- i -- son,  e -- _  _ _ _ __ _ _ _  _ _ _ _ le -- i -- son.
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
  mib2. (re8) re8 mib4 sol8 fa mib re lab'4 sol8(fa sol4 lab8 sol fa sol16 lab16) sib4 (sib,8) sib mib2\fermata  \bar "||"

%gregorien
%1
\break
 \cadenzaOn mib8^\markup{\bold {II}} sol8[( lab8 sib8])] sib4( do8[ sib8 lab8] sib4 mib8[ do8 sib8-! lab8 sib8 do8] sib4)
%2
 \bar "'"
%3
 sib8[( sol8 fa8-! mib8 lab8 sol8)] fa8-! fa8 mib4 \bar "||"
%4
 s4 s8
%\bar ":|."
R1*4

%Christe
mib4 mib8 (do16 re mib8 re do sib
do4) sol'2 (fa4 mib2 sol4 fa8 mib) lab sol fa fa mib2\fermata
%Kyrie
mib4 sib' mib, sol do,2 re4 (mib lab2 sol4 fa8 sol) lab4 (sib8) sib mib,2\fermata
R1*4
mib4 sib' mib, sol do,2 re4. re8 mib fa \breathe sol4 (mib sol lab2 sol fa4. mib8 )re4 (sib8) sib mib1\fermata
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky -- ri -- e e -- _  _  _ _  _ le -- i -- son
  %1
Ky -- ri -- e
_e -- lé -- i -- son.
%4
  Chri -- ste  e -- le -- _ _ i -- son.
Ky -- ri -- e _ _ e -- le -- i -- son.
Ky -- ri -- e e -- _ le -- i -- son, _ e -- le -- i -- son
}

mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "MS"
  shortInstrumentName = "MS"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice }
\addlyrics { \verseMezzoSopranoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Ténor"
   shortInstrumentName = "T."
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Basse"
   shortInstrumentName = "B."
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

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
