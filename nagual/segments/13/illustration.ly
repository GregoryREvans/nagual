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
                            b''1
                            \sfp
                            \<
                            \boxed-markup "normale" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            ef'''8
                            <>
                            \fff

                            r8

                            r8

                            f'''8
                            \sfp
                            \<
                            ~

                            f'''2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'''8
                            [

                            \revert Staff.Stem.stemlet-length
                            b''8
                            ~
                            ]

                            b''2
                            ~

                            b''8
                            <>
                            \fff

                            r8

                            r8.

                            g''16
                            \sfp
                            \<
                            ~

                            g''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            \override Staff.Stem.stemlet-length = 0.75
                            af''8.
                            [

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ~
                            ]

                            a''2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'''16
                            [

                            \revert Staff.Stem.stemlet-length
                            f'''8.
                            ~
                            ]

                            f'''2
                            ~

                            f'''8.
                            <>
                            \fff

                            r16

                            r4

                            r8

                            a'''8
                            \sfp
                            \<
                            ~

                            a'''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            ef'''4

                            df'''2
                            <>
                            \fff

                            r4

                            r16

                            fs'''8.
                            \sfp
                            \<
                            ~

                            fs'''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            e'''8.
                            <>
                            \fff

                            r16

                            r4

                            r16

                            f'''8.
                            \sfp
                            \<
                            ~

                            f'''4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            f'''16
                            [

                            \revert Staff.Stem.stemlet-length
                            af'''8.
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            fs'''2
                            ~

                            fs'''8.
                            <>
                            \fff

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

                            g'2.
                            :32
                            \sfp
                            \<
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            af'4
                            :32

                            b'2
                            :32
                            ~

                            b'4
                            :32
                            <>
                            \fff

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            r4

                            a'2
                            :32
                            \sfp
                            \<

                            e'2.
                            :32
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            f'4
                            :32
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            f'8
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            :32
                            ~
                            ]

                            fs'4
                            :32
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            b'4
                            :32
                            <>
                            \fff

                            r2

                            r16

                            ef''8.
                            :32
                            \sfp
                            \<
                            ~

                            ef''4
                            :32
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            ef''8.
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            c''16
                            :32
                            ~
                            ]

                            c''4
                            :32
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            ef''8.
                            :32
                            <>
                            \fff

                            r16

                            r8.

                            a'16
                            :32
                            \sfp
                            \<
                            ~

                            a'4
                            :32
                            ~

                            a'2
                            :32
                            ~

                            a'16
                            :32
                            <>
                            \fff

                            r8.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            r4

                            r16

                            d''8.
                            :32
                            \sfp
                            \<
                            ~

                            d''4
                            :32
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            d''8.
                            :32
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''16
                            :32
                            ~
                            ]

                            cs''4
                            :32
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            d''4
                            :32
                            ~

                            d''8.
                            :32
                            <>
                            \fff

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

                            c'8
                            \sfp
                            \<
                            ~
                            \boxed-markup "superball + bass drum" 1

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            c'1
                            <>
                            \fff

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            r4

                            r16

                            c'8.
                            \sfp
                            \<
                            ~
                            \boxed-markup "superball + tam tam" 1

                            c'4
                            ~

                            c'2
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8.
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8.
                            ~
                            ]

                            c'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            c'2
                            ~

                            c'8.
                            <>
                            \fff

                            r16

                            r8.

                            c'16
                            \sfp
                            \<
                            ~
                            \boxed-markup "superball + bass drum" 1

                            c'4
                            ~

                            c'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ~
                            ]

                            c'2
                            ~

                            c'8.
                            <>
                            \fff

                            r16

                            r4

                            r16

                            c'8.
                            \sfp
                            \<
                            \boxed-markup "superball + tam tam" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            c'4
                            ~

                            c'8.
                            <>
                            \fff

                            r16

                            r4

                            c'2
                            \sfp
                            \<
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            c'2
                            \bar "||"
                            <>
                            \fff

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
                            \boxed-markup "normale" 1

                            d'8
                            \sfp
                            \<
                            ~

                            d'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            d'8
                            [

                            \revert Staff.Stem.stemlet-length
                            e'8
                            ~
                            ]

                            e'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            f'2.
                            <>
                            \fff

                            r4

                            r8.

                            cs''16
                            \sfp
                            \<
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            bf'2.
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ~
                            ]

                            f'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            \override Staff.Stem.stemlet-length = 0.75
                            g'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            bf'16
                            ~
                            ]

                            bf'4
                            ~

                            bf'8.
                            <>
                            \fff

                            r16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            r8.

                            d''16
                            \sfp
                            \<
                            ~

                            d''2
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            d''16
                            [

                            \revert Staff.Stem.stemlet-length
                            g''8.
                            ~
                            ]

                            g''4
                            ~

                            g''4
                            ~

                            g''8.
                            <>
                            \fff

                            r16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            r4

                            d''2
                            \sfp
                            \<
                            ~

                            d''8
                            <>
                            \fff

                            r8

                            r8.

                            bf'16
                            \sfp
                            \<
                            ~

                            bf'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            \override Staff.Stem.stemlet-length = 0.75
                            f'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            g'16
                            ~
                            ]

                            g'2
                            ~

                            g'16
                            <>
                            \fff

                            r8.

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            r8

                            b'8
                            \sfp
                            \<
                            ~

                            b'4
                            ~

                            b'8
                            <>
                            \fff

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
}