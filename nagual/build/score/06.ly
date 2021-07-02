    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=66
            \once \override Score.BarLine.X-extent = #'(0.5 . 3)
            \once \override Score.BarLine.thick-thickness = #3
            \bar ".|:"
            %! scaling time signatures
            \time 9/8
            \mark \markup \bold {  }
            s1 * 9/8
            - \rehearsal-mark-markup G 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"66" #"2" #"3"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #5 #9 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

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
            % [Global Context measure 3]

            \tempo 4=40
            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                   c.
                  \hspace #1
                  \abjad-metronome-mark-markup #2 #0 #1 #"40"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #3 #5 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            \once \override Score.BarLine.color = #red
            \once \override Score.SpanBar.color = #red
            \once \override Score.BarLine.X-extent = #'(1 . 2)
            \once \override Score.BarLine.thick-thickness = #3
            \bar ":|."
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            \tempo 4=66
            %! scaling time signatures
            \time 8/8
            s1 * 1
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
            % [Global Context measure 6]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 4/8
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
                                \override Staff.Stem.stemlet-length = 0.75
                                fs'8
                                [

                                fs'8

                                fs'8
                                ~

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ~
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            fs'8

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 2]

                                \override Staff.Stem.stemlet-length = 0.75
                                fs'8
                                ~
                                [

                                fs'8

                                fs'8
                                ~

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]

                            fs'8

                            fs'4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 3]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' fs'>16 * 16/35
                                    [
                                    (

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs'4

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 4]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' fs'>16 * 16/35
                                    [
                                    (

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs'4.

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4.

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                \override Staff.Stem.stemlet-length = 0.75
                                fs'8
                                [

                                fs'8

                                fs'8
                                ~

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ~
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            fs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            fs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            fs'8

                            fs'4

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 7]

                                \override Staff.Stem.stemlet-length = 0.75
                                fs'8
                                ~
                                [

                                fs'8

                                fs'8

                                fs'8

                                \revert Staff.Stem.stemlet-length
                                fs'8
                                ]
                                \bar "||"

                            }

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
                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''8
                                [

                                cs''8

                                \revert Staff.Stem.stemlet-length
                                cs''8
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 2]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''8
                                [

                                cs''8

                                \revert Staff.Stem.stemlet-length
                                cs''8
                                ~
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            r4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c'' cs''>16 * 16/35
                                    [
                                    (

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs''4

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            r4.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c'' cs''>16 * 16/35
                                    [
                                    (

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs''4.

                                }

                            >>

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 5]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''8
                                [

                                cs''8

                                \revert Staff.Stem.stemlet-length
                                cs''8
                                ~
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''8
                                [

                                cs''8
                                ~

                                \revert Staff.Stem.stemlet-length
                                cs''8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs''8
                            [

                            cs''8

                            \revert Staff.Stem.stemlet-length
                            cs''8
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 2 measure 7]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs''8
                                [

                                cs''8
                                ~

                                \revert Staff.Stem.stemlet-length
                                cs''8
                                ]
                                \bar "||"

                            }

                        }

                    }

                }

                \tag #'voice3
                {

                    \context Staff = "Staff 3"
                    {

                        \context Voice = "Voice 3"
                        {

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/9
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
                                cs'8
                                [
                                \boxed-markup "brushes + brake drum" 1

                                cs'8

                                cs'8
                                ~

                                cs'8

                                cs'8
                                ~

                                cs'8

                                cs'8

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                            }

                            cs'8

                            cs'4

                            cs'8
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            cs'8

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            cs'8

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]

                            cs'8

                            cs'4

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                <<

                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                        %! abjad.on_beat_grace_container(1)
                                        \set fontSize = #-4
                                        %! COMMENT_MEASURE_NUMBERS
                                        %! abjad.SegmentMaker.comment_measure_numbers()
                                        % [Voice 3 measure 3]

                                        %! abjad.on_beat_grace_container(2)
                                        \slash
                                        %! abjad.on_beat_grace_container(3)
                                        \voiceOne
                                        <c' cs'>16 * 16/21
                                        [
                                        (

                                        c'16 * 16/21

                                        c'16 * 16/21

                                        c'16 * 16/21
                                        )
                                        ]

                                    }

                                    \context Voice = "Voice 3"
                                    {
                                        \staff-line-count 4

                                        %! abjad.on_beat_grace_container(4)
                                        \voiceTwo
                                        cs'4
                                        \boxed-markup "yarn mallets + wood blocks" 1

                                    }

                                >>
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice

                                r8

                                <<

                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                        %! abjad.on_beat_grace_container(1)
                                        \set fontSize = #-4

                                        %! abjad.on_beat_grace_container(2)
                                        \slash
                                        %! abjad.on_beat_grace_container(3)
                                        \voiceOne
                                        <c' cs'>16 * 16/21
                                        [
                                        (

                                        c'16 * 16/21

                                        c'16 * 16/21

                                        c'16 * 16/21
                                        )
                                        ]

                                    }

                                    \context Voice = "Voice 3"
                                    {

                                        %! abjad.on_beat_grace_container(4)
                                        \voiceTwo
                                        cs'4

                                    }

                                >>

                            }
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                <<

                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                        %! abjad.on_beat_grace_container(1)
                                        \set fontSize = #-4
                                        %! COMMENT_MEASURE_NUMBERS
                                        %! abjad.SegmentMaker.comment_measure_numbers()
                                        % [Voice 3 measure 4]

                                        %! abjad.on_beat_grace_container(2)
                                        \slash
                                        %! abjad.on_beat_grace_container(3)
                                        \voiceOne
                                        <c' cs'>16 * 16/21
                                        [
                                        (

                                        c'16 * 16/21

                                        c'16 * 16/21

                                        c'16 * 16/21
                                        )
                                        ]

                                    }

                                    \context Voice = "Voice 3"
                                    {

                                        %! abjad.on_beat_grace_container(4)
                                        \voiceTwo
                                        cs'4

                                    }

                                >>
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice

                                r4

                                <<

                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                        %! abjad.on_beat_grace_container(1)
                                        \set fontSize = #-4

                                        %! abjad.on_beat_grace_container(2)
                                        \slash
                                        %! abjad.on_beat_grace_container(3)
                                        \voiceOne
                                        <c' cs'>16 * 16/21
                                        [
                                        (

                                        c'16 * 16/21

                                        c'16 * 16/21

                                        c'16 * 16/21
                                        )
                                        ]

                                    }

                                    \context Voice = "Voice 3"
                                    {

                                        %! abjad.on_beat_grace_container(4)
                                        \voiceTwo
                                        cs'4

                                    }

                                >>
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice

                                r4

                                <<

                                    \context Voice = "On_Beat_Grace_Container"
                                    {
                                        %! abjad.on_beat_grace_container(1)
                                        \set fontSize = #-4

                                        %! abjad.on_beat_grace_container(2)
                                        \slash
                                        %! abjad.on_beat_grace_container(3)
                                        \voiceOne
                                        <c' cs'>16 * 16/21
                                        [
                                        (

                                        c'16 * 16/21

                                        c'16 * 16/21
                                        )
                                        ]

                                    }

                                    \context Voice = "Voice 3"
                                    {

                                        %! abjad.on_beat_grace_container(4)
                                        \voiceTwo
                                        cs'4

                                    }

                                >>

                            }
                            \staff-line-count 1
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [
                            \boxed-markup "brushes + brake drum" 1

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            cs'4

                            cs'4

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            cs'8

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            cs'8

                            cs'4

                            cs'8
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
                                cs'8
                                [

                                cs'8

                                cs'8
                                ~

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ~
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            cs'8

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            cs'4

                            cs'8
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 4/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8
                                [

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' cs'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'4

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 4]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' cs'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' cs'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' cs'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'8

                                }

                            >>

                            \times 4/5
                            {
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 5]

                                \override Staff.Stem.stemlet-length = 0.75
                                cs'8
                                [

                                cs'8

                                cs'8
                                ~

                                cs'8

                                \revert Staff.Stem.stemlet-length
                                cs'8
                                ~
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

                            \override Staff.Stem.stemlet-length = 0.75
                            cs'8.
                            [

                            \revert Staff.Stem.stemlet-length
                            cs'8.
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 7]

                            cs'8

                            cs'4

                            cs'8
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
