import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    mark_100,
    mark_100_cautionary,
    met_100,
    met_mod_100_66,
    red_start_repeat,
    red_stop_repeat,
    start_repeat,
    stop_repeat,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_02
from nagual.materials.timespans import handler_commands_02, rhythm_commands_02

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
        rhythm_commands_02,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_02,
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
        # evans.call(
        #     "Voice 2",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.call(
            "Voice 2",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(40)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(5)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(5, 13)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(13, 23)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(23, 34)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(34, 40)]),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(24),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(33),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(35),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(47),
        ),
        evans.attach(
            "Voice 2",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(48),
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
                r"\staff-line-count 3", format_slot="absolute_before"
            ),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + wood blocks" 1', format_slot="after"
            ),
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Global Context",
            mark_100,
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_100,
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_100_cautionary,
            abjad.select().leaf(6),
        ),
        evans.attach(
            "Global Context",
            mark_100_cautionary,
            abjad.select().leaf(9),
        ),
        evans.attach(
            "Global Context",
            met_mod_100_66,
            abjad.select().leaf(10),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup C 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            start_repeat,
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Global Context",
            red_start_repeat,
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Global Context",
            stop_repeat,
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Global Context",
            red_stop_repeat,
            baca.selectors.leaf(12),
        ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     abjad.select(),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_02,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline=None,
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
