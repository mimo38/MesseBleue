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
sol4 sol4. (fa8 mib re) mib4 sib'4. (do8 sib lab sol4. fa8 mib4 lab8 sol) fa4. sol16 lab sol2\fermata  \bar "||"

%\tiny \hide Staff.Stem 
 \guidon sol4  

}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
 Chri -- ste _ e -- le -- i _ -- son.}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
 sib4 do2. (do8 sib16 lab sib8 do re2) mib8 (re do re mib sib do4) do8 mib re re mib2\fermata
  \guidon sol,4
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
  Chri -- ste e -- le -- _ _ i -- son.
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
  mib4 mib8 (do16 re mib8 re do sib
do4) sol'2 (fa4 mib2 sol4 fa8 mib) lab sol fa fa mib2\fermata
\guidon sol4
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
  Chri -- ste  e -- le -- _ _ i -- son.
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
