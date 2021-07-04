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
            - \rehearsal-mark-markup J 6 -1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 7/4
            s1 * 7/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 4/4
            s1 * 1

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
                            fs'1
                            \fff
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            fs'8

                            r8

                            r8

                            fs'8
                            ~

                            fs'2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ~
                            ]

                            fs'2
                            ~

                            fs'8

                            r8

                            r8.

                            fs'16
                            ~

                            fs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ~
                            ]

                            fs'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8.
                            ~
                            ]

                            fs'2
                            ~

                            fs'8.

                            r16

                            r4

                            r8

                            fs'8
                            ~

                            fs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            fs'4

                            fs'2

                            r4

                            r16

                            fs'8.
                            ~

                            fs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            fs'8.

                            r16

                            r4

                            r16

                            fs'8.
                            ~

                            fs'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8.
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            fs'2
                            ~

                            fs'8.

                            r16

                            r4
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
                            r4

                            cs''2.
                            \fff
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            cs''4

                            cs''2
                            ~

                            cs''4

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            r4

                            cs''2

                            cs''2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            cs''4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]

                            cs''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            cs''4

                            r2

                            r16

                            cs''8.
                            ~

                            cs''4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            ~
                            ]

                            cs''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            cs''8.

                            r16

                            r8.

                            cs''16
                            ~

                            cs''4
                            ~

                            cs''2
                            ~

                            cs''16

                            r8.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            r4

                            r16

                            cs''8.
                            ~

                            cs''4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            ~
                            ]

                            cs''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            cs''4
                            ~

                            cs''8.

                            r16

                            r2
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
                            r4

                            r8

                            cs'8
                            \fff
                            ~
                            \boxed-markup "superball + bass drum" 1

                            cs'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            cs'1

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            r4

                            r16

                            cs'8.
                            ~
                            \boxed-markup "superball + tam tam" 1

                            cs'4
                            ~

                            cs'2
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8.
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            cs'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8.
                            ~
                            ]

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            cs'2
                            ~

                            cs'8.

                            r16

                            r8.

                            cs'16
                            ~
                            \boxed-markup "superball + bass drum" 1

                            cs'4
                            ~

                            cs'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ~
                            ]

                            cs'2
                            ~

                            cs'8.

                            r16

                            r4

                            r16

                            cs'8.
                            \boxed-markup "superball + tam tam" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            cs'4
                            ~

                            cs'8.

                            r16

                            r4

                            cs'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            cs'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]

                            cs'2
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
                            r8

                            cs'8
                            \fff
                            ~

                            cs'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            cs'2.

                            r4

                            r8.

                            cs'16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            cs'2.
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ~
                            ]

                            cs'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ~
                            ]

                            cs'4
                            ~

                            cs'8.

                            r16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            r8.

                            cs'16
                            ~

                            cs'2
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8.
                            ~
                            ]

                            cs'4
                            ~

                            cs'4
                            ~

                            cs'8.

                            r16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            r4

                            cs'2
                            ~

                            cs'8

                            r8

                            r8.

                            cs'16
                            ~

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ~
                            ]

                            cs'2
                            ~

                            cs'16

                            r8.

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            r8

                            cs'8
                            ~

                            cs'4
                            ~

                            cs'8

                            r8

                            r4
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
