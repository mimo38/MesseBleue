\version "2.18.2"
\language "italiano"

% 
\header {
 title = "Sanctus"

  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key fa \major
  \time 4/4
}
\paper {
 #(include-special-characters)
}

mezzoSopranoVoice = \relative do' {
  \global
  \dynamicUp
  \cadenzaOn
  % En avant la musique !
   fa8[( sol8] la8[ fa8] sol8[ sol8 \tiny fa8)] \normalsize fa4
%2
 \bar "'"
%3
 fa8[( \tiny mi8)] \normalsize re4( do4)
%4
 \bar "'"
%5
 fa8[( sol8 la8] do8[ la8 la8 sol8 fa8)] sol4( fa4)
%6
 \bar "'"
%7
 fa8[( la8] do8[ sib8 do8)] sib8[( la8)] la4
%8
 do8 sib8[( la8)]
%9
 sol8[( fa8] sol8[ la8 fa8 fa8 re8-! do8] fa8[ sol8 la8] do8[ la8 la8 sol8 fa8)] sol8[( fa8)] fa4 \bar "|"
 \break
 \cadenzaOff
 %\key fa \major
\bar "||" do'2 do4 sib la8 sol fa4. sol8 la sib do2 re4 do8 sib la2 sol2 \fermata \break
 \partial 4 do4 do la8 sib do la re4 re re8 do sib4 fa'8 fa fa4 mi8 re mi2 fa1\fermata
 \bar "||"
 \break
 \cadenzaOn
 fa,8 la8[( do8)] do8[( la8 sol8-! do8)] do4

 do8[( re8)]

 re8[( do8 sib8-! do8)] sib4( la4)

 \bar "'"

 la8-!

 la8 fa8-! la8

 do8[( do8 re8)] do8 do4

 \bar "||"
\break \cadenzaOff
 \partial 4 do4 do la8 sib do la re4 re re8 do sib4 fa'8 fa fa4 mi8 re mi2 fa1\fermata
\bar "|."}

verseMezzoSopranoVoice = \lyricmode {
  Sanc -- tus,*  Sanc -- tus, Sanc -- tus, Dó -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt Cæ -- _  li et ter -- _ ra glo -- ri -- a tu -- a.
  Ho -- san -- _ _ _ _ na! Ho -- san -- _ na in ex -- cel -- _ _ _ sis!
  Be -- ne -- dí -- ctus qui ve -- nit in

nó -- mi -- ne

Dó -- mi -- ni.
  Ho -- san -- _ _ _ _ na! Ho -- san -- _ na in ex -- cel -- _ _ _ sis!

}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
s1*7 s4 s8
%\key fa \major
do2 la4 do do8sib la4. sol8 fa fa' mi4 (fa) re mi8 mi fa mi do re mi2 \fermata \break
r4 r4 fa fa re8 mi fa re sib do re sib la4 re8 re sol,2 (do4) la1 \fermata
s1*3 s2 s8
r4 r4 fa' fa re8 mi fa re sib do re sib la4 re8 re sol,2 (do4) la1 \fermata
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ple -- ni sunt Cæ -- _  li et ter -- _ ra glo -- ri -- a tu -- _ _ _ a.
  Ho -- san -- _ _ _ _ _ _ _ _ nah in ex -- cel -- sis!
  Ho -- san -- _ _ _ _ _ _ _ _ nah in ex -- cel -- sis!
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
s1*7 s4 s8
do2 fa4 mi fa fa8 mi re4 re (do8 sib) la4 sib do8 do fa2 do2 \fermata
\autoBeamOff
r4 r  r r sib' sib sol8 [la] sib [sol] re do sib2 (do) fa1\fermata
s1*3 s2 s8
r4 r  r r sib sib sol8 [la] sib [sol] re do sib2 (do) fa1\fermata

}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
Ple -- ni sunt Cæ -- li _ et ter -- ra glo -- ri -- a tu -- a.
Ho -- san -- _ nah in ex -- cel -- sis!
Ho -- san -- _ nah in ex -- cel -- sis!
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
