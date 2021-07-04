import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    grace_handler_04,
    met_60,
    met_120,
    met_mod_100_120,
    met_mod_120_60,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_04
from nagual.materials.timespans import handler_commands_04, rhythm_commands_04

maker = evans.SegmentMaker(
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
        rhythm_commands_04,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_04,
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
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(14, 20)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(14, 20)]),
        ),
        evans.attach(
            "Global Context",
            met_120,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_100_120,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_60,
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Global Context",
            met_mod_120_60,
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("-"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("-"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 4", format_slot="absolute_before"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + wood blocks" 1', format_slot="after"
            ),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "brushes + brake drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(12),
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
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("-"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(28),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin(">"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("-"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(21),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(24),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(27),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(29),
        ),
        evans.call(
            "Voice 1",
            grace_handler_04,
            baca.selectors.leaves([0, 2]),
        ),
        evans.call(
            "Voice 2",
            grace_handler_04,
            baca.selectors.leaves([1, 3]),
        ),
        evans.call(
            "Voice 3",
            grace_handler_04,
            baca.selectors.leaves([1, 3, 5, 8, 26, 28]),
        ),
        evans.call(
            "Voice 4",
            grace_handler_04,
            baca.selectors.leaves([1, 3, 5, 8, 10, 21, 24, 27, 29]),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup E 6 -1", literal=True),
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
    time_signatures=signatures_04,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="04",
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
