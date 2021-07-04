import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import met_120  # , with_sharps, zero_padding_glissando
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_13
from nagual.materials.timespans import handler_commands_13, rhythm_commands_13

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
        rhythm_commands_13,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_13,
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
            met_120,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(1),
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
                r'\boxed-markup "superball + bass drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + tam tam" 1', format_slot="after"
            ),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + bass drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + tam tam" 1', format_slot="after"
            ),
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("fff"),
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup J 6 -1", literal=True),
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
    time_signatures=signatures_13,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="13",
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