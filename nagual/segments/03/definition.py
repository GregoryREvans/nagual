import pathlib

import abjad
import baca
import evans

from nagual.lib import (  # , with_sharps
    bis_handler,
    clef_whitespace,
    grace_handler_03,
    met_50,
    met_100,
    met_mod_50_100,
    met_mod_66_50,
    start_damp,
    stop_damp,
    tremolo_handler,
    zero_padding_glissando,
)
from nagual.materials.instruments import instruments
from nagual.materials.pitch import grace_pitch_handler_03
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_03
from nagual.materials.timespans import handler_commands_03, rhythm_commands_03

maker = evans.SegmentMaker(  # don't forget accents!
    instruments=instruments,
    names=[
        '"Alto Flute"',
        '"Guitar"',
        '"Percussion"',
        '"Violin"',
    ],
    abbreviations=[
        '"alt. fl."',
        '"gt."',
        '"pc."',
        '"vn."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands_03,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_03,
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
            "Global Context",
            met_50,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_66_50,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r"\score-system-break", format_slot="before"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Global Context",
            met_100,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Global Context",
            met_mod_50_100,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "poco noise" 1', format_slot="after"),
            baca.selectors.leaf(56),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(48),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(26),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([47, 48, 51, 52, 53, 54, 55, 56, 57]),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 3", format_slot="absolute_before"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "gongs" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 5", format_slot="absolute_before"
            ),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "bow + vibraphone" 1', format_slot="after"
            ),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("treble"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            clef_whitespace,
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "bass drum" 1', format_slot="after"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            clef_whitespace,
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 3", format_slot="absolute_before"
            ),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "gongs" 1', format_slot="after"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(37),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "bow + cymbal" 1', format_slot="after"
            ),
            baca.selectors.leaf(38),
        ),
        evans.attach(
            "Voice 4",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(56),
        ),
        evans.call(
            "Voice 4",
            zero_padding_glissando,
            baca.selectors.leaves([_ for _ in range(56)]),
        ),
        evans.call(
            "Voice 4", bis_handler, baca.selectors.leaves([0, 14, 32, 35, 42, 49])
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(49),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(49),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(36),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(43),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(49),
        ),
        evans.attach(
            "Voice 4",
            start_damp,
            baca.selectors.leaf(50),
        ),
        evans.attach(
            "Voice 4",
            stop_damp,
            baca.selectors.leaf(56),
        ),
        evans.call(
            "Voice 1",
            grace_handler_03,
            abjad.select().leaves().get([29, 31, 33]),
        ),
        evans.call(
            "Staff 1",
            grace_pitch_handler_03,
            abjad.select().leaves(grace=True),
        ),
        evans.detach("Voice 2", abjad.Tie(), baca.selectors.leaf(47)),
        evans.call(
            "Voice 2",
            grace_handler_03,
            abjad.select().leaves().get([50]),
        ),
        evans.call(
            "Staff 2",
            grace_pitch_handler_03,
            abjad.select().leaves(grace=True),
        ),
        evans.call(
            "Voice 3",
            grace_handler_03,
            abjad.select().leaves().get([35]),
        ),
        evans.call(
            "Staff 3",
            grace_pitch_handler_03,
            abjad.select().leaves(grace=True),
        ),
        evans.call(
            "Voice 4",
            grace_handler_03,
            abjad.select().leaves().get([56, 58, 60]),
        ),
        evans.call(
            "Staff 4",
            grace_pitch_handler_03,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup D 6 -1", literal=True),
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
    time_signatures=signatures_03,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="03",
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
