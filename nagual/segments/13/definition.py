import pathlib

import abjad
import baca
import evans

from nagual.lib import fireworks, met_120, octave_up, tremolo_handler
from nagual.materials.instruments import instruments
from nagual.materials.pitch import trill_pitch_ri_handler_13
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "vertical",
            trill_pitch_ri_handler_13,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            fireworks,
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "normale" 1', format_slot="after"),
            baca.selectors.leaf(1),
        ),
        evans.call(
            "Voice 1",
            octave_up,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 1",
            octave_up,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 4",
            octave_up,
            lambda _: abjad.Selection(_),
        ),
        handler_commands_13,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            met_120,
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            lambda _: abjad.Selection(_),
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
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup J 6 -1"),
            baca.selectors.leaf(0),
        ),
        # evans.call(
        #     "Global Context",
        #     evans.annotate_time,
        #     lambda _: abjad.Selection(_),
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
