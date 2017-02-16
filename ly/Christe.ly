\version "2.18.2"

% 
% \header {
%   title = "Messe de Angelis"
%   subtitle = "Messe à 3 voix mixtes avec alternance de grégorien"
%   composer = "Abbé Jean Robin († 2002)"
%   arranger = "Pâques 1949"
%   % Supprimer le pied de page par défaut
%   tagline = ##f
% }

global = {
  \key c \minor
  \time 4/4
}
\paper {
 #(include-special-characters)
}

mezzoSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % En avant la musique !
g g4. f8 es8 d8 es4 bes'4. c8 bes aes g4. f8 es4 aes8g  f4. g16 aes g2
}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
Chri -- ste  _ _ _ _ e -- _ _ _ _ _ _ _ _ le -- i -- _ son.}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique !
  bes4 c2. c8 bes16 aes bes8 c d2
  es8 d c d es bes c4
  c8 es d d es2
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
Chri -- ste _ _ _ _ _ _ e -- _ _ _ _ _ _ le -- _ _ i -- son.}

bassVoice = \relative c {
  \global
  \dynamicUp
  % En avant la musique !
  es4 es8 c16 d es8 d c bes c4 g'2 f4 es2 g4 f8es aes g f f es2
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
Chri -- ste _ _ _ _ _ _ _ e -- _ _ _ _ _ le -- _ _ i -- son.}

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
