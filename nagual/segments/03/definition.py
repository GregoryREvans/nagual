import pathlib

import abjad
import baca
import evans

from nagual.lib import (  # , with_sharps
    grace_handler_03,
    met_50,
    met_100,
    met_mod_50_100,
    met_mod_66_50,
    zero_padding_glissando,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_03
from nagual.materials.timespans import handler_commands_03, rhythm_commands_03

maker = evans.SegmentMaker(  #  don't forget accents!
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
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
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
            met_100,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Global Context",
            met_mod_50_100,
            baca.selectors.leaf(8),
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
        evans.call(
            "Voice 4",
            zero_padding_glissando,
            baca.selectors.leaves([_ for _ in range(56)]),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\double-diamond-parenthesized-top-markup",
                literal=True,
                direction=abjad.Up,
            ),
            baca.selectors.note(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\diamond-parenthesized-double-diamond-markup",
                literal=True,
                direction=abjad.Up,
            ),
            baca.selectors.note(14),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\double-diamond-parenthesized-top-markup",
                literal=True,
                direction=abjad.Up,
            ),
            baca.selectors.note(32),
        ),
        evans.call(
            "Voice 1",
            grace_handler_03,
            abjad.select().leaves().get([29, 31, 33]),
        ),
        evans.detach("Voice 2", abjad.Tie(), baca.selectors.leaf(47)),
        evans.call(
            "Voice 2",
            grace_handler_03,
            abjad.select().leaves().get([48, 50]),
        ),
        evans.call(
            "Voice 3",
            grace_handler_03,
            abjad.select().leaves().get([35]),
        ),
        evans.call(
            "Voice 4",
            grace_handler_03,
            abjad.select().leaves().get([56, 58, 60]),
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
