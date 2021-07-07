import pathlib

import abjad
import baca
import evans

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    grace_handler_08,
    met_100,
    met_mod_120_100,
    toggle_tuplet_prolation,
    tremolo_handler,
)
from nagual.materials.instruments import alt_instruments
from nagual.materials.pitch import grace_pitch_handler_08
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_08
from nagual.materials.timespans import handler_commands_08, rhythm_commands_08

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
        rhythm_commands_08,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_08,
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
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(56),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([20, 21, 22, 23, 24]),
        ),
        evans.attach(
            "Global Context",
            met_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_120_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(
                r'\boxed-markup "change to Bass Flute" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopHairpin(),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
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
            abjad.LilyPondLiteral(r'\boxed-markup "bass drum" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 3",
            toggle_tuplet_prolation,
            abjad.select().components(abjad.Tuplet).get([-1]),
        ),
        evans.call(
            "Voice 3",
            abjad.beam,
            baca.selectors.leaves([53, 54, 55, 56]),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(53),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(61),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("alto"),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "change to Viola" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 4",
            abjad.StopHairpin(),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.StopHairpin(),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(28),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("--"),
            baca.selectors.leaf(28),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(28),
        ),
        evans.attach(
            "Voice 4",
            abjad.StopHairpin(),
            baca.selectors.leaf(30),
        ),
        evans.call(
            "Voice 1",
            grace_handler_08,
            baca.selectors.leaves([12, 16, 17, 20]),
        ),
        evans.call(
            "Staff 1",
            grace_pitch_handler_08,
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
            baca.selectors.leaf(24, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(31, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(48, grace=True),
        ),
        evans.call(
            "Voice 2",
            grace_handler_08,
            baca.selectors.leaves([17, 19]),
        ),
        evans.call(
            "Staff 2",
            grace_pitch_handler_08,
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
            "Voice 4",
            grace_handler_08,
            baca.selectors.leaves([9, 12, 13, 15, 19, 28]),
        ),
        evans.call(
            "Staff 4",
            grace_pitch_handler_08,
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
            baca.selectors.leaf(25, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(28, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(54, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(57, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(68, grace=True),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup K 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r"\bacaStopTextSpanMM", format_slot="after"),
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
    time_signatures=signatures_08,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="08",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
