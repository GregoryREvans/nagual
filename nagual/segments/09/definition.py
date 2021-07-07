import pathlib

import abjad
import baca
import evans

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    bis_handler,
    clef_whitespace,
    grace_handler_09,
    met_80,
    met_mod_100_80,
    start_damp,
    start_scratch,
    stop_damp,
    stop_scratch,
    tremolo_handler,
    two_octaves_down,
    zero_padding_glissando,
)
from nagual.materials.instruments import alt_instruments
from nagual.materials.pitch import grace_pitch_handler_09
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_09
from nagual.materials.timespans import handler_commands_09, rhythm_commands_09

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
        rhythm_commands_09,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_09,
        # evans.call(
        #     "score",
        #     with_sharps,
        #     abjad.select().components(abjad.Score),
        # ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "Voice 2",
            two_octaves_down,
            baca.selectors.leaves([0, 1, 4, 5]),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([0, 1, 4, 5]),
        ),
        evans.call(
            "Voice 4",
            zero_padding_glissando,
            baca.selectors.leaves([_ for _ in range(18)]),
        ),
        evans.call(
            "Voice 4",
            zero_padding_glissando,
            baca.selectors.leaves([_ for _ in range(20, 38)]),
        ),
        evans.attach(
            "Global Context",
            met_80,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_100_80,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 5", format_slot="absolute_before"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + vibraphone" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("treble"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            clef_whitespace,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("alto"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(8),
        ),
        evans.call(
            "Voice 4",
            bis_handler,
            baca.selectors.leaves(
                [
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    20,
                    21,
                    22,
                    23,
                    24,
                    33,
                    34,
                    35,
                    36,
                ]
            ),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 4",
            start_scratch,
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 4",
            stop_scratch,
            baca.selectors.leaf(36),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r'\boxed-markup "normale" 1', literal=True),
            baca.selectors.leaf(38),
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
            abjad.Dynamic("f"),
            baca.selectors.leaf(18),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(38),
        ),
        evans.call(
            "Voice 1",
            grace_handler_09,
            baca.selectors.leaves([2, 6]),
        ),
        evans.call(
            "Staff 1",
            grace_pitch_handler_09,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(16, grace=True),
        ),
        evans.call(
            "Voice 2",
            grace_handler_09,
            baca.selectors.leaves([2, 6]),
        ),
        evans.call(
            "Staff 2",
            grace_pitch_handler_09,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(16, grace=True),
        ),
        evans.call(
            "Voice 3",
            grace_handler_09,
            baca.selectors.leaves([2, 6]),
        ),
        evans.call(
            "Staff 3",
            grace_pitch_handler_09,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 3",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 3",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(16, grace=True),
        ),
        evans.call(
            "Voice 4",
            grace_handler_09,
            baca.selectors.leaves([18, 38]),
        ),
        evans.call(
            "Staff 4",
            grace_pitch_handler_09,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(16, grace=True),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup L 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     abjad.select(),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_09,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="09",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
