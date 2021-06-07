import pathlib

import abjad
import baca
import evans

from nagual.lib import mark_108  # , with_sharps, zero_padding_glissando
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
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(3, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.2'}", direction=abjad.Up, literal=True
            ),
            abjad.select().leaf(-1, grace=False),
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
                r"\staff-line-count #2", format_slot="absolute_before"
            ),
            baca.selectors.note(2),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count #3", format_slot="absolute_before"
            ),
            baca.selectors.note(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count #4", format_slot="absolute_before"
            ),
            baca.selectors.note(7),
        ),
        evans.attach(
            "Global Context",
            mark_108,
            abjad.select().leaf(0),
        ),
    ],
    score_template=score,
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
    tempo=((1, 4), 108),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
