    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=50
            %! scaling time signatures
            \time 3/4
            \mark \markup \bold {  }
            s1 * 3/4
            - \rehearsal-mark-markup D 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                   c.
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #1 #"50"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #3 #1 #'(0.8 . 0.8)
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
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
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
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            \tempo 4=100
            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #2 #0 #1 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 14]

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

                            \times 2/3
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
                                d'4
                                \pp
                                \stopTrillSpan

                                f'4

                                d'4
                                ~

                            }

                            d'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            g'2
                            ~

                            \times 2/3
                            {

                                g'4

                                a'4

                                e''4
                                ~

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 3]

                                e''4
                                ~

                                e''4

                                d''4

                            }

                            a'2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            b''4
                            ~

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                b''8
                                [

                                a''8
                                ~

                                \revert Staff.Stem.stemlet-length
                                a''8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            b''2.

                            d''2

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 6]

                                e''4

                                e''4

                                a'4
                                ~

                            }

                            a'2.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            d'2

                            e''4

                            f''2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            f''2
                            ~

                            \times 2/3
                            {

                                f''4

                                f''4

                                g''4

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 9]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' g''>8
                                    [
                                    (

                                    f'16

                                    f'16

                                    f'16

                                    f'8

                                    f'16

                                    f'8

                                    f'16

                                    f'16

                                    f'8

                                    f'16

                                    f'16

                                    f'16

                                    f'8

                                    f'16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    g''1.
                                    \ff

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 11]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' a'>8
                                    [
                                    (

                                    f'16

                                    f'16

                                    f'8

                                    f'16

                                    f'16

                                    f'16

                                    f'8

                                    f'16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    a'1

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 13]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' e''>8
                                    [
                                    (

                                    f'16

                                    f'16

                                    f'8

                                    f'16

                                    f'16

                                    f'16

                                    f'8
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e''2.

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
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

                            \times 4/5
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
                                \override Staff.Stem.stemlet-length = 0.75
                                <g b d' g' af' d''>16
                                \pp
                                [

                                <g b d' g' af' d''>16

                                <g b d' g' af' d''>16
                                ~

                                <g b d' g' af' d''>16

                                \revert Staff.Stem.stemlet-length
                                <g b d' g' af' d''>16
                                ~
                                ]

                            }

                            <g b d' g' af' d''>2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            <d' c'' f'' a''>2

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                <g b d' g' af' d''>8
                                ~
                                [

                                <g b d' g' af' d''>8
                                ~

                                <g b d' g' af' d''>8

                                <g b d' g' af' d''>8

                                \revert Staff.Stem.stemlet-length
                                <g b d' g' af' d''>8
                                ]

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 3]

                                \override Staff.Stem.stemlet-length = 0.75
                                <g b d' g' af' d''>8
                                ~
                                [

                                <g b d' g' af' d''>8

                                <g b d' g' af' d''>8
                                ~

                                <g b d' g' af' d''>8

                                \revert Staff.Stem.stemlet-length
                                <g b d' g' af' d''>8
                                ]

                            }

                            <d' c'' f'' a''>2
                            ~

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 4]

                                \override Staff.Stem.stemlet-length = 0.75
                                <d' c'' f'' a''>16
                                ~
                                [

                                <d' c'' f'' a''>16

                                <cs' bf' e'' a''>16

                                <cs' bf' e'' a''>16

                                \revert Staff.Stem.stemlet-length
                                <d' c'' f'' a''>16
                                ~
                                ]

                            }

                            <d' c'' f'' a''>4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            <g b d' g' af' d''>2
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                <g b d' g' af' d''>4

                                <g b d' g' af' d''>4

                                <g b d' g' af' d''>4
                                ~

                                <g b d' g' af' d''>4
                                ~

                                <g b d' g' af' d''>4

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 6]

                                <g b d' g' af' d''>4

                                <g b d' g' af' d''>4

                                <g b d' g' af' d''>4
                                ~

                                <g b d' g' af' d''>4

                                <g b d' g' af' d''>4
                                ~

                            }

                            <g b d' g' af' d''>2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            <b fs' a' d'' af''>2.

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                <d' c'' f'' a''>4
                                ~

                                <d' c'' f'' a''>4
                                ~

                                <d' c'' f'' a''>4

                                <c' g' bf' ef'' a''>4

                                <c' g' bf' ef'' a''>4

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 8]

                                \override Staff.Stem.stemlet-length = 0.75
                                <d' c'' f'' a''>8
                                ~
                                [

                                <d' c'' f'' a''>8

                                <b fs' a' d'' af''>8
                                ~

                                <b fs' a' d'' af''>8

                                \revert Staff.Stem.stemlet-length
                                <c' g' bf' ef'' a''>8
                                ]

                            }

                            <g e' b' d''>2
                            :32
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            <g e' b' d''>1.
                            :32
                            \ff
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 11]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <g' c''>16
                                    [
                                    (

                                    c''8

                                    c''16

                                    c''16

                                    c''8

                                    c''16

                                    c''16

                                    c''16

                                    c''8
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    g'1

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            <g b d' g' af' d''>2
                            :32

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 13]

                                <g b d' g' af' d''>4
                                :32

                                <g b d' g' af' d''>4
                                :32
                                ~

                                <g b d' g' af' d''>4
                                :32

                                <g b d' g' af' d''>4
                                :32
                                ~

                                <g b d' g' af' d''>4
                                :32

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 14]

                            <g b d' g' af' d''>1
                            :32
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
                            \nebenStimmeStop
                            \clef "percussion"
                            \override Staff.Stem.stemlet-length = 0.75
                            a8
                            \pp
                            \stopTrillSpan
                            [
                            \boxed-markup "gongs" 1

                            \revert Staff.Stem.stemlet-length
                            c'8
                            ]

                            a2
                            \staff-line-count 5
                            \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            \clef "treble"
                            <d' e'>2.
                            \boxed-markup "bow + vibraphone" 1

                            \override Staff.Stem.stemlet-length = 0.75
                            b'8
                            [

                            \revert Staff.Stem.stemlet-length
                            a'8
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            a'4

                            <e' fs''>4
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            <e' fs''>8
                            [

                            \revert Staff.Stem.stemlet-length
                            <e'' fs''>8
                            ~
                            ]

                            <e'' fs''>4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            <a' b'>4

                            b'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            \override Staff.Stem.stemlet-length = 0.75
                            e'8
                            [

                            \revert Staff.Stem.stemlet-length
                            a8
                            ~
                            ]

                            a2
                            ~

                            a2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            b'2

                            c''4
                            ~

                            c''4

                            <c'' d''>4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            e'1

                            \hauptStimmeStart
                            a4

                            b'4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            b'2

                            <c'' d''>4

                            \hauptStimmeStop
                            r4

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/6
                            {
                                \staff-line-count 1
                                \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 9]

                                \hauptStimmeStart
                                \clef "percussion"
                                c'4
                                \f
                                \boxed-markup "bass drum" 1

                                c'4

                                c'4

                                c'4

                                c'4

                                c'4

                            }

                            \hauptStimmeStop
                            c'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 11]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <a c'>16
                                    [
                                    (

                                    c'8

                                    c'16

                                    c'16

                                    c'8

                                    c'16

                                    c'16

                                    c'16

                                    c'8
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {
                                    \staff-line-count 3

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    a1
                                    \ff
                                    \boxed-markup "gongs" 1

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            \staff-line-count 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 13]

                            r4

                            c'4
                            \boxed-markup "bow + cymbal" 1

                            c'4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 14]

                            c'1
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
                            \nebenStimmeStart
                            \override Staff.Stem.stemlet-length = 0.75
                            g8.
                            \mf
                            \<
                            \stopTrillSpan
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #2
                            - \tweak staff-padding #1
                            - \tweak bound-details.right.padding #2
                            - \tweak bound-details.left.text
                            \double-diamond-parenthesized-top-markup
                            \startTrillSpan

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af16
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                            - \tweak staff-padding 3.5
                            \startTextSpanOne
                            \stopTrillSpan

                            \nebenStimmeStop
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af8
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            cs'8
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            cs'4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 2]

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e'2
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 3]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e'16
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef'16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'16
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af4
                            \ff
                            \>
                            \stopTextSpanOne
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #2
                            - \tweak staff-padding #1
                            - \tweak bound-details.right.padding #2
                            - \tweak bound-details.left.text
                            \diamond-parenthesized-double-diamond-markup
                            \startTrillSpan

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af8
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                            - \tweak staff-padding 3.5
                            \startTextSpanOne
                            \stopTrillSpan

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a8
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af8.
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 4]

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            bf4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            ef'4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            af8
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            cs'16
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            fs'16
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \times 2/3
                            {

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a'4
                                \mf
                                \<
                                \stopTextSpanOne
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \double-diamond-parenthesized-top-markup
                                \startTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                                - \tweak staff-padding 3.5
                                \startTextSpanOne
                                \stopTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            bf'4
                            \ff
                            \>
                            \stopTextSpanOne
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #2
                            - \tweak staff-padding #1
                            - \tweak bound-details.right.padding #2
                            - \tweak bound-details.left.text
                            \double-diamond-parenthesized-top-markup
                            \startTrillSpan

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            ef'4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                            - \tweak staff-padding 3.5
                            \startTextSpanOne
                            \stopTrillSpan

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 7]

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs''4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a'4
                            \mf
                            \<
                            \stopTextSpanOne
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #2
                            - \tweak staff-padding #1
                            - \tweak bound-details.right.padding #2
                            - \tweak bound-details.left.text
                            \diamond-parenthesized-double-diamond-markup
                            \startTrillSpan

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a'8
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                            - \tweak staff-padding 3.5
                            \startTextSpanOne
                            \stopTrillSpan

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e''8
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e''4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 8]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                b'8
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e''8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e''8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e''4
                            \ff
                            \>
                            \stopTextSpanOne
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \tweak padding #2
                            - \tweak staff-padding #1
                            - \tweak bound-details.right.padding #2
                            - \tweak bound-details.left.text
                            \double-diamond-parenthesized-top-markup
                            \startTrillSpan

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            ef''4
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                            - \tweak staff-padding 3.5
                            \startTextSpanOne
                            \stopTrillSpan

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d''16
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g'16
                                \mf
                                \<
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g'16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c''16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                c''16
                                ]

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 9]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' d''>16
                                    [
                                    (

                                    c'8

                                    c'16

                                    c'16

                                    c'8

                                    c'16

                                    c'16

                                    c'16

                                    c'8

                                    c'16

                                    c'8

                                    c'16

                                    c'16

                                    c'8

                                    c'16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    d''1.
                                    \ff
                                    \stopTextSpanOne

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 11]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' e'>16
                                    [
                                    (

                                    c'16

                                    c'8

                                    c'16

                                    c'8

                                    c'16

                                    c'16

                                    c'8

                                    c'16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e'1

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 13]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' b'>16
                                    [
                                    (

                                    c'16

                                    c'8

                                    c'16

                                    c'8

                                    c'16

                                    c'16

                                    c'8
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b'2.

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
