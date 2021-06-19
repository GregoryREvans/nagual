    \context Score = "nagual Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=80
            %! scaling time signatures
            \time 4/4
            \mark \markup \bold {  }
            s1 * 1
            - \rehearsal-mark-markup K 6 -1
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
            % [Global Context measure 2]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
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
            \time 6/4
            s1 * 3/2
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
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! applying ending skips
            \once \override Score.TimeSignature.stencil = ##f
            %! scaling time signatures
            \time 1/4
            s1 * 1/4

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
                            fs'1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            fs'2.

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
                                    fs'2

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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

                            fs'1.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            fs'1

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 7]

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

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

                                    f'16 * 16/35

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
                                    fs'1.
                                    \bar "||"

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" 
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
                            cs''1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            cs''2.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 3]

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

                                    c''16 * 16/35

                                    c''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs''2

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 5]

                            cs''1.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            cs''1

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 7]

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

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

                                    c''16 * 16/35

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
                                    cs''1.
                                    \bar "||"

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 8]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" 
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
                            cs'1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            cs'2.

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
                                    <c' cs'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'2

                                }

                            >>
                            %! applying indicators
                            \oneVoice
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

                            cs'1.
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            cs'1

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 7]

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

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'1.
                                    \bar "||"

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 8]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" 
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
                                    cs'8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'4.
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

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
                                cs'8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'8
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
                                    cs'2
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
                                % [Voice 4 measure 2]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'16
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
                                cs'8.
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
                            cs'16
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

                            \times 2/3
                            {

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                cs'4

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 3]

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

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

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
                                    cs'2

                                }

                            >>
                            %! applying indicators
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/2

                            R1 * 1/2

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 4 measure 5]

                                cs'2
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'2
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs'2
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'8
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

                                }

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
                                cs'4
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                            }

                            \times 2/3
                            {

                                \times 2/3
                                {
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 6]

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
                                    cs'4
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

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'8
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

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'8
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
                                cs'8
                                ]
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                cs'4.

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 7]

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

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

                                    c'16 * 16/35

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
                                    cs'1.
                                    \bar "||"

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 8]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.transparent = ##t
                            r1 * 1/8

                            %! applying ending skips
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/8
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" 
                            %! applying ending skips
                            \stopStaff \startStaff

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
