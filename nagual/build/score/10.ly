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
            - \rehearsal-mark-markup M 6 -1
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
                            \markup { \hcenter-in #12 "bs. fl." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            d''4.
                            \p
                            ~

                            d''4
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            d''2.
                            ~

                            d''4.
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

                            eqf''2.
                            \mp
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            d''2.
                            \mf
                            \<
                            ~

                            d''4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            d''1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            d''2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            d''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 12]

                            d''2.
                            ~

                            d''4.

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
                                    b'16 * 16/35
                                    [
                                    (

                                    fs''16 * 16/35

                                    g''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35

                                    cs'''16 * 16/35

                                    ef'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b'2.
                                    \f
                                    ~

                                    b'4.

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 14]

                            r8

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                bf'8
                                :32
                                \sfz
                                [

                                bf'8
                                :32
                                \sfz

                                bf'8
                                :32
                                \sfz

                                bf'8
                                :32
                                \sfz

                                \revert Staff.Stem.stemlet-length
                                bf'8
                                :32
                                \sfz
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 15]

                            \override Staff.Stem.stemlet-length = 0.75
                            bf'8
                            :32
                            \sfz
                            [

                            bf'8
                            :32
                            \sfz

                            \revert Staff.Stem.stemlet-length
                            bf'8
                            :32
                            \sfz
                            ]

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 16]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    a'16 * 16/35
                                    [
                                    (

                                    e''16 * 16/35

                                    f''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35

                                    b''16 * 16/35

                                    cs'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    a'2..
                                    \f

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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
                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
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

                            fqs''1
                            \p
                            ~
                            \boxed-markup "spazzolato" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            fqs''2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 7]

                            fqs''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            fqs''2.
                            ~

                            fqs''4.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 9]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 10]

                            f''2.
                            \mp
                            \<
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 11]

                            f''2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 12]

                            f''2.
                            ~

                            f''4.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 13]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    fs'16 * 16/35
                                    [
                                    (

                                    cs''16 * 16/35

                                    d''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35

                                    af''16 * 16/35

                                    bf''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs'2.
                                    \f
                                    ~
                                    \boxed-markup "normale" 1

                                    fs'4.

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 14]

                            r8

                            \times 2/3
                            {

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
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 15]

                            \override Staff.Stem.stemlet-length = 0.75
                            <g' fs'' af''>8
                            :32
                            \sfz
                            [

                            <g' fs'' af''>8
                            :32
                            \sfz

                            \revert Staff.Stem.stemlet-length
                            <g' fs'' af''>8
                            :32
                            \sfz
                            ]

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 16]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    bf'16 * 16/35
                                    [
                                    (

                                    f''16 * 16/35

                                    fs''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35

                                    c'''16 * 16/35

                                    d'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    bf'2..
                                    \f

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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
                            %! applying indicators
                            \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
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
                            r1 * 3/16

                            R1 * 3/16
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 5/16

                            R1 * 5/16
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

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
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

                            c'2
                            \p
                            \<
                            ~
                            \boxed-markup "superball + tam tam" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            c'2.
                            ~

                            c'4.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 9]

                            c'1
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 10]

                            c'2.
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 11]

                            c'2
                            ~
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 12]

                            c'2.
                            ~

                            c'4.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 13]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    d'16 * 16/35
                                    [
                                    (

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    d'16 * 16/35

                                    b16 * 16/35

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    b16 * 16/35

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {
                                    \staff-line-count 4

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    d'2.
                                    \f
                                    ~
                                    \boxed-markup "yarn mallets + wood blocks" 1

                                    d'4.

                                }

                            >>
                            \staff-line-count 1
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 14]

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            :32
                            \sfz
                            [
                            \boxed-markup "bass drum" 1

                            \revert Staff.Stem.stemlet-length
                            c'8
                            :32
                            \sfz
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            :32
                            \sfz
                            [

                            \revert Staff.Stem.stemlet-length
                            c'8
                            :32
                            \sfz
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 15]

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            :32
                            \sfz
                            [

                            c'8
                            :32
                            \sfz

                            \revert Staff.Stem.stemlet-length
                            c'8
                            :32
                            \sfz
                            ]

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 16]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    b16 * 16/35
                                    [
                                    (

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    d'16 * 16/35

                                    f'16 * 16/35

                                    b16 * 16/35

                                    f'16 * 16/35

                                    b16 * 16/35

                                    f'16 * 16/35

                                    b16 * 16/35

                                    d'16 * 16/35

                                    b16 * 16/35

                                    d'16 * 16/35

                                    b16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    d'16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35

                                    g16 * 16/35

                                    b16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {
                                    \staff-line-count 4

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b2..
                                    \f
                                    \boxed-markup "yarn mallets + wood blocks" 1

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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
                                \clef "alto"
                                c4
                                \mf
                                \<
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                                - \tweak staff-padding 3.5
                                \startTextSpanOne
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'8
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a'8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            d'16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a16
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e8
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            g8
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/4
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 3]

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
                                g'8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf8
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
                                f'8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \diamond-parenthesized-double-diamond-markup
                                \startTrillSpan

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 4]

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \diamond-parenthesized-double-diamond-markup
                                    \startTrillSpan

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
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
                                    d'8
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
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
                                    c'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \double-diamond-parenthesized-top-markup
                                \startTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'4.
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \diamond-parenthesized-double-diamond-markup
                                \startTrillSpan

                            }

                            \times 2/3
                            {

                                \times 4/5
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 5]

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'4.
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \diamond-parenthesized-double-diamond-markup
                                    \startTrillSpan

                                }

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                fs8
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                                - \tweak staff-padding 3.5
                                \startTextSpanOne
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                af8
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

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e'2
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 6]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                fs16
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf8.
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            f16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c16
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            cs16
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
                                c'8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 7]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d'8
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                a8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g16
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

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g'8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 8]

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf4
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
                                    f'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \diamond-parenthesized-double-diamond-markup
                                    \startTrillSpan

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
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
                                    e8
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
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
                                    d'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g'8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \double-diamond-parenthesized-top-markup
                                \startTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'4.
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \diamond-parenthesized-double-diamond-markup
                                \startTrillSpan

                            }

                            \times 2/3
                            {

                                \times 4/5
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 9]

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'4.
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'8
                                    [
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { poco \hspace #1 gridato \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { molto gridato }
                                    - \tweak staff-padding 7
                                    \startTextSpanTwo
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \diamond-parenthesized-double-diamond-markup
                                    \startTrillSpan

                                }

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                d'8
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                                - \tweak staff-padding 3.5
                                \startTextSpanOne
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                ef8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                fs8
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

                                \times 2/3
                                {

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af2
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

                            }

                            \times 4/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 10]

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
                                f'16
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                fs8.
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            ef16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            bf16
                            ]
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            f16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c16
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
                                c8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs4
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

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 11]

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
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
                                \stopTrillSpan
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
                                d'8
                                [
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
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
                                a8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando
                                \stopTrillSpan
                                - \tweak padding #2
                                - \tweak staff-padding #1
                                - \tweak bound-details.right.padding #2
                                - \tweak bound-details.left.text
                                \double-diamond-parenthesized-top-markup
                                \startTrillSpan

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/4
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 12]

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \diamond-parenthesized-double-diamond-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan
                                    - \tweak padding #2
                                    - \tweak staff-padding #1
                                    - \tweak bound-details.right.padding #2
                                    - \tweak bound-details.left.text
                                    \double-diamond-parenthesized-top-markup
                                    \startTrillSpan

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'8
                                    [
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \damp-markup \hspace #0.5 }
                                    - \tweak staff-padding 3.5
                                    \startTextSpanOne
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando
                                    \stopTrillSpan

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    bf8
                                    \stopTextSpanTwo
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                e4.
                                \fff

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 13]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    c'16 * 16/35
                                    [
                                    (

                                    g'16 * 16/35

                                    af'16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35

                                    d''16 * 16/35

                                    e''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    c'2.
                                    \f
                                    - \boxed-markup "normale" 1
                                    \stopTextSpanOne
                                    ~

                                    c'4.

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 14]

                            r8

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

                                \once \override Beam.grow-direction = #right
                                \override Staff.Stem.stemlet-length = 0.75
                                g''16 * 63/32
                                :32
                                [
                                \boxed-markup "col legno tratto" 1

                                \revert Staff.Stem.stemlet-length
                                b'16 * 115/64
                                :32

                                r16 * 91/64

                                bf''16 * 35/32
                                :32

                                r16 * 29/32

                                \revert Staff.Stem.stemlet-length
                                c''16 * 13/16
                                :32
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
                                % [Voice 4 measure 15]

                                \once \override Beam.grow-direction = #left
                                \override Staff.Stem.stemlet-length = 0.75
                                c''16 * 5/8
                                :32
                                [

                                r16 * 43/64

                                r16 * 51/64

                                \override Staff.Stem.stemlet-length = 0.75
                                bf'16 * 65/64
                                :32

                                a'16 * 85/64
                                :32

                                \revert Staff.Stem.stemlet-length
                                af'16 * 25/16
                                :32
                                ]

                            }
                            \revert TupletNumber.text

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 16]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    cs'16 * 16/35
                                    [
                                    (

                                    af'16 * 16/35

                                    a'16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35

                                    ef''16 * 16/35

                                    f''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'2..
                                    \boxed-markup "crine" 1

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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
