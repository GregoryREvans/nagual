    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=100
            %! scaling time signatures
            \time 5/8
            \mark \markup \bold {  }
            s1 * 5/8
            - \rehearsal-mark-markup K 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"100"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-rhs #2 #0 #2 #0 #5 #6 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            \bacaStopTextSpanMM
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
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
            \time 9/8
            s1 * 9/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 7/8
            s1 * 7/8
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
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 14]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 15]

            %! scaling time signatures
            \time 3/8
            s1 * 3/8

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
                            \markup { \hcenter-in #12 "bs. fl." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16
                            %! applying indicators
                            \boxed-markup "change to Bass Flute" 1

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
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

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 7/16

                            R1 * 7/16

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 10]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    ef''16 * 16/35
                                    [
                                    (

                                    a''16 * 16/35

                                    f''16 * 16/35

                                    af''8 * 8/35

                                    fs''16 * 16/35

                                    g''8 * 8/35

                                    fs''16 * 16/35

                                    g''16 * 16/35

                                    fs''16 * 16/35

                                    g''8 * 8/35

                                    fs''16 * 16/35

                                    g''8 * 8/35

                                    fs''16 * 16/35

                                    g''16 * 16/35

                                    fs''16 * 16/35

                                    f''8 * 8/35

                                    e''16 * 16/35

                                    ef''8 * 8/35

                                    a''16 * 16/35

                                    f''16 * 16/35

                                    af''16 * 16/35

                                    fs''8 * 8/35

                                    g''16 * 16/35

                                    fs''8 * 8/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    ef''2.
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16
                            %! applying indicators
                            \!

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    b'16 * 16/35
                                    [
                                    (

                                    f''16 * 16/35

                                    cs''16 * 16/35

                                    e''8 * 8/35

                                    d''16 * 16/35

                                    ef''8 * 8/35

                                    d''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b'4
                                    \mp
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 13]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    d''16 * 16/35
                                    [
                                    (

                                    af''16 * 16/35

                                    e''8 * 8/35

                                    g''16 * 16/35

                                    f''8 * 8/35

                                    fs''16 * 16/35

                                    f''16 * 16/35

                                    fs''16 * 16/35

                                    f''8 * 8/35

                                    fs''16 * 16/35

                                    f''8 * 8/35

                                    e''16 * 16/35

                                    ef''16 * 16/35

                                    d''16 * 16/35

                                    af''8 * 8/35

                                    e''16 * 16/35

                                    g''8 * 8/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    d''4.
                                    ~

                                    d''8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4
                            \!

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 14]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    fs''16 * 16/35
                                    [
                                    (

                                    c'''16 * 16/35

                                    af''16 * 16/35

                                    b''8 * 8/35

                                    a''16 * 16/35

                                    bf''8 * 8/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''8 * 8/35

                                    a''16 * 16/35

                                    af''8 * 8/35

                                    g''16 * 16/35

                                    fs''16 * 16/35

                                    c'''16 * 16/35

                                    af''8 * 8/35

                                    b''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs''4.
                                    \mf
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~

                                    fs''8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8
                            \!
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
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
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 7/16

                            R1 * 7/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 13]

                            r8

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    cs''8 * 8/35
                                    [
                                    (

                                    g''16 * 16/35

                                    ef''16 * 16/35

                                    fs''16 * 16/35

                                    e''8 * 8/35

                                    f''16 * 16/35

                                    e''8 * 8/35

                                    f''16 * 16/35

                                    e''16 * 16/35

                                    ef''16 * 16/35

                                    d''8 * 8/35

                                    cs''16 * 16/35

                                    g''8 * 8/35

                                    ef''16 * 16/35

                                    fs''16 * 16/35

                                    e''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs''4
                                    \mf
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~

                                    cs''4

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    g''8 * 8/35
                                    [
                                    (

                                    cs'''16 * 16/35

                                    a''8 * 8/35

                                    c'''16 * 16/35

                                    bf''16 * 16/35

                                    b''16 * 16/35

                                    c'''8 * 8/35

                                    b''16 * 16/35

                                    c'''8 * 8/35

                                    b''16 * 16/35

                                    c'''16 * 16/35

                                    b''16 * 16/35

                                    c'''8 * 8/35

                                    b''16 * 16/35

                                    bf''8 * 8/35

                                    a''16 * 16/35

                                    af''16 * 16/35

                                    g''16 * 16/35

                                    cs'''8 * 8/35

                                    a''16 * 16/35

                                    c'''8 * 8/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    g''8
                                    ~
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 14]

                                    g''4.
                                    ~

                                    g''8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8
                            \!
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
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

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/6
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
                                c'8
                                - \accent
                                [
                                \boxed-markup "bass drum" 1

                                c'8

                                c'8

                                c'8

                                c'8

                                \revert Staff.Stem.stemlet-length
                                c'8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            - \accent
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 5]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            - \accent
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 7]

                            r4

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            - \accent
                            [

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            [

                            c'16

                            c'16

                            c'16

                            c'16

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
                            r1 * 7/16

                            R1 * 7/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/4
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 11]

                                \hauptStimmeStart
                                c'8
                                - \accent
                                [

                                c'8

                                c'8

                                c'8
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            %! applying indicators
                            \hauptStimmeStop
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 13]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/8

                            R1 * 3/8
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 14]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 15]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            - \accent
                            [

                            c'16

                            c'16

                            c'16

                            c'16

                            \revert Staff.Stem.stemlet-length
                            c'16
                            ]
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
                            \markup { \hcenter-in #12 "va." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Viola" }
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16
                            %! applying indicators
                            \boxed-markup "change to Viola" 1

                            R1 * 5/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 9/16

                            R1 * 9/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 6]

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
                                    % [Voice 4 measure 7]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    e'16 * 16/35
                                    [
                                    (

                                    bf'16 * 16/35

                                    fs'16 * 16/35

                                    a'8 * 8/35

                                    g'16 * 16/35

                                    af'8 * 8/35

                                    g'16 * 16/35

                                    af'16 * 16/35

                                    g'16 * 16/35

                                    af'8 * 8/35

                                    g'16 * 16/35

                                    fs'8 * 8/35

                                    f'16 * 16/35

                                    e'16 * 16/35

                                    bf'16 * 16/35

                                    fs'8 * 8/35

                                    a'16 * 16/35

                                    g'8 * 8/35

                                    af'16 * 16/35

                                    g'16 * 16/35

                                    af'16 * 16/35

                                    g'8 * 8/35

                                    fs'16 * 16/35

                                    f'8 * 8/35

                                    e'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    \clef "alto"
                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e'2.
                                    \p
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4
                            %! applying indicators
                            \!

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 9]

                            r4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    f'16 * 16/35
                                    [
                                    (

                                    b'16 * 16/35

                                    g'8 * 8/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    f'8
                                    \mp
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    bf16 * 16/35
                                    [
                                    (

                                    e'8 * 8/35

                                    c'16 * 16/35

                                    ef'16 * 16/35

                                    cs'16 * 16/35

                                    d'8 * 8/35

                                    cs'16 * 16/35

                                    d'8 * 8/35

                                    cs'16 * 16/35

                                    c'16 * 16/35

                                    b16 * 16/35

                                    bf8 * 8/35

                                    e'16 * 16/35

                                    c'8 * 8/35

                                    ef'16 * 16/35

                                    cs'16 * 16/35

                                    d'16 * 16/35

                                    cs'8 * 8/35

                                    d'16 * 16/35

                                    cs'8 * 8/35

                                    c'16 * 16/35

                                    b16 * 16/35

                                    bf16 * 16/35

                                    e'8 * 8/35

                                    c'16 * 16/35

                                    ef'8 * 8/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    bf2
                                    ~
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 10]

                                    bf4

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    c'16 * 16/35
                                    [
                                    (

                                    fs'16 * 16/35

                                    d'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    c'8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4.
                            \!
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 11]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 12]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    ef'8 * 8/35
                                    [
                                    (

                                    a'16 * 16/35

                                    f'8 * 8/35

                                    af'16 * 16/35

                                    fs'16 * 16/35

                                    g'16 * 16/35

                                    fs'8 * 8/35

                                    g'16 * 16/35

                                    fs'8 * 8/35

                                    f'16 * 16/35

                                    e'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    ef'4.
                                    \mf
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 13]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'16
                            :32
                            \>
                            [
                            \boxed-markup "spazzolato" 1

                            eqf'16
                            :32
                            ~

                            eqf'8.
                            :32

                            \revert Staff.Stem.stemlet-length
                            ef'16
                            :32
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            ef'8.
                            :32
                            [

                            c'16
                            \pp
                            - \accent

                            cqs'16

                            \revert Staff.Stem.stemlet-length
                            dqf'16
                            ]

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 14]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    b16 * 16/35
                                    [
                                    (

                                    f'8 * 8/35

                                    cs'16 * 16/35

                                    e'8 * 8/35

                                    d'16 * 16/35

                                    ef'16 * 16/35

                                    d'16 * 16/35

                                    ef'8 * 8/35

                                    d'16 * 16/35

                                    cs'8 * 8/35

                                    c'16 * 16/35

                                    b16 * 16/35

                                    f'16 * 16/35

                                    cs'8 * 8/35

                                    e'16 * 16/35

                                    d'8 * 8/35

                                    ef'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b4.
                                    \f
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \boxed-markup "normale" 1

                                    b8

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8
                            \!
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 15]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
