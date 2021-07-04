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

            \tempo 4=120
            %! scaling time signatures
            \time 4/4
            \mark \markup \bold {  }
            s1 * 1
            - \rehearsal-mark-markup F 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"120"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #1 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2

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
                            \markup { \hcenter-in #12 "alt. fl." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Alto Flute" }
                            \override Staff.Stem.stemlet-length = 0.75
                            f'16
                            \pp
                            [

                            \revert Staff.Stem.stemlet-length
                            f'8.
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'16
                            [

                            f'16
                            - \espressivo

                            f'16

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            f'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'16
                            [

                            f'16
                            - \espressivo

                            f'16

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]

                            r2

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                f'8
                                [

                                f'8

                                \revert Staff.Stem.stemlet-length
                                f'8
                                ~
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'8
                            [

                            \revert Staff.Stem.stemlet-length
                            f'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'16
                            [

                            f'16
                            - \espressivo

                            f'16

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]
                            \bar "||"

                        }

                    }

                }

                \tag #'voice2
                {

                    \context Staff = "Staff 2"
                    {

                        \context Voice = "Voice 2"
                        {

                            \times 2/3
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
                                c''8
                                \pp

                                c''4.

                                \override Staff.Stem.stemlet-length = 0.75
                                c''16
                                [

                                c''16
                                - \espressivo

                                c''16

                                \revert Staff.Stem.stemlet-length
                                c''16
                                ]

                            }

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            [

                            \revert Staff.Stem.stemlet-length
                            c''8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c''16
                            [

                            c''16
                            - \espressivo

                            c''16

                            \revert Staff.Stem.stemlet-length
                            c''16
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            [

                            \revert Staff.Stem.stemlet-length
                            c''8
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            c''16
                            [

                            c''16
                            ~

                            c''16

                            \revert Staff.Stem.stemlet-length
                            c''16
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c''16
                            [

                            c''16
                            - \espressivo

                            c''16

                            \revert Staff.Stem.stemlet-length
                            c''16
                            ]
                            \bar "||"

                        }

                    }

                }

                \tag #'voice3
                {

                    \context Staff = "Staff 3"
                    {

                        \context Voice = "Voice 3"
                        {

                            \times 2/3
                            {
                                \staff-line-count 1
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
                                \override Staff.Stem.stemlet-length = 0.75
                                c'8.
                                \pp
                                [
                                \boxed-markup "brushes + bass drum" 1

                                c'8.

                                c'8

                                c'16

                                c'16
                                - \espressivo

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16
                            - \espressivo

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            \bar "||"

                        }

                    }

                }

                \tag #'voice4
                {

                    \context Staff = "Staff 4"
                    {

                        \context Voice = "Voice 4"
                        {

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 1]

                                %! applying staff names and clefs
                                \set Staff.shortInstrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #12 "vn." }
                                %! applying staff names and clefs
                                \set Staff.instrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #14 "Violin" }
                                c'4
                                \pp

                                c'4

                                c'4

                                \override Staff.Stem.stemlet-length = 0.75
                                c'8.
                                [

                                c'16
                                - \espressivo

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8.
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16
                            - \espressivo

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            r4

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 3]

                                c'4
                                ~

                                c'16

                                c'4

                                \override Staff.Stem.stemlet-length = 0.75
                                c'16
                                - \espressivo
                                [

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]
                                \bar "||"

                            }

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}