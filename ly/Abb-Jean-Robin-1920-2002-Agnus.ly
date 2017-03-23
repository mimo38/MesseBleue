\version "2.18.2"
\language "italiano"

\header {
  % Supprimer le pied de page par défaut
  title = "Agnus Dei"

  % Supprimer le pied de page par défaut tagline = ##f
}

\paper {
 #(include-special-characters)
}

global = {
  \key mi \minor
  \time 4/4
  \autoBeamOff
}

mezzoSopranoVoice = \relative do'' {
  \global
  \dynamicUp
  % En avant la musique !
  \autoBeamOff
  si2 (mi4) re do (si8 [la]) si4 \breathe sol do do8 si la4 (si8) do re4. do8 si2\breathe mi4. re8 do4 si la4. (si16 [do]) si2 \fermata 

 \break sol8 si8[( re8)]

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
}

verseOneMezzoSopranoVoice = \lyricmode {
  \set stanza = "1."
  % Ajouter ici des paroles.
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- _ di, Mi -- se -- re -- re no -- bis.
 \markup{ \bold {2.}A} -- gnus

De --" i, *"


__qui

tol -- lis

pec -- cá -- ta

mun -- di_:


mi -- se -- ré -- re

no -- bis.
}

verseTwoMezzoSopranoVoice = \lyricmode {
  \set stanza = "3."
  % Ajouter ici des paroles.
  %_ _ _ _ _  _ _  _ _ _ _ _ _ 
   A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- _ di,
   do -- na no -- bis pa -- cem.
}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
  re2 (do4) si mi (re8 [do]) re4 \breathe si8 [la] sol4 do8 do do [si] la4 la (re) re2\breathe do4 si4. la8 sol4 sol8 ([fad16 mi] fad4) sol2\fermata
}

verseOneTenorVoice = \lyricmode {
  \set stanza = "1."
  % Ajouter ici des paroles.
    A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di, Mi -- se -- re -- re no -- bis.
}

verseTwoTenorVoice = \lyricmode {
  \set stanza = "3."
  % Ajouter ici des paroles.
  %_ _ _ _ _ _  _ _  _ _ _ _ _ _
   A -- gnus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na no -- bis pa -- cem.
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
  sol'2. sol4 sol2 sol4 \breathe fa mi mi8 mi fa4 fa fad2 sol\breathe 
  do,4 do re mi8 [re] do4 (re) sol,2 \fermata
}

verseOneBassVoice = \lyricmode {
  \set stanza = "1."
  % Ajouter ici des paroles.
      A -- gnus De -- i, qui  tol -- lis pec -- ca --  ta mun -- di, Mi -- se -- re -- re no -- bis.
}

verseTwoBassVoice = \lyricmode {
  \set stanza = "3."
  % Ajouter ici des paroles.
  %  _ _ _ _ _ _  _ _  _ _ _ _ 
  A -- gnus De -- i, qui  tol -- lis pec -- ca --  ta mun -- di,
  do -- na no -- bis pa -- cem.
}

mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "MS"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice }
\addlyrics { \verseOneMezzoSopranoVoice }
\addlyrics { \verseTwoMezzoSopranoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Ténor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseOneTenorVoice }
\addlyrics { \verseTwoTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Basse"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseOneBassVoice }
\addlyrics { \verseTwoBassVoice }

\score {
  <<
    \mezzoSopranoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout {
      \context {\Staff \RemoveEmptyStaves
  \override VerticalAxisGroup #'remove-first = ##t }}
  \midi {
    \tempo 4=100
  }
}
