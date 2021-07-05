    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=40
            %! scaling time signatures
            \time 2/4
            \mark \markup \bold {  }
            s1 * 1/2
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"40"
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
            \time 4/4
            s1 * 1
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
            \time 5/4
            s1 * 5/4
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
            - \rehearsal-mark-markup A 6 -2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
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

            \tempo 4=66
            %! scaling time signatures
            \time 4/4
            s1 * 1
            - \rehearsal-mark-markup B 6 -2
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"66" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #3 #5 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 14]

            \tempo 4=70
            %! scaling time signatures
            \time 4/4
            s1 * 1
            - \abjad-dashed-line-with-arrow
            - \baca-metronome-mark-spanner-left-text 2 0 1 "40"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #5.5
            \bacaStartTextSpanMM
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 15]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 16]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            \bacaStopTextSpanMM
            - \abjad-invisible-line
            - \baca-metronome-mark-spanner-left-text 2 0 1 "100"
            - \tweak padding #0.2
            - \tweak staff-padding #0.2
            - \tweak font-size #5.5
            \bacaStartTextSpanMM
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 17]

            %! applying ending skips
            \once \override Score.TimeSignature.stencil = ##f
            %! scaling time signatures
            \time 1/4
            s1 * 1/4
            \bacaStopTextSpanMM

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
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
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

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/8

                            R1 * 5/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            ef'2
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \boxed-markup "tone + air" 1

                            f'4
                            ~

                            f'4

                            dqf'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            dqf'8
                            [

                            \revert Staff.Stem.stemlet-length
                            d'8
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 8]

                                d'8

                                dqf'4

                                c'2.

                                cqs'8
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            cqs'2
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cqs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            eqf'8
                            ~
                            ]

                            eqf'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            eqf'8
                            [

                            \revert Staff.Stem.stemlet-length
                            e'8
                            ~
                            ]

                            e'4
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 10]

                                e'4.

                                d'2

                                fqs'2.

                                f'2

                                fqs'4

                                \override Staff.Stem.stemlet-length = 0.75
                                g'16
                                \mf
                                - \accent
                                [

                                \revert Staff.Stem.stemlet-length
                                g'16
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            f''4
                            :32
                            \sfz
                            \boxed-markup "normale" 1

                            f''4
                            :32
                            \sfz

                            f''2
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            f''2
                            :32
                            \sfz

                            f''4
                            :32
                            \sfz

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 13]

                                f''4
                                :32
                                \sfz

                                f''4
                                :32
                                \sfz

                                f''4
                                :32
                                \sfz

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 16]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/8

                            R1 * 5/8
                            \bar "||"
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 17]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" 
                            %! applying ending skips
                            \stopStaff \startStaff

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
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            r4

                            bf'4
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \boxed-markup "spazzolato" 1

                            cs''4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            cs''4

                            e''4

                            \override Staff.Stem.stemlet-length = 0.75
                            e''8
                            [

                            ef''16
                            \mf
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            r2.

                            ef''4
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            ef''4

                            b'2
                            ~

                            b'4

                            d''4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            d''8
                            [

                            cs''16
                            \f
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            bf'16
                            ]

                            r2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4

                            R1 * 3/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            r2.

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

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                af''16 * 15/8
                                \mp
                                [
                                \boxed-markup "plucked + ponticello" 1

                                \revert Staff.Stem.stemlet-length
                                g'''16 * 115/64

                                r16 * 103/64

                                b''16 * 11/8

                                r16 * 37/32

                                \override Staff.Stem.stemlet-length = 0.75
                                bf'''16 * 1

                                \revert Staff.Stem.stemlet-length
                                c'''16 * 7/8

                                r16 * 13/16

                                r16 * 49/64

                                \revert Staff.Stem.stemlet-length
                                af''16 * 47/64
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
                                % [Voice 2 measure 9]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                af''16 * 49/64
                                [

                                \revert Staff.Stem.stemlet-length
                                g'''16 * 49/64

                                r16 * 25/32

                                b''16 * 51/64

                                r16 * 13/16

                                \override Staff.Stem.stemlet-length = 0.75
                                bf'''16 * 27/32

                                \revert Staff.Stem.stemlet-length
                                c'''16 * 7/8

                                r16 * 59/64

                                r16 * 63/64

                                \override Staff.Stem.stemlet-length = 0.75
                                af''16 * 67/64

                                g'''16 * 71/64

                                \revert Staff.Stem.stemlet-length
                                b''16 * 77/64

                                r16 * 83/64

                                bf'''16 * 89/64

                                r16 * 3/2

                                \override Staff.Stem.stemlet-length = 0.75
                                c'''16 * 103/64

                                \revert Staff.Stem.stemlet-length
                                af''16 * 55/32

                                r16 * 115/64

                                r16 * 15/8

                                \revert Staff.Stem.stemlet-length
                                g'''16 * 61/32
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/4

                            R1 * 3/4

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 11]

                                <e' f' fs''>4
                                :32
                                \sfz
                                \boxed-markup "normale" 1

                                <e' f' fs''>4
                                :32
                                \sfz

                                <e' f' fs''>4
                                :32
                                \sfz
                                ~

                                <e' f' fs''>4
                                :32

                                <e' f' fs''>4
                                :32
                                \sfz
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            <e' f' fs''>4
                            :32

                            <e' f' fs''>4
                            :32
                            \sfz

                            <e' f' fs''>4
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 13]

                            <e' f' fs''>4
                            :32
                            \sfz

                            <e' f' fs''>4
                            :32
                            \sfz

                            <e' f' fs''>2
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 16]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/8

                            R1 * 5/8
                            \bar "||"
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 17]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" 
                            %! applying ending skips
                            \stopStaff \startStaff

                        }

                    }

                }

                \tag #'voice3
                {

                    \context Staff = "Staff 3"
                    {

                        \context Voice = "Voice 3"
                        {
                            %! applying indicators
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
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying indicators
                            \clef "percussion"
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/8

                            R1 * 5/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            r2.

                            c'4
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            \boxed-markup "sandpaper blocks" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            c'4
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 6/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 8]

                                c'8

                                c'4

                                c'2
                                \boxed-markup "brushes + cymbal" 1

                                c'4.
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 9]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ~
                            ]

                            c'4

                            c'4

                            c'2.

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 10]

                                c'2.
                                \boxed-markup "brushes + bass drum" 1

                                c'2

                                c'2

                                c'2

                                \override Staff.Stem.stemlet-length = 0.75
                                c'8
                                [

                                c'16
                                \mf
                                - \accent

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 11]

                                c'4
                                \sfz
                                \boxed-markup "superball + bass drum" 1

                                c'4
                                \sfz

                                c'4
                                \sfz
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            c'16
                            \sfz
                            ~
                            ]

                            c'4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8.
                            \sfz
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 13]

                            c'4
                            \sfz

                            c'4
                            \sfz

                            c'4
                            \sfz

                            c'4
                            \sfz
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 16]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/8

                            R1 * 5/8
                            \bar "||"
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 17]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" 
                            %! applying ending skips
                            \stopStaff \startStaff

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
                            \override Staff.Stem.stemlet-length = 0.75
                            aqs8
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            [
                            \boxed-markup "spazzolato" 1

                            \revert Staff.Stem.stemlet-length
                            b8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            b8
                            [

                            bqs16
                            \mf
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            b16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            dqs'8
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            [

                            \revert Staff.Stem.stemlet-length
                            cqs'8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cqs'8
                            [

                            cs'16
                            \mf
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            r4

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/2
                            {

                                bf4.
                                \p
                                - \tweak stencil #abjad-flared-hairpin
                                \<

                                \override Staff.Stem.stemlet-length = 0.75
                                b16
                                \f
                                - \accent
                                [

                                \revert Staff.Stem.stemlet-length
                                bf16
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            r4

                            g2
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            g8
                            [

                            \revert Staff.Stem.stemlet-length
                            af8
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 5]

                                af4.

                                d'2.

                                ef'2

                                b2
                                ~

                                b8
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            b8
                            [

                            fs'16
                            \f
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]

                            r2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            r2

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

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                b'32 * 15/4
                                \mf
                                [
                                \boxed-markup "col legno tratto" 1

                                \revert Staff.Stem.stemlet-length
                                bf''32 * 115/32

                                r32 * 103/32

                                c''32 * 11/4

                                r32 * 37/16

                                \override Staff.Stem.stemlet-length = 0.75
                                af'32 * 2

                                \revert Staff.Stem.stemlet-length
                                g''32 * 7/4

                                r32 * 13/8

                                r32 * 49/32

                                \revert Staff.Stem.stemlet-length
                                b'32 * 47/32
                                ]

                            }
                            \revert TupletNumber.text

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            r1

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

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                bf''32 * 3/2
                                [

                                \revert Staff.Stem.stemlet-length
                                c''32 * 25/16

                                r32 * 7/4

                                af'32 * 65/32

                                r32 * 79/32

                                \override Staff.Stem.stemlet-length = 0.75
                                g''32 * 49/16

                                \revert Staff.Stem.stemlet-length
                                b'32 * 29/8
                                ]

                            }
                            \revert TupletNumber.text
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 9]

                            r2.

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

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                bf''16 * 15/8
                                [

                                \revert Staff.Stem.stemlet-length
                                c''16 * 115/64

                                r16 * 103/64

                                af'16 * 11/8

                                r16 * 37/32

                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 1

                                \revert Staff.Stem.stemlet-length
                                b'16 * 7/8

                                r16 * 13/16

                                r16 * 49/64

                                \revert Staff.Stem.stemlet-length
                                bf''16 * 47/64
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
                                % [Voice 4 measure 10]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                bf''16 * 51/64
                                [

                                \revert Staff.Stem.stemlet-length
                                c''16 * 51/64

                                r16 * 27/32

                                af'16 * 29/32

                                r16 * 65/64

                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 73/64

                                \revert Staff.Stem.stemlet-length
                                b'16 * 21/16

                                r16 * 97/64

                                r16 * 111/64

                                \revert Staff.Stem.stemlet-length
                                bf''16 * 31/16
                                ]

                            }
                            \revert TupletNumber.text

                            r2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 11]

                            <fs' b'>4
                            :32
                            \sfz
                            \boxed-markup "normale + ponticello" 1

                            <fs' b'>4
                            :32
                            \sfz

                            <fs' b'>2
                            :32
                            \sfz
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 12]

                            <fs' b'>2.
                            :32
                            \sfz

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 13]

                                <fs' b'>4
                                :32
                                \sfz

                                <fs' b'>4
                                :32
                                \sfz

                                <fs' b'>4
                                :32
                                \sfz

                                <fs' b'>4
                                :32
                                \sfz

                                <fs' b'>4
                                :32
                                \sfz
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 14]

                            r4

                            fs'4
                            \p
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            ~
                            \boxed-markup "spazzolato" 1

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            a'8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a'8
                            [

                            af'16
                            \f
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            d'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 15]

                            r4

                            a4
                            \mp
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 16]

                            ef'2

                            e'4

                            cs'4

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            [

                            cs'16
                            \mf
                            - \accent

                            \revert Staff.Stem.stemlet-length
                            fs'16
                            ]
                            \bar "||"
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 17]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" 
                            %! applying ending skips
                            \stopStaff \startStaff

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
