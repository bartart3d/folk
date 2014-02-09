\version "2.18.0"
\paper {
  #(define top-margin (* 2.5 cm))
  #(define bottom-margin (* 2.5 cm))
  #(define left-margin (* 2 cm))
  #(define right-margin (* 2 cm))
}
\header {
  title = "Schottis efter Ernst Lundström"
  subsubtitle = "Zweden - Sävast, Norrbotten"
  % Standaard LilyPond-tagline verwijderen
  tagline = ##f
}

global = {
  \key a \major
  \time 2/4
}

chordNames = \chordmode {
  \global
  a4 d | a2 | e:7 | a4 d | a d | a2 | e:7 | a
  a4 d | a2 | e:7 | a4 d | a d | a2 e:7 a 
  fis2:m | a | e | b:7 | fis2:m | a | e2 | fis:m
}
MelodyA = \relative a' {
  \global
  \repeat volta 2 {
   a8 cis16 e a,8 cis16 fis | a,8 cis16 e fis e cis e | e,8 gis16 b d8 cis16 b | a8 cis16 e fis8 e | a,8 cis16 e a,8 d16 fis | a,8 cis16 e fis e cis e | e,8 gis16 b d8 cis16 b | a16. cis32 e16 cis a4  
  } \break
  \repeat volta 2 {
   a'16. a32 a16 cis, e fis e cis | e fis e cis a8 cis16 fis | e,8 gis16 b d8 cis16 b | a8 cis16 e fis8 e | a16. a32 a16 cis, e fis e cis | e16 fis e cis a8 cis16 fis | e,8 gis16 b d8 cis16 b | a16 cis e cis a4
  } \break
  \repeat volta 2 {
   a16 b a gis fis8 fis16 gis | a gis a b cis8 cis | b8 gis16 gis gis b a gis | <fis b>8 <fis b>8 <fis b>4 | a16 b a gis fis8 fis16 gis | a gis a b cis8 cis | b8 gis16 gis gis b a gis | <a, fis'>8 <a fis'> <a fis'>4 
  }
}


chordsPart = \new ChordNames \chordNames


\score {
  
  <<
    \chordsPart
    \MelodyA
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
\markup {
 Chords modified by Bart Deruyter 
}