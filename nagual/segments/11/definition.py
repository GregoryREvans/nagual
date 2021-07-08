import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    met_95,
    met_130,
    met_mod_80_130,
    octave_down,
    octave_up,
    rit_130_60,
    stop_repeat_before,
    tremolo_handler,
    trill_handler,
    two_octaves_down,
)
from nagual.materials.instruments import alt_instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_11
from nagual.materials.timespans import handler_commands_11, rhythm_commands_11

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
        rhythm_commands_11,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_11,
        # evans.call(
        #     "score",
        #     with_sharps,
        #     abjad.select().components(abjad.Score),
        # ),
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.beam_score,
        #     abjad.select().components(abjad.Score),
        # ),
        evans.call(
            "Voice 4",
            octave_up,
            baca.selectors.leaves([42, 51, 52]),
        ),
        evans.attach(
            "Global Context",
            met_130,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_80_130,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_95,
            baca.selectors.leaf(7),
        ),
        evans.call("Global Context", rit_130_60, baca.selectors.leaves([7, 8, 9, 10])),
        evans.call(
            "Voice 1", octave_down, baca.selectors.leaves([_ for _ in range(9, 43)])
        ),
        evans.call(
            "Voice 2", octave_down, baca.selectors.leaves([_ for _ in range(11, 24)])
        ),
        evans.call(
            "Voice 4", octave_down, baca.selectors.leaves([_ for _ in range(20, 40)])
        ),
        evans.call("Voice 4", octave_down, baca.selectors.leaves([45, 48, 53])),
        evans.call(
            "Voice 4", two_octaves_down, baca.selectors.leaves([42, 43, 47, 51, 52])
        ),
        evans.call(
            "Voice 1",
            trill_handler,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            trill_handler,
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            trill_handler,
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(5, 18)]),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(20, 40)]),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(42, 54)]),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r'\boxed-markup "pizz + dolce" 1', format_slot="after"
            ),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "flautando + tasto" 1', format_slot="after"
            ),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(9, 28)]),
        ),
        evans.call(
            "Voice 1",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(29, 43)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(11, 24)]),
        ),
        evans.call(
            "Voice 3",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(11, 25)]),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("alto"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(5, 18)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(20, 40)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(42, 55)]),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 3", format_slot="absolute_before"
            ),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "gongs" 1', format_slot="after"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
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
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(24),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("sp"),
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
            baca.selectors.leaf(39),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(53),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup N 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            stop_repeat_before,
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
    time_signatures=signatures_11,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="11",
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
