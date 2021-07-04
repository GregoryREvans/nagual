import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    clef_whitespace,
    grace_handler_10,
    met_80,
    met_100,
    met_mod_80_100,
    met_mod_100_80,
    start_repeat_before,
    toggle_tuplet_prolation,
    zero_padding_glissando,
)
from nagual.materials.instruments import alt_instruments
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
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_10,
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
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(19),
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
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(19),
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
            abjad.Dynamic("f"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(19),
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
        evans.call(
            "Voice 1",
            grace_handler_10,
            baca.selectors.leaves([16, 27]),
        ),
        evans.call(
            "Voice 2",
            grace_handler_10,
            baca.selectors.leaves([16, 25]),
        ),
        evans.call(
            "Voice 3",
            grace_handler_10,
            baca.selectors.leaves([16, 26]),
        ),
        evans.call(
            "Voice 4",
            grace_handler_10,
            baca.selectors.leaves([85, 100]),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup M 6 -1", literal=True),
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
        #     abjad.select(),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_10,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
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
