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
 mib,2 sol8 lab8 sib8 do8 sib4 mib do4. sib16 lab16
sib4. sol8 fa8mib8lab8sol8
fa4. fa8 sol2 \fermata
%\tiny \hide Staff.Stem 
\guidon mib4  

}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky - _  -- _ -- ri -- e  e -- _ _ _ _ _ _ _  _ _  le -- i -- son
}

tenorVoice = \relative do' {
  \global
  \dynamicUp
  % En avant la musique !
  mib4re8 do8 sib4. sib8 sol4sib do8 (mib mib4 mib4.)  
  sib8 do4. mib8 mib4 re8 do8  sib2\fermata \guidon mib,4
}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
   Ky - _  -- _ -- ri -- e  e -- _ _ _ _  le -- _ -- i -- son
}

bassVoice = \relative do {
  \global
  \dynamicUp
  % En avant la musique !
  mib2. re8 re8 mib4 sol8 fa mib re lab'4 sol8fa sol4 lab8 sol fa sol16 lab16 sib4 sib,8 sib mib2\fermata \guidon mib4
}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
  Ky -- _ ri -- e e -- _ _ _ _ _ _ _ _ _ _ _  _ le -- _ i -- son
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
