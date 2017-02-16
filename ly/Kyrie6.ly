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
mib4 re mib sib( do sib8lab )sib4. lab8 sol4 \breathe mib8 (fa sol lab sib4 do4. re8 mib re do sib lab4 sib8 do )sib4. lab8 sol1\fermata
%\tiny \hide Staff.Stem 
% \guidon mib'8  
}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son.
}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
 r4 r4 mib4 re mib mib, fa (sib8) sib sib4 \breathe sib \(do (do8) mib mib re do sib sib2 do8 mib re do \)fa4 (re8) re sib1\fermata
 % \guidon mib8
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
Ky -- ri -- e, e -- le -- i -- son,  e -- _  _ _ _ __ _ _ _  _ _ _ _ le -- i -- son.
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
mib4 sib' mib, sol do,2 re4. re8 mib fa \breathe sol4 (mib sol lab2 sol fa4. mib8 )re4 (sib8) sib mib1\fermata
\bar "|."
%\guidon mib'8
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
Ky -- ri -- e e -- _ le -- i -- son, _ e -- le -- i -- son
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
