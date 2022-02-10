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
from nagual.materials.pitch import grace_pitch_handler_06
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_06,
        # evans.call(
        #     "score",
        #     with_sharps,
        #     lambda _: abjad.Selection(_).components(abjad.Score),
        # ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
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
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
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
            "Staff 1",
            grace_pitch_handler_06,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(8, grace=True),
        ),
        evans.call(
            "Voice 2",
            grace_handler_06,
            baca.selectors.leaves([17, 19]),
        ),
        evans.call(
            "Staff 2",
            grace_pitch_handler_06,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 2",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(7, grace=True),
        ),
        evans.call(
            "Voice 3",
            grace_handler_06,
            baca.selectors.leaves([20, 22, 24, 26, 28]),
        ),
        evans.call(
            "Staff 3",
            grace_pitch_handler_06,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.call(
            "Voice 4",
            grace_handler_06,
            baca.selectors.leaves([18, 20, 22, 24]),
        ),
        evans.call(
            "Staff 4",
            grace_pitch_handler_06,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(8, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(12, grace=True),
        ),
        evans.attach(
            "Staff 4",
            abjad.LilyPondLiteral(r"\overhead-accidentals -1", format_slot="before"),
            baca.selectors.leaf(16, grace=True),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup G 6 -1"),
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
        #     lambda _: abjad.Selection(_),
        # ),
    ],
    score_template=score,
    transpose_from_sounding_pitch=True,
    time_signatures=signatures_06,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/nagual/nagual/build/score_stylesheet.ily",
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
