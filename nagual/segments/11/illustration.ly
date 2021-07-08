%! abjad.LilyPondFile._get_format_pieces()
\version "2.23.2"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{

    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=130
            \once \override Score.BarLine.X-extent = #'(1 . 2)
            \once \override Score.BarLine.thick-thickness = #3
            \bar ":|."
            %! scaling time signatures
            \time 5/4
            \mark \markup \bold {  }
            s1 * 5/4
            - \rehearsal-mark-markup N 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"130"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #8 #13 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            \tempo 4=95
            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "130"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #5.5
            \bacaStartTextSpanMM
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "60"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #5.5
            \bacaStartTextSpanMM

        }

        \tag #'group1
        {

            \context StaffGroup = "Staff Group"
            <<

                \tag #'voice1
                {

                    \context Staff = "Staff 1"
                    {

                        \context Voice = "Voice 1"
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 1]

                            %! applying staff names and clefs
                            \set Staff.shortInstrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #12 "bs. fl." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }
                            \pitchedTrill
                            d'2.
                            \mf
                            \>
                            ~
                            \startTrillSpan fs'

                            d'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            \pitchedTrill
                            cs'2.
                            \stopTrillSpan
                            \startTrillSpan g'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \pitchedTrill
                            ef'2
                            \stopTrillSpan
                            \startTrillSpan e'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            \pitchedTrill
                            af'1
                            \pp
                            \stopTrillSpan
                            \startTrillSpan bf'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            \pitchedTrill
                            f'1
                            \startTrillSpan a'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            \pitchedTrill
                            b'1.
                            \mf
                            \>
                            \startTrillSpan c''

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1.
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 9]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 63/32
                                \p
                                \<
                                \stopTrillSpan
                                [

                                b'16 * 125/64

                                r16 * 121/64

                                bf''16 * 115/64

                                r16 * 27/16

                                c''16 * 101/64

                                bf'16 * 93/64

                                r16 * 43/32

                                r16 * 79/64

                                a'16 * 73/64

                                af'16 * 17/16

                                g''16 * 1

                                r16 * 15/16

                                b'16 * 57/64

                                r16 * 55/64

                                bf''16 * 53/64

                                c''16 * 13/16
                                \f

                                r16 * 51/64

                                \revert Staff.Stem.stemlet-length
                                r16 * 49/64
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4

                            R1 * 3/4

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 11]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                bf'16 * 23/32
                                \p
                                \<
                                [

                                a'16 * 23/32

                                r16 * 3/4

                                af'16 * 25/32

                                r16 * 53/64

                                g''16 * 57/64

                                b'16 * 63/64

                                r16 * 69/64

                                r16 * 77/64

                                bf''16 * 43/32

                                c''16 * 3/2

                                bf'16 * 105/64

                                r16 * 7/4

                                \revert Staff.Stem.stemlet-length
                                a'16 * 29/16
                                \f
                                ]
                                \bar "||"

                            }
                            \revert TupletNumber.text

                        }

                    }

                }

                \tag #'voice2
                {

                    \context Staff = "Staff 2"
                    {

                        \context Voice = "Voice 2"
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 1]

                            %! applying staff names and clefs
                            \set Staff.shortInstrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #12 "gt." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Guitar" }
                            \pitchedTrill
                            c''2.
                            \mf
                            \>
                            ~
                            \startTrillSpan cs''

                            c''2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            \pitchedTrill
                            fs'2.
                            \stopTrillSpan
                            \startTrillSpan bf'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            \pitchedTrill
                            a'2
                            \stopTrillSpan
                            \startTrillSpan b'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            \pitchedTrill
                            e'1
                            \pp
                            \stopTrillSpan
                            \startTrillSpan f'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            \pitchedTrill
                            d'1
                            \startTrillSpan af'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            \pitchedTrill
                            ef'1.
                            \mf
                            \>
                            \startTrillSpan g'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            \pitchedTrill
                            f'1.
                            \stopTrillSpan
                            \startTrillSpan a'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            \pitchedTrill
                            e'1.
                            \pp
                            \stopTrillSpan
                            \startTrillSpan bf'

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 11]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                af'16 * 123/64
                                \p
                                \<
                                \stopTrillSpan
                                [
                                \boxed-markup "pizz + dolce" 1

                                g''16 * 15/8

                                r16 * 7/4

                                b'16 * 51/32

                                r16 * 45/32

                                bf''16 * 5/4

                                c''16 * 71/64

                                r16 * 1

                                r16 * 29/32

                                bf'16 * 27/32

                                a'16 * 51/64

                                af'16 * 25/32
                                \f

                                \revert Staff.Stem.stemlet-length
                                r16 * 49/64
                                ]
                                \bar "||"

                            }
                            \revert TupletNumber.text

                        }

                    }

                }

                \tag #'voice3
                {

                    \context Staff = "Staff 3"
                    {

                        \context Voice = "Voice 3"
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 1]

                            %! applying staff names and clefs
                            \set Staff.shortInstrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #12 "pc." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Percussion" }
                            \clef "percussion"
                            g2.
                            \mf
                            \>
                            ~
                            \startTrillSpan

                            g2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            b2.
                            \stopTrillSpan
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            d'2
                            \stopTrillSpan
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            f'1
                            \pp
                            \stopTrillSpan
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            b1
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            d'1.
                            \mf
                            \>
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 9]

                            f'1.
                            \pp
                            \stopTrillSpan
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/4

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                \staff-line-count 3
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 11]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                c'16 * 23/32
                                \p
                                \<
                                [
                                \boxed-markup "gongs" 1

                                e'16 * 23/32

                                r16 * 3/4

                                a16 * 25/32

                                r16 * 53/64

                                c'16 * 57/64

                                e'16 * 63/64

                                r16 * 69/64

                                r16 * 77/64

                                a16 * 43/32

                                c'16 * 3/2

                                e'16 * 105/64

                                r16 * 7/4

                                \revert Staff.Stem.stemlet-length
                                a16 * 29/16
                                \f
                                ]
                                \bar "||"

                            }
                            \revert TupletNumber.text

                        }

                    }

                }

                \tag #'voice4
                {

                    \context Staff = "Staff 4"
                    {

                        \context Voice = "Voice 4"
                        {
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 1]

                            %! applying staff names and clefs
                            \set Staff.shortInstrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #12 "va." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Viola" }
                            \clef "alto"
                            \pitchedTrill
                            fs2.
                            \mf
                            \>
                            ~
                            \startTrillSpan g

                            fs2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            \pitchedTrill
                            b2.
                            \stopTrillSpan
                            \startTrillSpan cs'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            \pitchedTrill
                            af2
                            \stopTrillSpan
                            \startTrillSpan c'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            \pitchedTrill
                            d'1
                            \pp
                            \stopTrillSpan
                            \startTrillSpan ef'

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 5]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 123/64
                                :32
                                \mf
                                \<
                                \stopTrillSpan
                                [
                                \boxed-markup "flautando + tasto" 1

                                b'16 * 15/8
                                :32

                                r16 * 7/4

                                bf''16 * 51/32
                                :32

                                r16 * 45/32

                                c''16 * 5/4
                                :32

                                bf'16 * 71/64
                                :32

                                r16 * 1

                                r16 * 29/32

                                a'16 * 27/32
                                :32

                                af'16 * 51/64
                                :32

                                g''16 * 25/32
                                :32
                                \f

                                \revert Staff.Stem.stemlet-length
                                r16 * 49/64
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            \pitchedTrill
                            fs'1
                            \sp
                            \startTrillSpan g'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/4

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1.
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 8]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                b16 * 49/64
                                :32
                                \mf
                                \<
                                [

                                bf'16 * 49/64
                                :32

                                r16 * 25/32

                                c'16 * 51/64
                                :32

                                r16 * 13/16

                                bf16 * 27/32
                                :32

                                a16 * 7/8
                                :32

                                r16 * 59/64

                                r16 * 63/64

                                af16 * 67/64
                                :32

                                g'16 * 71/64
                                :32

                                b16 * 77/64
                                :32

                                r16 * 83/64

                                bf'16 * 89/64
                                :32

                                r16 * 3/2

                                c'16 * 103/64
                                :32

                                bf16 * 55/32
                                :32

                                r16 * 115/64

                                r16 * 15/8

                                \revert Staff.Stem.stemlet-length
                                a16 * 61/32
                                :32
                                \f
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4

                            R1 * 3/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4

                            R1 * 3/4

                            \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                {
                                    \new Score
                                    \with
                                    {
                                        \override SpacingSpanner.spacing-increment = 0.5
                                        proportionalNotationDuration = ##f
                                    }
                                    <<
                                        \new RhythmicStaff
                                        \with
                                        {
                                            \remove Time_signature_engraver
                                            \remove Staff_symbol_engraver
                                            \override Stem.direction = #up
                                            \override Stem.length = 5
                                            \override TupletBracket.bracket-visibility = ##t
                                            \override TupletBracket.direction = #up
                                            \override TupletBracket.minimum-length = 4
                                            \override TupletBracket.padding = 1.25
                                            \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                            \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                            \override TupletNumber.font-size = 0
                                            \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                            tupletFullLength = ##t
                                        }
                                        {
                                            c'1
                                        }
                                    >>
                                    \layout
                                    {
                                        indent = 0
                                        ragged-right = ##t
                                    }
                                }
                            \times 1/1
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 11]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                af16 * 123/64
                                :32
                                \p
                                \<
                                [

                                g16 * 15/8
                                :32

                                r16 * 7/4

                                b16 * 51/32
                                :32

                                r16 * 45/32

                                bf16 * 5/4
                                :32

                                c'16 * 71/64
                                :32

                                r16 * 1

                                r16 * 29/32

                                bf16 * 27/32
                                :32

                                a16 * 51/64
                                :32

                                af16 * 25/32
                                :32
                                \f

                                \revert Staff.Stem.stemlet-length
                                r16 * 49/64
                                ]
                                \bar "||"

                            }
                            \revert TupletNumber.text

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}