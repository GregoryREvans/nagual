\version "2.19.84"
\language "english"
% preferred style
#(set-default-paper-size "arch a")
#(set-global-staff-size 9) % was 8
% alt style 1
%{ #(set-default-paper-size "17x11")
#(set-global-staff-size 13) %}
% alt style 2
%{ #(set-default-paper-size "11x17")
#(set-global-staff-size 13) %}

\include "/Users/evansdsg2/evans/lilypond/evans-markups.ily"
\include "/Users/evansdsg2/evans/lilypond/evans-spanners.ily"
\include "../../lib.ily"

\header {
	tagline = ##f
	breakbefore = ##t
	dedication = \markup \override #'(font-name . "Bell MT Std") \fontsize #5.4 \center-column {"t o   E n s e m b l e   D a l   N i e n t e" \fontsize #3.4 \with-color #white "."}
	title =  \markup \center-column {
        %{ \center-align { %}
            \override #'(font-name . "Bell MT Std")
            \fontsize #16
            \line {
                \concat {
                N
                \hspace #1
                A
                \hspace #1
                G
                \hspace #1
                U
                \hspace #1
                A
                \hspace #1
                L
                \hspace #1
                }
            }
            " "
            \override #'(font-name . "Bell MT Std Italic")
            \fontsize #3
            \line {
                for \hspace #0.75
                Flute, \hspace #0.75
                Guitar, \hspace #0.75
                Percussion, \hspace #0.75
                & \hspace #0.75
                Violin
            }
        %{ } %}
    }
	%subtitle = \markup \center-column { \with-color #white "." \override #'(font-name . "Bell MT Std") \fontsize #5.27 "or, earth eats the sun" }
	%subsubtitle = \markup \center-column { \with-color #white "." \override #'(font-name . "Bell MT Std") \fontsize #2.27 "for Flute, Guitar, Percussion, & Violin" }
	composer = \markup \override #'(font-name . "Bell MT Std") \fontsize #5 {"Gregory Rowland Evans (*1995)"}
	tagline = \markup { "" }
}

\layout {
    %{ \accidentalStyle dodecaphonic %}
	\accidentalStyle forget
	indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
	\context {
        \name TimeSignatureContext
        \type Engraver_group
        %{ \numericTimeSignature %}
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
		\override BarNumber.Y-extent = ##f
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . -4)
        \override BarNumber.font-size = 1
		\override BarNumber.padding = 4
		\override BarNumber.font-name = "Bell MT Std"
		\override MetronomeMark.stencil = ##f
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.5
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "Bell MT Std"
		\override RehearsalMark.font-size = 3
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
		\override TextScript.font-size = 6
        \override TextSpanner.font-size = 6

		\override TimeSignature.X-extent = ##f
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3 % was 5 for STIXGeneral
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered

		%{ \override TimeSignature.padding = #7 %}
        %{ \override TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self %}
        %{ \override TimeSignature.Y-extent = #'(0 . 0) %}
		%{ \override TimeSignature.font-name = "Bell MT Std" %}
        %{ \override TimeSignature.self-alignment-X = #center %}
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 13) (minimum-distance . 13) (padding . 4) (stretchability . 0))
    }
	\context {
		\Score
		\remove Metronome_mark_engraver
		\remove Bar_number_engraver
		\remove Mark_engraver
		\accepts TimeSignatureContext
		\override Accidental.X-extent = ##f % experimental
		\override BarLine.bar-extent = #'(-2 . 2)
		%{ \override BarLine.hair-thickness = #0.9 %}
		\override BarLine.hair-thickness = 0.5
		\override BarLine.X-extent = #'(0 . 0)
		\override BarLine.thick-thickness = #8
		\override Beam.breakable = ##t
		\override Beam.damping = 99
		%{ \override Beam.concaveness = #10000 %}
		\override Clef.whiteout-style = #'outline
		\override Clef.whiteout = 1
		\override DynamicText.font-size = #-2
		\override DynamicLineSpanner.staff-padding = 5 %was 4.5
		\override Glissando.breakable = ##t
		\override Glissando.thickness = #3 %was 1.8
		\override Hairpin.to-barline = ##f
		\override Staff.thickness = #0.5
		\override MetronomeMark.font-size = 3
		\override NoteCollision.merge-differently-dotted = ##t % experimental
		\override NoteColumn.ignore-collision = ##t
		\shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
		\override RepeatTie.X-extent = ##f
		%{ \override SpacingSpanner.strict-grace-spacing = ##t
		\override SpacingSpanner.strict-note-spacing = ##t
		\override SpacingSpanner.uniform-stretching = ##t %}
		\override SpacingSpanner.strict-grace-spacing = ##t % trevor
		\override SpacingSpanner.strict-note-spacing = ##t % trevor
		\override SpacingSpanner.uniform-stretching = ##t % trevor
		\override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (minimum-distance . 23) (padding . 0))
		%{ \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 11) (minimum-distance . 11) (padding . 2)) %}
		\override Stem.stemlet-length = #1.15
		\override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5

		\override Tie.stencil = #flare-tie % experimental
		\override Tie.height-limit = 6 % experimental
		\override Tie.thickness = 1.5 % experimental

		\override TupletBracket.breakable = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2 % was 1.55
        \override TupletNumber.font-size = 1 % was 0.5

		\override TupletBracket.bracket-visibility = ##t
		%{ \override TupletBracket.minimum-length = #3 %}
		%{ \override TupletBracket.staff-padding = #1.55 %}
		%{ \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods %}
		\override TupletBracket.direction = #down
		\override TupletNumber.text = #tuplet-number::calc-fraction-text
		autoBeaming = ##f
		proportionalNotationDuration = #(ly:make-moment 1 17) % maybe 15? system breaks?
		barNumberFormatter = #oval-bar-numbers
		tupletFullLength = ##t
	}
	\context {
		\Voice
		\remove Forbid_line_break_engraver
		\override Accidental.font-size = 1
	}
	\context {
		\Staff
		\numericTimeSignature
		\remove Time_signature_engraver
		%{ \override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t
		\override TimeSignature.whiteout = 2 %}
		fontSize = #-1
		explicitClefVisibility = #end-of-line-invisible
	}
	\context {
		\RhythmicStaff
		\remove Time_signature_engraver
	}


}

\paper {
	system-separator-markup = \markup { \slashSeparator }

	%{ indent = 20\mm %}
    %{ short-indent = 15\mm %}
    %{ bottom-margin = 10\mm %}
    left-margin = 20\mm
    right-margin = 15\mm
    %{ top-margin = 10\mm %}

	oddHeaderMarkup = \markup ""
	evenHeaderMarkup = \markup ""
	oddFooterMarkup = \markup
        \on-the-fly #print-page-number-check-first
        \fill-line {
            \bold
            \fontsize #3
            \override #'(font-name . "Bell MT Std")
            \concat {
                \override #'(font-name . "Bell MT Std Italic")
                Nagual
                \hspace #3
                —
                \hspace #3
                \on-the-fly #print-page-number-check-first
                \fromproperty #'page:page-number-string
                \hspace #3
                —
                \hspace #3
                GR
				\hspace #1
				Evans
            }
    }
    evenFooterMarkup = \oddFooterMarkup
	print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    right-margin = 5\mm
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 60)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 30) % space after each system
        (padding . 0)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 18)
        (padding . 0)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 26)
        (padding . 0)
        (stretchability . 0)
    )
    top-margin = 0\mm
}
