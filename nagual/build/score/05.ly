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
                            fs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8.
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'16
                            [

                            fs'16

                            fs'16

                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'16
                            [

                            fs'16

                            fs'16

                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ]

                            r2

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                fs'8
                                [

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ~
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'16
                            [

                            fs'16

                            fs'16

                            \revert Staff.Stem.stemlet-length
                            fs'16
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
                                cs''8

                                cs''4.

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''16
                                [

                                cs''16

                                cs''16

                                \revert Staff.Stem.stemlet-length
                                cs''16
                                ]

                            }

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''16
                            [

                            cs''16

                            cs''16

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            ]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''16
                            [

                            cs''16
                            ~

                            cs''16

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''16
                            [

                            cs''16

                            cs''16

                            \revert Staff.Stem.stemlet-length
                            cs''16
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
                                cs'8.
                                [

                                cs'8.

                                cs'8

                                cs'16

                                cs'16

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            cs'16

                            cs'16

                            \revert Staff.Stem.stemlet-length
                            cs'16
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
                                cs'4

                                cs'4

                                cs'4

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8.
                                [

                                cs'16

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8.
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            cs'16

                            cs'16

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            r4

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 3]

                                cs'4
                                ~

                                cs'16

                                cs'4

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'16
                                [

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
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
