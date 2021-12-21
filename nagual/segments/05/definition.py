import pathlib

import abjad
import baca
import evans

from nagual.lib import met_120, met_mod_60_120, tremolo_handler
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_05
from nagual.materials.timespans import handler_commands_05, rhythm_commands_05

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
        rhythm_commands_05,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_05,
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
        evans.attach(
            "Global Context",
            met_mod_60_120,
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            tremolo_handler,
            baca.selectors.leaves([0, 1, 2, 7, 8, 9, 14, 15, 16, 17, 18, 19]),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([0, 1, 2, 7, 8, 9, 14, 15, 16, 17, 18, 19, 20]),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 3",
            tremolo_handler,
            baca.selectors.leaves([0, 1, 2, 3, 8, 9, 10]),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            baca.selectors.leaves([0, 1, 2, 3, 9, 10, 11, 16, 17, 18]),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "spazzolato + col legno tratto" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(20),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 2",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(21),
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
                r'\boxed-markup "brushes + bass drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation("espressivo"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup F 6 -1"),
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
    time_signatures=signatures_05,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="05",
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
