    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=100
            \once \override Score.BarLine.X-extent = #'(1 . 2)
            \once \override Score.BarLine.thick-thickness = #3
            \bar ":|."
            %! scaling time signatures
            \time 6/4
            \mark \markup \bold {  }
            s1 * 3/2
            - \rehearsal-mark-markup H 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                   c.
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            \tempo 4=110
            %! scaling time signatures
            \time 4/4
            s1 * 1
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "100"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #5.5
            \bacaStartTextSpanMM
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
            \time 3/4
            s1 * 3/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "120"
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

                            \times 4/5
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
                                ef'4
                                :32
                                \sfz

                                ef'4
                                :32
                                \sfz

                                ef'4
                                :32
                                \sfz
                                ~

                                ef'4
                                :32

                                ef'4
                                :32
                                \sfz
                                ~

                            }

                            \times 2/3
                            {

                                ef'4
                                :32

                                ef'4
                                :32
                                \sfz

                                ef'4
                                :32
                                \sfz

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            af'1
                            \ff
                            \boxed-markup "tone + air" 1

                            a'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            f'1

                            gqf'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            aqf'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            aqf'4

                            f'2
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
                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz
                                ~

                            }

                            \times 4/5
                            {

                                <g' fs'' af''>4
                                :32

                                <g' fs'' af''>4
                                :32
                                \sfz
                                ~

                                <g' fs'' af''>4
                                :32

                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            <g' fs'' af''>4
                            :32
                            \sfz

                            <g' fs'' af''>4
                            :32
                            \sfz

                            <g' fs'' af''>4
                            :32
                            \sfz
                            ~

                            <g' fs'' af''>4
                            :32

                            <g' fs'' af''>2
                            :32
                            \sfz

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 3]

                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz

                            }

                            \times 2/3
                            {

                                <g' fs'' af''>4
                                :32
                                \sfz

                                <g' fs'' af''>4
                                :32
                                \sfz
                                ~

                                <g' fs'' af''>4
                                :32

                            }

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
                                            ~
                                            c'4
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
                                % [Voice 2 measure 4]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 125/64
                                \p
                                \<
                                [

                                ef''16 * 123/64

                                cs''16 * 59/32

                                c''16 * 55/32

                                b'16 * 101/64

                                c''16 * 23/16

                                d''16 * 83/64

                                fs''16 * 19/16

                                ef''16 * 69/64

                                cs''16 * 1

                                af''16 * 59/64

                                g''16 * 7/8

                                bf''16 * 53/64

                                e''16 * 13/16

                                a''16 * 25/32

                                \revert Staff.Stem.stemlet-length
                                f''16 * 49/64
                                \f
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

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
                                % [Voice 2 measure 6]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                ef''16 * 123/64
                                \p
                                \<
                                [

                                g''16 * 15/8

                                d''16 * 7/4

                                af''16 * 51/32

                                f''16 * 45/32

                                fs''16 * 5/4

                                b'16 * 71/64

                                cs''16 * 1

                                e''16 * 29/32

                                c''16 * 27/32

                                bf'16 * 51/64

                                a'16 * 25/32

                                \revert Staff.Stem.stemlet-length
                                f'16 * 49/64
                                ~
                                ]

                            }
                            \revert TupletNumber.text

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
                                            c'2.
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
                                % [Voice 2 measure 7]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                f'16 * 15/8
                                [

                                fs'16 * 115/64

                                af'16 * 103/64

                                c''16 * 11/8

                                a'16 * 37/32

                                g'16 * 1

                                d''16 * 7/8

                                cs''16 * 13/16

                                e''16 * 49/64

                                \revert Staff.Stem.stemlet-length
                                bf'16 * 47/64
                                \f
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
                            \staff-line-count 3
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
                            e'4
                            :32
                            \sfz
                            \boxed-markup "gongs" 1

                            a4
                            :32
                            \sfz

                            c'4
                            :32
                            \sfz
                            ~

                            c'4
                            :32

                            \times 2/3
                            {

                                a4
                                :32
                                \sfz
                                ~

                                a4
                                :32

                                a4
                                :32
                                \sfz

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 2]

                                c'4
                                :32
                                \sfz

                                a4
                                :32
                                \sfz

                                c'4
                                :32
                                \sfz

                            }

                            \times 2/3
                            {

                                e'4
                                :32
                                \sfz
                                ~

                                e'4
                                :32

                                a4
                                :32
                                \sfz
                                ~

                            }

                            a4
                            :32

                            e'4
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            c'4
                            :32
                            \sfz

                            a4
                            :32
                            \sfz

                            c'4
                            :32
                            \sfz

                            c'4
                            :32
                            \sfz
                            ~

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 4]

                                c'4
                                :32

                                a4
                                :32
                                \sfz
                                ~

                                a4
                                :32

                            }

                            c'4
                            :32
                            \sfz

                            a4
                            :32
                            \sfz

                            a4
                            :32
                            \sfz
                            \staff-line-count 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            c'4
                            \ff
                            \boxed-markup "superball + tam tam" 1

                            c'2

                            c'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            c'4

                            c'2

                            c'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            c'2.
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
                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz
                            ~

                            <cs' d''>4
                            :32

                            <cs' d''>2
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>2
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            <cs' d''>2
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz
                            ~

                            <cs' d''>4
                            :32

                            <cs' d''>4
                            :32
                            \sfz
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            <cs' d''>4
                            :32

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz

                            <cs' d''>4
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            dqf'2.
                            :32
                            \ff
                            \bar "||"
                            \boxed-markup "spazzolato" 1

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
