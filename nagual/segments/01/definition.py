import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    accel_40_100,
    mark_40,
    met_40,
    met_66,
    met_70,
    met_mod_40_66,
    tremolo_handler,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_01
from nagual.materials.timespans import handler_commands_01, rhythm_commands_01

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
        rhythm_commands_01,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_01,
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
            baca.selectors.leaves([_ for _ in range(22, 52)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(22, 32)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(32, 52)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(29, 69)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(29, 39)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(41, 48)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(49, 59)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(59, 69)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "tone + air" 1', format_slot="after"),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation(">"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(36),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(37),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(38),
        ),
        evans.call(
            "Voice 1",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(31, 39)]),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r'\boxed-markup "plucked + ponticello" 1', format_slot="after"
            ),
            baca.selectors.note(15),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.note(33),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation(">"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation(">"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(53),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(54),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(55),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(59),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(60),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(61),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(62),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(63),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(53, 64)]),
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
            abjad.LilyPondLiteral(
                r'\boxed-markup "sandpaper blocks" 1', format_slot="after"
            ),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "brushes + cymbal" 1', format_slot="after"
            ),
            baca.selectors.note(12),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "brushes + bass drum" 1', format_slot="after"
            ),
            baca.selectors.note(19),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + bass drum" 1', format_slot="after"
            ),
            baca.selectors.note(26),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(34),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(37),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(40),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(41),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(42),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(43),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(44),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "col legno tratto" 1', format_slot="after"
            ),
            baca.selectors.note(24),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "normale + ponticello" 1', format_slot="after"
            ),
            baca.selectors.note(47),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.note(56),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(9),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(70),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(71),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(72),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(73),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(74),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(75),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(76),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(77),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fz"),
            baca.selectors.leaf(78),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(80),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(80),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(84),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(84),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(87),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(87),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(92),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(92),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(70, 79)]),
        ),
        evans.attach(
            "Global Context",
            mark_40,
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_40,
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup A 6 -2", literal=True),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup B 6 -2", literal=True),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Global Context",
            met_mod_40_66,
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Global Context",
            met_66,
            abjad.select().leaf(10),
        ),
        evans.call(
            "Global Context",
            accel_40_100,
            baca.selectors.leaves([13, 14, 15]),
        ),
        evans.attach(
            "Global Context",
            met_70,
            abjad.select().leaf(13),
        ),
        # evans.attach(
        #     "Global Context",
        #     abjad.LilyPondLiteral(r"\break", format_slot="after"),
        #     baca.selectors.leaf(-1),
        # ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     abjad.select(),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
    # mm_rests=False,
)

maker.build_segment()
