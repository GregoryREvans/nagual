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
            - \rehearsal-mark-markup C 6 -1
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
            \once \override Score.BarLine.X-extent = #'(0.5 . 3)
            \once \override Score.BarLine.thick-thickness = #3
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
            \once \override Score.BarLine.X-extent = #'(0.5 . 3)
            \once \override Score.BarLine.thick-thickness = #3
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
            \once \override Score.BarLine.X-extent = #'(1 . 2)
            \once \override Score.BarLine.thick-thickness = #3
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
            \once \override Score.BarLine.X-extent = #'(1 . 2)
            \once \override Score.BarLine.thick-thickness = #3
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
                                f''8
                                \mp
                                [

                                fs''8

                                \revert Staff.Stem.stemlet-length
                                af''8
                                ]

                                \pitchedTrill
                                a''4
                                \p
                                \<
                                ~
                                \startTrillSpan c'''

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            a''4.
                            ~

                            a''4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            a''8

                            \pitchedTrill
                            g''4
                            \stopTrillSpan
                            ~
                            \startTrillSpan d'''

                            g''4.
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

                                g''4.

                                \pitchedTrill
                                df'''4
                                \stopTrillSpan
                                ~
                                \startTrillSpan e'''

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                df'''2

                                \pitchedTrill
                                bf''4
                                \ff
                                \stopTrillSpan
                                \startTrillSpan ef'''

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/8

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 7]

                                \pitchedTrill
                                e''4
                                \p
                                \<
                                \startTrillSpan f''

                                \pitchedTrill
                                bf'2
                                \stopTrillSpan
                                \startTrillSpan d''

                                \pitchedTrill
                                df''2
                                \ff
                                \stopTrillSpan
                                \startTrillSpan ef''

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 8]

                                ef'4
                                \p
                                - \tweak stencil #abjad-flared-hairpin
                                \<
                                \stopTrillSpan
                                \boxed-markup "tone + air" 1

                                d'2.

                                af'2
                                ~

                                \override Staff.Stem.stemlet-length = 0.75
                                af'8
                                [

                                g'16
                                \ff
                                - \accent

                                b'16

                                b'16

                                \revert Staff.Stem.stemlet-length
                                b'16
                                ]

                            }
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

                            \hauptStimmeStart
                            f'4
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<

                            \override Staff.Stem.stemlet-length = 0.75
                            df'16
                            \mf
                            - \accent
                            [

                            \hauptStimmeStop
                            af'16

                            fs'16

                            \revert Staff.Stem.stemlet-length
                            gqs'16
                            ]

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
                                fs'16 * 117/64
                                \pp
                                \<
                                [

                                f'16 * 99/64

                                a'16 * 69/64

                                e'16 * 13/16

                                \revert Staff.Stem.stemlet-length
                                bf'16 * 47/64
                                ~
                                ]
                                \startTrillSpan

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
                                bf'16 * 61/32
                                [

                                g'16 * 115/64
                                \stopTrillSpan

                                af'16 * 49/32

                                cs'16 * 5/4

                                ef'16 * 33/32

                                fs'16 * 57/64

                                d'16 * 13/16

                                \revert Staff.Stem.stemlet-length
                                c'16 * 25/32
                                ~
                                ]
                                \startTrillSpan

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
                                c'16 * 15/8
                                [

                                b16 * 115/64
                                \stopTrillSpan

                                a16 * 103/64

                                bf16 * 11/8

                                c'16 * 37/32

                                e'16 * 1

                                cs'16 * 7/8

                                b16 * 13/16

                                fs'16 * 49/64

                                \revert Staff.Stem.stemlet-length
                                f'16 * 47/64
                                ~
                                ]
                                \startTrillSpan

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
                                f'16 * 125/64
                                [

                                af'16 * 121/64
                                \stopTrillSpan

                                d'16 * 111/64

                                g'16 * 49/32

                                ef'16 * 85/64

                                b16 * 37/32

                                ef'16 * 65/64

                                bf16 * 59/64

                                e'16 * 27/32

                                cs'16 * 13/16

                                \revert Staff.Stem.stemlet-length
                                d'16 * 13/16
                                ~
                                ]
                                \startTrillSpan

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
                                d'16 * 63/32
                                [

                                g16 * 115/64
                                \stopTrillSpan

                                a16 * 91/64

                                c'16 * 35/32

                                af16 * 29/32

                                \revert Staff.Stem.stemlet-length
                                fs16 * 13/16
                                \ff
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            \pitchedTrill
                            ef'1
                            \p
                            \<
                            \startTrillSpan e'
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16
                            %! applying indicators
                            \ff
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            \hauptStimmeStart
                            d''8
                            \mf

                            ds''4
                            \startTrillSpan
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying indicators
                            \hauptStimmeStop
                            r1 * 1/4
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            e''4.
                            \p
                            ~
                            \boxed-markup "spazzolato" 1

                            \override Staff.Stem.stemlet-length = 0.75
                            e''8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs''8
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 13]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs''8
                            [

                            cs''8

                            c''8

                            \revert Staff.Stem.stemlet-length
                            d''8
                            ]

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
                            e'4.
                            \pp
                            \<
                            ~
                            \startTrillSpan
                            \boxed-markup "toms" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            e'4.
                            ~

                            e'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            e'2.

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 4]

                                c'1
                                \stopTrillSpan
                                \startTrillSpan

                                a8
                                \stopTrillSpan
                                ~
                                \startTrillSpan

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            a2
                            \ff
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8
                            %! applying indicators
                            \stopTrillSpan

                            R1 * 3/8
                            \staff-line-count 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            c'2.
                            \p
                            \<
                            ~
                            \boxed-markup "superball + bass drum" 1

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            \ff
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            c'8
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \boxed-markup "brushes + bass drum" 1

                            c'4

                            c'4.
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            c'16
                            \f
                            - \accent

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]
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
                            \staff-line-count 4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 11]

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            b16
                            \f
                            [
                            \boxed-markup "yarn mallets + wood blocks" 1

                            d'16

                            f'16

                            d'16

                            f'16

                            \revert Staff.Stem.stemlet-length
                            d'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            g4.
                            \p
                            ~
                            \startTrillSpan

                            g4
                            ~

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 13]

                                g2

                                d'4
                                \stopTrillSpan
                                \startTrillSpan

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
                            \pitchedTrill
                            f'4.
                            \pp
                            \<
                            ~
                            \startTrillSpan af'
                            \boxed-markup "normale" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            f'4.
                            ~

                            f'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            \pitchedTrill
                            a'2.
                            \stopTrillSpan
                            ~
                            \startTrillSpan b'

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 4]

                                a'4

                                \pitchedTrill
                                c''4.
                                \stopTrillSpan
                                ~
                                \startTrillSpan ef''

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            c''4

                            \pitchedTrill
                            bf'4
                            \ff
                            \stopTrillSpan
                            \startTrillSpan f''
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            dqf'4
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \stopTrillSpan
                            \boxed-markup "spazzolato" 1

                            cs'8
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            dqf'16
                            \f
                            - \accent

                            ef'16

                            cqs'16

                            \revert Staff.Stem.stemlet-length
                            cqs'16
                            ]

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 7]

                                \pitchedTrill
                                cs''8
                                \p
                                \<
                                \startTrillSpan g''
                                \boxed-markup "ordinario + ponticello" 1

                                \pitchedTrill
                                d''1
                                \stopTrillSpan
                                \startTrillSpan fs''

                                \pitchedTrill
                                ef''8
                                \ff
                                \stopTrillSpan
                                \startTrillSpan g''

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16
                            %! applying indicators
                            \stopTrillSpan

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

                            \pitchedTrill
                            d''4.
                            \p
                            \startTrillSpan af''

                            \pitchedTrill
                            e''8
                            \stopTrillSpan
                            \startTrillSpan f''

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
