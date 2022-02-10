import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    accel_100_120,
    met_100,
    met_110,
    met_mod_66_100,
    sforzandi,
    stop_repeat_before,
    tremolo_handler,
)
from nagual.materials.instruments import instruments
from nagual.materials.score_structure import score
from nagual.materials.time_signatures import signatures_07
from nagual.materials.timespans import handler_commands_07, rhythm_commands_07

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
        rhythm_commands_07,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_07,
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
            met_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_mod_66_100,
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_110,
            baca.selectors.leaf(4),
        ),
        evans.call(
            "Global Context",
            accel_100_120,
            baca.selectors.leaves([4, 5, 6]),
        ),
        evans.call(
            "Voice 2",
            rmakers.UnbeamCommand(),
            baca.selectors.leaves([_ for _ in range(19, 59)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(19, 35)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(36, 49)]),
        ),
        evans.call(
            "Voice 2",
            rmakers.FeatherBeamCommand(),
            baca.selectors.leaves([_ for _ in range(49, 59)]),
        ),
        evans.call(
            "Voice 1",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(8)]),
        ),
        evans.call(
            "Voice 1",
            sforzandi,
            baca.selectors.leaves([_ for _ in range(8)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "tone + air" 1', format_slot="after"),
            baca.selectors.leaf(8),
        ),
        evans.call(
            "Voice 2",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(19)]),
        ),
        evans.call(
            "Voice 2",
            sforzandi,
            baca.selectors.leaves([_ for _ in range(19)]),
        ),
        evans.call(
            "Voice 3",
            tremolo_handler,
            baca.selectors.leaves([_ for _ in range(25)]),
        ),
        evans.call(
            "Voice 3",
            sforzandi,
            baca.selectors.leaves([_ for _ in range(25)]),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(25),
        ),
        evans.call(
            "Voice 4",
            tremolo_handler,
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 4",
            sforzandi,
            baca.selectors.leaves([_ for _ in range(22)]),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r'\boxed-markup "spazzolato" 1'),
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(19),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(34),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(36),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(36),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(58),
        ),
        evans.attach(
            "Voice 3",
            abjad.Clef("percussion"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 3", format_slot="absolute_before"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r'\boxed-markup "gongs" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + tam tam" 1', format_slot="after"
            ),
            baca.selectors.leaf(25),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rehearsal-mark-markup H 6 -1"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            stop_repeat_before,
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
    time_signatures=signatures_07,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/nagual/nagual/build/score_stylesheet.ily",
    ],
    segment_name="07",
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
