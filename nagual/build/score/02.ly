    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=100
            %! scaling time signatures
            \time 3/8
            \mark \markup \bold {  }
            s1 * 3/8
            - \rehearsal-mark-markup C 6
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            \once \override Score.BarLine.X-extent = #'(0 . 3)
            \once \override Score.BarLine.thick-thickness = #4
            \bar ".|:"
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 3)
              \concat {
                  (
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  )
              }
            }
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
            \time 9/8
            s1 * 9/8
            \once \override Score.BarLine.color = #red
            \once \override Score.SpanBar.color = #red
            \once \override Score.BarLine.X-extent = #'(0 . 3)
            \once \override Score.BarLine.thick-thickness = #4
            \bar ".|:"
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 3)
              \concat {
                  (
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  )
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"66" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #2 #3 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            \once \override Score.BarLine.X-extent = #'(0 . 1.5)
            \once \override Score.BarLine.thick-thickness = #4
            \bar ":|."
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            \once \override Score.BarLine.color = #red
            \once \override Score.SpanBar.color = #red
            \once \override Score.BarLine.X-extent = #'(0 . 1.5)
            \once \override Score.BarLine.thick-thickness = #4
            \bar ":|."

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

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
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
                                fs'8
                                [

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ]

                                fs'4
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            fs'4.
                            ~

                            fs'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            fs'8

                            fs'4
                            ~

                            fs'4.
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

                                fs'4.

                                fs'4
                                ~

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                fs'2

                                fs'4

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 7]

                                fs'4

                                fs'2

                                fs'2

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            fs'2.
                            ~

                            fs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 13]

                            fs'2

                        }

                    }

                }

                \tag #'voice2
                {

                    \context Staff = "Staff 2"
                    {

                        \context Voice = "Voice 2"
                        {

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
                                            c'4.
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
                                % [Voice 2 measure 1]

                                %! applying staff names and clefs
                                \set Staff.shortInstrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #12 "gt." }
                                %! applying staff names and clefs
                                \set Staff.instrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #14 "Guitar" }
                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                cs''16 * 117/64
                                ^ \markup { 0 }
                                [

                                cs''16 * 99/64
                                ^ \markup { 1 }

                                cs''16 * 69/64
                                ^ \markup { 2 }

                                cs''16 * 13/16
                                ^ \markup { 3 }

                                \revert Staff.Stem.stemlet-length
                                cs''16 * 47/64
                                ^ \markup { 4 }
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
                                            c'2
                                            ~
                                            c'8
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
                                % [Voice 2 measure 2]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                cs''16 * 61/32
                                ^ \markup { 5 }
                                [

                                cs''16 * 115/64
                                ^ \markup { 6 }

                                cs''16 * 49/32
                                ^ \markup { 7 }

                                cs''16 * 5/4
                                ^ \markup { 8 }

                                cs''16 * 33/32
                                ^ \markup { 9 }

                                cs''16 * 57/64
                                ^ \markup { 10 }

                                cs''16 * 13/16
                                ^ \markup { 11 }

                                \revert Staff.Stem.stemlet-length
                                cs''16 * 25/32
                                ^ \markup { 12 }
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
                                % [Voice 2 measure 3]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                cs''16 * 15/8
                                ^ \markup { 13 }
                                [

                                cs''16 * 115/64
                                ^ \markup { 14 }

                                cs''16 * 103/64
                                ^ \markup { 15 }

                                cs''16 * 11/8
                                ^ \markup { 16 }

                                cs''16 * 37/32
                                ^ \markup { 17 }

                                cs''16 * 1
                                ^ \markup { 18 }

                                cs''16 * 7/8
                                ^ \markup { 19 }

                                cs''16 * 13/16
                                ^ \markup { 20 }

                                cs''16 * 49/64
                                ^ \markup { 21 }

                                \revert Staff.Stem.stemlet-length
                                cs''16 * 47/64
                                ^ \markup { 22 }
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
                                            c'2..
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
                                cs''16 * 125/64
                                ^ \markup { 23 }
                                [

                                cs''16 * 121/64
                                ^ \markup { 24 }

                                cs''16 * 111/64
                                ^ \markup { 25 }

                                cs''16 * 49/32
                                ^ \markup { 26 }

                                cs''16 * 85/64
                                ^ \markup { 27 }

                                cs''16 * 37/32
                                ^ \markup { 28 }

                                cs''16 * 65/64
                                ^ \markup { 29 }

                                cs''16 * 59/64
                                ^ \markup { 30 }

                                cs''16 * 27/32
                                ^ \markup { 31 }

                                cs''16 * 13/16
                                ^ \markup { 32 }

                                \revert Staff.Stem.stemlet-length
                                cs''16 * 13/16
                                ^ \markup { 33 }
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
                                            c'2
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
                                % [Voice 2 measure 5]

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                cs''16 * 63/32
                                ^ \markup { 34 }
                                [

                                cs''16 * 115/64
                                ^ \markup { 35 }

                                cs''16 * 91/64
                                ^ \markup { 36 }

                                cs''16 * 35/32
                                ^ \markup { 37 }

                                cs''16 * 29/32
                                ^ \markup { 38 }

                                \revert Staff.Stem.stemlet-length
                                cs''16 * 13/16
                                ^ \markup { 39 }
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8
                            %! applying indicators
                            ^ \markup { 40 }

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            cs''1
                            ^ \markup { 41 }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16
                            %! applying indicators
                            ^ \markup { 42 }

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16
                            %! applying indicators
                            ^ \markup { 44 }

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            cs''4.
                            ^ \markup { 46 }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4
                            %! applying indicators
                            ^ \markup { 47 }

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            cs''4.
                            ^ \markup { 48 }
                            ~

                            cs''4
                            ^ \markup { 49 }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 13]

                            cs''2
                            ^ \markup { 50 }

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
                            cs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            cs'4.
                            ~

                            cs'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            cs'2.

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 4]

                                cs'1

                                cs'8
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            cs'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            cs'2.
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            cs'2.
                            ~

                            cs'4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            \staff-line-count 3
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 11]

                            r8

                            cs'4.
                            \boxed-markup "yarn mallets + wood blocks" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            cs'4.
                            ~

                            cs'4
                            ~

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 13]

                                cs'2

                                cs'4

                            }

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
                            cs'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            cs'4.
                            ~

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            cs'2.
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 4]

                                cs'4

                                cs'4.
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            cs'4

                            cs'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 7]

                                cs'8

                                cs'1

                                cs'8

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 13]

                            cs'4.

                            cs'8

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
