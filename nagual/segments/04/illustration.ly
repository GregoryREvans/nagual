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

            \tempo 4=120
            %! scaling time signatures
            \time 6/8
            \mark \markup \bold {  }
            s1 * 3/4
            - \rehearsal-mark-markup E 6 -1
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"120"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation-tuplet-lhs #2 #0 #5 #6 #2 #0 #'(0.8 . 0.8)
                  \hspace #0.5
                  \upright ]
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            \tempo 4=60
            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            \tweak padding 6
            ^ \markup {
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"60"
                  \hspace #1
                  \upright [
                  \abjad-metric-modulation #1 #0 #2 #0 #'(0.6 . 0.6)
                  \hspace #0.5
                  \upright ]
              }
            }
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

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
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
                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' g''>16 * 16/35
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
                                    g''4.
                                    \mf

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4.

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 2]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <f' a'>16 * 16/35
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
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    \hauptStimmeStart
                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    a'2
                                    \f

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r2
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            \hauptStimmeStop
                            r2.

                            r8

                            \nebenStimmeStart
                            \override Staff.Stem.stemlet-length = 0.75
                            f'8.
                            :32
                            \f
                            \>
                            [
                            \boxed-markup "tone + air" 1

                            \revert Staff.Stem.stemlet-length
                            bf'16
                            :32
                            ~
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            \nebenStimmeStop
                            \override Staff.Stem.stemlet-length = 0.75
                            bf'16
                            :32
                            [

                            bqf'16
                            :32
                            ~

                            bqf'8.
                            :32

                            \revert Staff.Stem.stemlet-length
                            g'16
                            :32
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            g'8.
                            :32
                            [

                            aqf'16
                            \p
                            - \tenuto

                            g'16

                            \revert Staff.Stem.stemlet-length
                            gqf'16
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            fqs'16
                            [

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]

                            r4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            %! applying invisibility
                            \once \override Rest.transparent = ##t
                            r1 * 1/4

                            R1 * 1/4
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
                                    <c'' b''>16 * 16/35
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
                                    b''4.
                                    \mf

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 2]

                            r2

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <g' c''>16 * 16/35
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
                                    )
                                    ]

                                }

                                \context Voice = "Voice 2"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    g'2
                                    \f

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 3]

                            r4.

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/2
                            {

                                ef''4.
                                :32
                                \f
                                \>
                                \boxed-markup "spazzolato" 1

                                e''8
                                :32
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 2 measure 4]

                            \override Staff.Stem.stemlet-length = 0.75
                            e''16
                            :32
                            [

                            c''16
                            \p
                            - \tenuto

                            d''16

                            c''16

                            e''16

                            \revert Staff.Stem.stemlet-length
                            d''16
                            ]

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
                                c'''16 * 63/32
                                \mp
                                [
                                \boxed-markup "pizz + dolce" 1

                                \revert Staff.Stem.stemlet-length
                                af''16 * 115/64

                                r16 * 91/64

                                g'''16 * 35/32

                                r16 * 29/32

                                \revert Staff.Stem.stemlet-length
                                b''16 * 13/16
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
                            \staff-line-count 4
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
                            \nebenStimmeStart
                            \clef "percussion"
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
                                    <g c'>16 * 16/35
                                    [
                                    (

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
                                    g8
                                    \p
                                    \boxed-markup "yarn mallets + wood blocks" 1

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
                                    <b c'>16 * 16/35
                                    [
                                    (

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
                                    b8
                                    \mp

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 2]

                            \nebenStimmeStop
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
                                    <b c'>16 * 16/35
                                    [
                                    (

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
                                    b8
                                    \mf

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r8

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
                                    <c' d'>16 * 16/35
                                    [
                                    (

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
                                    d'8
                                    \f

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            r4
                            \staff-line-count 1
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 3 measure 3]

                            r2.

                            r8

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8
                            :32
                            \f
                            \>
                            [
                            \boxed-markup "brushes + brake drum" 1

                            \revert Staff.Stem.stemlet-length
                            c'8
                            :32
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/11
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 3 measure 4]

                                c'8
                                :32

                                c'4
                                :32

                                \override Staff.Stem.stemlet-length = 0.75
                                c'8.
                                :32
                                [

                                c'8
                                :32

                                \revert Staff.Stem.stemlet-length
                                c'8
                                :32
                                ]

                                c'4
                                :32

                                \override Staff.Stem.stemlet-length = 0.75
                                c'16
                                \p
                                - \tenuto
                                [

                                c'16

                                c'16

                                c'16

                                \revert Staff.Stem.stemlet-length
                                c'16
                                ]

                            }

                            r4

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 3 measure 5]

                                    %! abjad.on_beat_grace_container(2)
                                    \slash
                                    %! abjad.on_beat_grace_container(3)
                                    \voiceOne
                                    <c' d'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {
                                    \staff-line-count 4

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    d'8
                                    \mf
                                    \boxed-markup "yarn mallets + wood blocks" 1

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
                                    <c' f'>16 * 16/35
                                    [
                                    (

                                    c'16 * 16/35
                                    )
                                    ]

                                }

                                \context Voice = "Voice 3"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    f'8
                                    \f
                                    \bar "||"

                                }

                            >>

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
                                    <c' d''>16 * 16/35
                                    [
                                    (

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
                                    d''4
                                    \mp

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
                                    <c' e'>16 * 16/35
                                    [
                                    (

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
                                    e'4
                                    \mf

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 2]

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
                                    <c' b'>16 * 16/35
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
                                    b'8
                                    \f
                                    ~

                                    b'8

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
                                    <g c'>16 * 16/35
                                    [
                                    (

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
                                    g4
                                    \mf

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
                                    <c' d''>16 * 16/35
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
                                    d''8
                                    \f

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 3]

                            r4.

                            \override Staff.Stem.stemlet-length = 0.75
                            c'8.
                            :32
                            \f
                            \>
                            [
                            \boxed-markup "spazzolato" 1

                            \revert Staff.Stem.stemlet-length
                            e'8.
                            :32
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            e'16
                            :32
                            [

                            ef'16
                            \p
                            - \tenuto

                            c'16

                            ef'16

                            e'16

                            \revert Staff.Stem.stemlet-length
                            f'16
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 4]

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
                                    <c' e'>16 * 16/35
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
                                    e'8
                                    \p
                                    ~
                                    \boxed-markup "normale + ponticello" 1

                                    e'8

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
                                    <c' b'>16 * 16/35
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
                                    b'8
                                    \mp
                                    ~

                                    b'8

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
                                    <g c'>16 * 16/35
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
                                    g8
                                    \mf

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 4 measure 5]

                            \hauptStimmeStart
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
                                    <c' d''>16 * 16/35
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
                                    d''4
                                    \f

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice

                            \hauptStimmeStop
                            r8
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}