import pathlib

import abjad
import baca
import evans

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    grace_handler_06,
    met_40,
    met_66,
    met_66_duplicate,
    met_mod_40_66,
    met_mod_66_40,
    met_mod_120_66,
    red_start_repeat,
    red_stop_repeat,
    sforzandi,
    start_repeat_before,
    tremolo_handler,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_06
from nagual.materials.timespans import handler_commands_06, rhythm_commands_06

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
        rhythm_commands_06,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_06,
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
            met_66,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_120_66,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_40,
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Global Context",
            met_mod_66_40,
            baca.selectors.leaf(2),
        ),
        evans.attach(
            "Global Context",
            met_66_duplicate,
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Global Context",
            met_mod_40_66,
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(21),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(19),
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
                r'\boxed-markup "stone + brake drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 4", format_slot="absolute_before"
            ),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "yarn mallets + wood blocks" 1', format_slot="after"
            ),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "stone + brake drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(24),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(28),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(18),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(22),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(24),
        ),
        evans.call(
            "Voice 1", tremolo_handler, baca.selectors.leaves([_ for _ in range(19)])
        ),
        evans.call("Voice 1", sforzandi, baca.selectors.leaves([_ for _ in range(19)])),
        evans.call(
            "Voice 1",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(23, 39)]),
        ),
        evans.call(
            "Voice 1", sforzandi, baca.selectors.leaves([_ for _ in range(23, 39)])
        ),
        evans.call(
            "Voice 2", tremolo_handler, baca.selectors.leaves([_ for _ in range(16)])
        ),
        evans.call("Voice 2", sforzandi, baca.selectors.leaves([_ for _ in range(16)])),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(20, 32)]),
        ),
        evans.call(
            "Voice 2", sforzandi, baca.selectors.leaves([_ for _ in range(20, 32)])
        ),
        evans.call("Voice 3", sforzandi, baca.selectors.leaves([_ for _ in range(20)])),
        evans.call(
            "Voice 3", sforzandi, baca.selectors.leaves([_ for _ in range(29, 41)])
        ),
        evans.call(
            "Voice 4", tremolo_handler, baca.selectors.leaves([_ for _ in range(17)])
        ),
        evans.call("Voice 4", sforzandi, baca.selectors.leaves([_ for _ in range(17)])),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(25, 39)]),
        ),
        evans.call(
            "Voice 4", sforzandi, baca.selectors.leaves([_ for _ in range(25, 39)])
        ),
        evans.call(
            "Voice 1",
            grace_handler_06,
            baca.selectors.leaves([19, 21]),
        ),
        evans.call(
            "Voice 2",
            grace_handler_06,
            baca.selectors.leaves([17, 19]),
        ),
        evans.call(
            "Voice 3",
            grace_handler_06,
            baca.selectors.leaves([20, 22, 24, 26, 28]),
        ),
        evans.call(
            "Voice 4",
            grace_handler_06,
            baca.selectors.leaves([18, 20, 22, 24]),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup G 6 -1", literal=True),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            start_repeat_before,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            red_start_repeat,
            baca.selectors.leaf(1),
        ),
        evans.attach(
            "Global Context",
            red_stop_repeat,
            baca.selectors.leaf(3),
        ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     abjad.select(),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_06,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="06",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
