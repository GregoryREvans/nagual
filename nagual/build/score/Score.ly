\version "2.19.84"  %! LilyPondFile
\language "english" %! LilyPondFile

\include "../score_stylesheet.ily"                                      %! LilyPondFile
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily" %! LilyPondFile

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
	{
        \include "01.ly"
        \include "02.ly"
        \include "03.ly"
        \include "04.ly"
	}
%\midi{}
}
