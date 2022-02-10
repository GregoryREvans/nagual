import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    bis_handler,
    clef_whitespace,
    grace_handler_10,
    met_80,
    met_100,
    met_mod_80_100,
    met_mod_100_80,
    quarter_up,
    sforzandi,
    start_damp,
    start_repeat_before,
    start_scratch,
    stop_damp,
    stop_scratch,
    toggle_tuplet_prolation,
    tremolo_handler,
    zero_padding_glissando,
)
from nagual.materials.instruments import alt_instruments
from nagual.materials.pitch import grace_pitch_handler_10
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_10
from nagual.materials.timespans import handler_commands_10, rhythm_commands_10

maker = evans.SegmentMaker(
    instruments=alt_instruments,
    names=[
        '"Bass Flute"',
        '"Guitar"',
        '"Percussion"',
        '"Viola"',
    ],
    abbreviations=[
        '"bs. fl."',
        '"gt."',
        '"pc."',
        '"va."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands_10,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_10,
        # evans.call(
        #     "score",
        #     with_sharps,
        #     lambda _: abjad.Selection(_).components(abjad.Score),
        # ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "Voice 2",
            quarter_up,
            baca.selectors.note(0),
        ),
        evans.attach(
            "Global Context",
            met_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_80_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_80,
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Global Context",
            met_mod_100_80,
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Global Context",
            met_100,
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Global Context",
            met_mod_80_100,
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Global Context",
            met_80,
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Global Context",
            met_mod_100_80,
            baca.selectors.leaf(15),
        ),
        evans.call(
            "Voice 1",
            sforzandi,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24, 25, 26]),
        ),
        evans.call(
            "Voice 1",
            tremolo_handler,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24, 25, 26]),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(16),
        ),
        evans.call(
            "Voice 2",
            sforzandi,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24]),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24]),
        ),
        evans.call(
            "Voice 3",
            sforzandi,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24, 25]),
        ),
        evans.call(
            "Voice 3",
            tremolo_handler,
            baca.selectors.leaves([19, 20, 21, 22, 23, 24, 25]),
        ),
        evans.call(
            "Voice 4",
            bis_handler,
            baca.selectors.leaves(
                [
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                    52,
                    53,
                    54,
                    55,
                    56,
                    71,
                    72,
                    73,
                    74,
                    75,
                    76,
                    77,
                    78,
                ]
            ),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(24),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(45),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(71),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(79),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(85),
        ),
        evans.attach(
            "Voice 4",
            start_scratch,
            baca.selectors.leaf(56),
        ),
        evans.attach(
            "Voice 4",
            stop_scratch,
            baca.selectors.leaf(80),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r'\boxed-markup "normale" 1'),
            baca.selectors.leaf(85),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([88, 89, 91, 93, 94, 97, 98, 99]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            clef_whitespace,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + tam tam" 1', format_slot="after"
            ),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 4", format_slot="absolute_before"
            ),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + wood blocks" 1', format_slot="after"
            ),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(18),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "bass drum" 1', format_slot="after"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 4", format_slot="absolute_before"
            ),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + wood blocks" 1', format_slot="after"
            ),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("alto"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 4",
            toggle_tuplet_prolation,
            baca.selectors.tuplets([1]),
        ),
        evans.call(
            "Voice 4",
            abjad.beam,
            baca.selectors.tuplets([1]),
        ),
        evans.call(
            "Voice 4",
            zero_padding_glissando,
            baca.selectors.leaves([_ for _ in range(85)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(88, 100)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(88, 94)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(94, 100)]),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(84),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(85),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "col legno tratto" 1', format_slot="after"
            ),
            baca.selectors.leaf(88),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "crine" 1', format_slot="after"),
            baca.selectors.leaf(100),
        ),
        evans.call(
            "Voice 1",
            grace_handler_10,
            baca.selectors.leaves([16, 27]),
        ),
        evans.call(
            "Staff 1",
            grace_pitch_handler_10,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(37, grace=True),
        ),
        evans.call(
            "Voice 2",
            grace_handler_10,
            baca.selectors.leaves([16, 25]),
        ),
        evans.call(
            "Staff 2",
            grace_pitch_handler_10,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(37, grace=True),
        ),
        evans.call(
            "Voice 3",
            grace_handler_10,
            baca.selectors.leaves([16, 26]),
        ),
        evans.call(
            "Staff 3",
            grace_pitch_handler_10,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 3",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 3",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(37, grace=True),
        ),
        evans.call(
            "Voice 4",
            grace_handler_10,
            baca.selectors.leaves([85, 100]),
        ),
        evans.call(
            "Staff 4",
            grace_pitch_handler_10,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(37, grace=True),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup M 6 -1"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            start_repeat_before,
            baca.selectors.leaf(0),
        ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     lambda _: abjad.Selection(_),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_10,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="10",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
