import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import met_40, met_mod_60_40
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_12
from nagual.materials.timespans import handler_commands_12, rhythm_commands_12

maker = evans.SegmentMaker(
    instruments=instruments,
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
        rhythm_commands_12,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_12,
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
            met_40,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_60_40,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "tone + air" 1', format_slot="after"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "col legno tratto" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "spazzolato + col legno" 1', format_slot="after"
            ),
            baca.selectors.leaf(45),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "crine + chop" 1', format_slot="after"
            ),
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 2",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(1, 52)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(1, 10)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(10, 16)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(22, 37)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(39, 52)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(0, 44)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(0, 6)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(6, 11)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(13, 17)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(18, 21)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(22, 28)]),
        ),
        evans.call(
            "Voice 4",
            rmakers.FeatherBeamCommand(
                beam_rests=True,
                stemlet_length=0.75,
            ),
            baca.selectors.leaves([_ for _ in range(30, 44)]),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "sandpaper blocks" 1', format_slot="after"
            ),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("alto"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup O 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\colophon", literal=True),
            baca.selectors.leaf(-2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation(">"),
            baca.selectors.leaf(13),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(45),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(45),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(47),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(47),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(52),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(54),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(54),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(57),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(58),
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
    time_signatures=signatures_12,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="12",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="|.",
    rehearsal_mark="",
    fermata="scripts.uverylongfermata",
    page_break_counts=[90],
)

maker.build_segment()
