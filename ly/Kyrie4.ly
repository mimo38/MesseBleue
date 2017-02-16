\version "2.18.2"
\language "italiano"

% 
%\header {
 % title = "Messe de Angelis"
 % subtitle = "Messe à 3 voix mixtes avec alternance de grégorien"
  %composer = "Abbé Jean Robin († 2002)"
 % arranger = "Pâques 1949"
%  % Supprimer le pied de page par défaut
%  tagline = ##f
%}

global = {
  \key do \minor
  \time 4/4
}

\paper {
 #(include-special-characters)
}
guidon = {\teeny \hide Staff.Stem}

                          custosNote =
                            #(define-music-function
                            (parser location note)
                            (ly:music?)
                            #{
                            \tweak NoteHead.stencil #ly:text-interface::print
                            \tweak NoteHead.text
                            \markup
                            \musicglyph  #"custodes.vaticana.d2"
                            \tweak Stem.stencil ##f
                            #note
                            #})

\paper {
 #(include-special-characters)
}
mezzoSopranoVoice = \relative do'' {
  \global
  \dynamicUp
  % En avant la musique !
mib4 re mib (sib do sib8  lab sib4 sol) do4.  (re8 mib mib, lab sol) fa4. fa8 sol2\fermata

%\tiny \hide Staff.Stem 
 \guidon mib'8  

}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky -- ri -- e  e -- le -- i -- son.
}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
r4 r4 mib4 re mib2 fa4 (mib8 re do4 fa sib, do) do( re8) do sib2\fermata
  \guidon mib8
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky -- ri -- e e -- le -- i -- son.
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
mib4 sib' mib, sol do,2 re4~ (mib lab2 sol4 fa8 sol) lab4 (sib8) sib mib,2\fermata

\guidon mib'8
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
Ky -- ri -- e _ _ e -- le -- i -- son.
}

mezzoSopranoVoicePart = \new Staff \with {
%   instrumentName = "MS"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice }
\addlyrics { \verseMezzoSopranoVoice }

tenorVoicePart = \new Staff \with {
%   instrumentName = "Ténor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
 %  instrumentName = "Basse"
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
                indent=0\mm % supprime l'espace des noms d'instrument
		  \context {
		    \Staff \RemoveEmptyStaves
		    \override VerticalAxisGroup #'remove-first = ##t
  }}
  \midi {
    \tempo 4=100
  }
}
