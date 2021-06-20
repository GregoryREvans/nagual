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

            \tempo 4=100
            \once \override Score.BarLine.X-extent = #'(0.5 . 3)
            \once \override Score.BarLine.thick-thickness = #3
            \bar ".|:"
            %! scaling time signatures
            \time 4/8
            \mark \markup \bold {  }
            s1 * 1/2
            - \rehearsal-mark-markup L 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #5 #4 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            \tempo 4=80
            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"80"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #5 #4 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 14]

            \tempo 4=100
            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #5 #4 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 15]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 16]

            \tempo 4=80
            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"80"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #5 #4 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 17]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4

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
                            fs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            fs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            fs'4.
                            ~

                            fs'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            fs'2.
                            ~

                            fs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            fs'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            fs'2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            fs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            fs'2.
                            ~

                            fs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            fs'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            fs'2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            fs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            fs'2.
                            ~

                            fs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 13]

                            fs'2.
                            ~

                            fs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 14]

                            r8

                            fs'4
                            ~

                            fs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 15]

                            fs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 16]

                            fs'2..
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 17]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
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
                            cs''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            cs''4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            cs''4.
                            ~

                            cs''4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            cs''2.
                            ~

                            cs''4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            cs''1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            cs''2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            cs''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            cs''2.
                            ~

                            cs''4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            cs''1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            cs''2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 11]

                            cs''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            cs''2.
                            ~

                            cs''4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 13]

                            cs''2.
                            ~

                            cs''4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 14]

                            r8

                            cs''4
                            ~

                            cs''4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 15]

                            cs''4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 16]

                            cs''2..
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 17]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
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
                            cs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            cs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            cs'4.
                            ~

                            cs'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            cs'2.
                            ~

                            cs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            cs'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            cs'2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            cs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            cs'2.
                            ~

                            cs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 9]

                            cs'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            cs'2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 11]

                            cs'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            cs'2.
                            ~

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 13]

                            cs'2.
                            ~

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 14]

                            r8

                            cs'4
                            ~

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 15]

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 16]

                            cs'2..
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 17]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
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

                                \times 4/5
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    [

                                    cs'8.

                                    cs'16

                                }

                                cs'16

                                cs'16

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                                \times 2/3
                                {

                                    cs'4

                                    cs'8

                                }

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 2]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'32
                                [

                                cs'32

                                \revert Staff.Stem.stemlet-length
                                cs'16.
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'32
                            [

                            cs'32

                            cs'32

                            \revert Staff.Stem.stemlet-length
                            cs'32
                            ]

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'16
                                [

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            cs'8

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'32
                                [

                                cs'32

                                cs'32

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 4]

                                    cs'4

                                    cs'4

                                    cs'4

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                    \revert Staff.Stem.stemlet-length
                                    cs'8
                                    ]

                                    cs'4

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                }

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                                cs'4.

                            }

                            \times 2/3
                            {

                                \times 4/5
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 5]

                                    cs'8

                                    cs'4.

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                }

                                cs'8

                                cs'8

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                                \times 2/3
                                {

                                    cs'2

                                    cs'4

                                }

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 6]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'16
                                [

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'8.
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            \times 2/3
                            {

                                cs'8

                                cs'4

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 7]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8
                                [

                                cs'8

                                cs'8

                                \times 4/5
                                {

                                    cs'32

                                    cs'32

                                    cs'32

                                    cs'16

                                }

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 8]

                                    cs'4

                                    cs'4

                                    cs'4

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                    \revert Staff.Stem.stemlet-length
                                    cs'8
                                    ]

                                    cs'4

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                }

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                                cs'4.

                            }

                            \times 2/3
                            {

                                \times 4/5
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 9]

                                    cs'8

                                    cs'4.

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                }

                                cs'8

                                cs'8

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                                \times 2/3
                                {

                                    cs'2

                                    cs'4

                                }

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 10]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'16
                                [

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'8.
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'16
                            ]

                            \times 2/3
                            {

                                cs'8

                                cs'4

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 11]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8
                                [

                                cs'8

                                cs'8

                                \times 4/5
                                {

                                    cs'32

                                    cs'32

                                    cs'32

                                    cs'16

                                }

                                cs'16

                                \revert Staff.Stem.stemlet-length
                                cs'16
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 12]

                                    cs'4

                                    cs'4

                                    cs'4

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                    \revert Staff.Stem.stemlet-length
                                    cs'8
                                    ]

                                    cs'4

                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8
                                    [

                                }

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                                cs'4.

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 13]

                            cs'2.
                            ~

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 14]

                            r8

                            cs'4
                            ~

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 15]

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 16]

                            cs'2..
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 17]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}