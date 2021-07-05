import pathlib

import abjad
import baca
import evans
from abjadext import rmakers

from nagual.lib import (  # , with_sharps, zero_padding_glissando
    half_up,
    mark_100,
    mark_100_cautionary,
    met_100,
    met_mod_100_66,
    octave_down,
    octave_up,
    quarter_up,
    red_start_repeat,
    red_stop_repeat,
    start_repeat,
    stop_repeat,
    trill_handler,
    two_octaves_up,
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
            "Voice 1",
            octave_up,
            baca.selectors.leaves([_ for _ in range(17)]),
        ),
        evans.call(
            "Voice 1",
            octave_up,
            baca.selectors.leaves([_ for _ in range(19, 25)]),
        ),
        evans.call(
            "Voice 1",
            half_up,
            baca.selectors.leaves([22, 24]),
        ),
        evans.call(
            "Voice 1",
            abjad.iterpitches.respell_with_sharps,
            baca.selectors.leaves([22, 24]),
        ),
        evans.call(
            "Voice 2",
            octave_down,
            baca.selectors.leaves([_ for _ in range(40)]),
        ),
        evans.call(
            "Voice 2",
            quarter_up,
            baca.selectors.leaves([47, 51, 52, 53]),
        ),
        evans.call(
            "Voice 4",
            octave_up,
            baca.selectors.leaves([_ for _ in range(8)]),
        ),
        evans.call(
            "Voice 4",
            two_octaves_up,
            baca.selectors.leaves([_ for _ in range(15, 28)]),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
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
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(46),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(48),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(r"\nebenStimmeStart", format_slot="before"),
            baca.selectors.leaf(31),
        ),
        evans.call(
            "Voice 1",
            trill_handler,
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            trill_handler,
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            trill_handler,
            abjad.select(),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(3),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r'\boxed-markup "tone + air" 1', format_slot="after"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(21),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation(">"),
            baca.selectors.leaf(21),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.Articulation(">"),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0),
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
            "Voice 2",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.leaf(49),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(39),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("p"),
            baca.selectors.leaf(41),
        ),
        evans.attach(
            "Voice 2",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(41),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(42),
        ),
        evans.attach("Voice 2", abjad.Dynamic("mf"), baca.selectors.leaf(46)),
        evans.attach("Voice 2", abjad.Dynamic("p"), baca.selectors.leaf(49)),
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
            abjad.LilyPondLiteral(r'\boxed-markup "toms" 1', format_slot="after"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(4),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(5),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(6),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 1", format_slot="absolute_before"
            ),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "superball + bass drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r'\boxed-markup "brushes + bass drum" 1', format_slot="after"
            ),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"\staff-line-count 4", format_slot="absolute_before"
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
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(10),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 3",
            abjad.Articulation(">"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(23),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(29),
        ),
        evans.attach(
            "Voice 3",
            abjad.StopTrillSpan(),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartTrillSpan(),
            baca.selectors.leaf(32),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "ordinario + ponticello" 1', format_slot="after"
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("pp"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(7),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<|"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(r'\boxed-markup "spazzolato" 1', format_slot="after"),
            baca.selectors.leaf(8),
        ),
        evans.attach(
            "Voice 4",
            abjad.Articulation(">"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(11),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r'\boxed-markup "ordinario + ponticello" 1', format_slot="after"
            ),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.StartHairpin("<"),
            baca.selectors.leaf(15),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.selectors.leaf(17),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("p"),
            baca.selectors.leaf(26),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r"\hauptStimmeStart", format_slot="before"),
            baca.selectors.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.LilyPondLiteral(r"\hauptStimmeStop", format_slot="before"),
            baca.selectors.leaf(33),
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
