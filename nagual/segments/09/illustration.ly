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

            \tempo 4=80
            %! scaling time signatures
            \time 4/4
            \mark \markup \bold {  }
            s1 * 1
            - \rehearsal-mark-markup L 6 -1
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
                            \markup { \hcenter-in #12 "bs. fl." }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Bass Flute" }
                            af''1
                            \p
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            a''2.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 3]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    e''16 * 16/35
                                    [
                                    (

                                    fs'''16 * 16/35

                                    d'''16 * 16/35

                                    bf'''16 * 16/35

                                    a'''16 * 16/35

                                    bf'''16 * 16/35

                                    a'''16 * 16/35

                                    bf'''16 * 16/35

                                    a'''16 * 16/35

                                    fs'''16 * 16/35

                                    d'''16 * 16/35

                                    e''16 * 16/35

                                    fs'''16 * 16/35

                                    d'''16 * 16/35

                                    bf'''16 * 16/35

                                    a'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e''2
                                    \f

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

                            b''1.
                            \p
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            c'''1

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 7]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    g''16 * 16/35
                                    [
                                    (

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    g''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    g''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    g''16 * 16/35

                                    a'''16 * 16/35

                                    f'''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35

                                    cs''''16 * 16/35

                                    c''''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    g''1.
                                    \f
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
                            <d' fs'>1
                            :32
                            \p
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            <af a>2.
                            :32

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 3]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    cs''16 * 16/35
                                    [
                                    (

                                    ef'''16 * 16/35

                                    b''16 * 16/35

                                    g'''16 * 16/35

                                    fs'''16 * 16/35

                                    g'''16 * 16/35

                                    fs'''16 * 16/35

                                    g'''16 * 16/35

                                    fs'''16 * 16/35

                                    ef'''16 * 16/35

                                    b''16 * 16/35

                                    cs''16 * 16/35

                                    ef'''16 * 16/35

                                    b''16 * 16/35

                                    g'''16 * 16/35

                                    fs'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs''2
                                    \f

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

                            <b c'>1.
                            :32
                            \p
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 6]

                            <d' fs'>1
                            :32

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 2 measure 7]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    fs''16 * 16/35
                                    [
                                    (

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs''1.
                                    \f
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
                            \staff-line-count 5
                            \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
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
                            \clef "treble"
                            <af' a'>1
                            \p
                            \boxed-markup "yarn mallets + vibraphone" 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            <a' b'>2.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 3]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    b'16 * 16/35
                                    [
                                    (

                                    cs'''16 * 16/35

                                    a''16 * 16/35

                                    f'''16 * 16/35

                                    e'''16 * 16/35

                                    f'''16 * 16/35

                                    e'''16 * 16/35

                                    f'''16 * 16/35

                                    e'''16 * 16/35

                                    cs'''16 * 16/35

                                    a''16 * 16/35

                                    b'16 * 16/35

                                    cs'''16 * 16/35

                                    a''16 * 16/35

                                    f'''16 * 16/35

                                    e'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    b'2
                                    \f

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

                            <c'' d''>1.
                            \p
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 6]

                            <d'' fs''>1

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 7]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    fs''16 * 16/35
                                    [
                                    (

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    fs''16 * 16/35

                                    af'''16 * 16/35

                                    e'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35

                                    c''''16 * 16/35

                                    b'''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    fs''1.
                                    \f
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
                                    \markup { \hcenter-in #12 "va." }
                                    %! applying staff names and clefs
                                    \set Staff.instrumentName =
                                    %! applying staff names and clefs
                                    \markup { \hcenter-in #14 "Viola" }
                                    \clef "alto"
                                    ef8
                                    \mf
                                    \<
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d4.
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    b8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

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
                                b8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e'8
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
                                    c'2
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
                                d'16
                                [
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

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                c'8.
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
                            a16
                            [
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            bf16
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

                            \tweak Accidental.stencil ##f
                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            cs16
                            %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                            %! abjad.glissando(7)
                            \glissando

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

                            \times 2/3
                            {

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                cs8
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                fs4

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 4 measure 3]

                                    \overhead-accidentals -1
                                    \slash
                                    \voiceOne
                                    d'16 * 16/35
                                    [
                                    (

                                    e''16 * 16/35

                                    c''16 * 16/35

                                    af''16 * 16/35

                                    g''16 * 16/35

                                    af''16 * 16/35

                                    g''16 * 16/35

                                    af''16 * 16/35

                                    g''16 * 16/35

                                    e''16 * 16/35

                                    c''16 * 16/35

                                    d'16 * 16/35

                                    e''16 * 16/35

                                    c''16 * 16/35

                                    af''16 * 16/35

                                    g''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    d'2
                                    \f

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

                                a2
                                \mf
                                \<
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                bf2
                                %! abjad.glissando(7)
                                - \abjad-zero-padding-glissando
                                %! abjad.glissando(7)
                                \glissando

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                g'2
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
                                    e'8
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

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    fs'8
                                    ]
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

                                \tweak Accidental.stencil ##f
                                \tweak X-extent #'(0 . 0)
                                \tweak transparent ##t
                                e'4
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
                                    fs'4
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

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af'4
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
                                    f'8
                                    [
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e'8
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g4
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

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

                                ef4.

                            }

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

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    e'16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    e'16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    e'16 * 16/35

                                    fs''16 * 16/35

                                    d''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35

                                    bf''16 * 16/35

                                    a''16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 4"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e'1.
                                    \f
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
}