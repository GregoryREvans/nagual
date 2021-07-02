\version "2.23.2"  %! LilyPondFile
\language "english" %! LilyPondFile

\include "../../../lib.ily"
\include "../../score_stylesheet.ily"                                      %! LilyPondFile
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily" %! LilyPondFile

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
	\removeWithTag #'(voice2 voice3 voice4)
	{
        \include "../../score/01.ly"
        \include "../../score/02.ly"
        \include "../../score/03.ly"
        \include "../../score/04.ly"
        \include "../../score/05.ly"
        \include "../../score/06.ly"
        \include "../../score/07.ly"
        \include "../../score/08.ly"
        \include "../../score/09.ly"
        \include "../../score/10.ly"
        \include "../../score/11.ly"
        \include "../../score/12.ly"
	}
%\midi{}
}