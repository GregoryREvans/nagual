import abjad
import evans
from abjadext import rmakers

##
## selectors
##


def select_outer_ties(argument):
    result = abjad.select(argument).logical_ties().get([0, -1])
    return result


def select_across_divisions(argument):
    result = abjad.select(argument).tuplets()[:-1]
    return [abjad.select(_).leaf(-1) for _ in result]


def select_alternate_divisions(argument):
    result = abjad.select(argument).tuplets().get([0], 2)
    return [abjad.select(_).leaf(-1) for _ in result]


def select_periodic_tuplets(argument):
    return abjad.select(argument).tuplets().get([0], 2)


def select_periodic_ties_2_4_7_8_of_10(argument):
    return abjad.select(argument).logical_ties().get([2, 4, 7, 8], 10)


def select_periodic_ties_2_4_of_8(argument):
    return abjad.select(argument).logical_ties().get([2, 4], 8)


##
##

silence_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
    rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

##
##

note_rhythm_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
)

note_rhythm_handler = evans.RhythmHandler(
    rmaker=note_rhythm_maker,
    forget=True,
    name="note_rhythm_handler",
)

##
## 01
##

helianthated_talea_numerators = (
    evans.Sequence([[8, 8, 6, 4], [4], [12, 12, 8]])
    .helianthate(-1, 1)
    .flatten(depth=-1)
)


helianthated_talea_01 = rmakers.stack(
    rmakers.talea(
        helianthated_talea_numerators,
        16,
        extra_counts=[0, -4, 0, 16, 8],
        end_counts=[1, 1],
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
)

helianthated_talea_handler_01 = evans.RhythmHandler(
    helianthated_talea_01,
    forget=False,
    name="helianthated_talea_handler_01",
)

#

quarters = rmakers.stack(
    rmakers.even_division([4], extra_counts=[0, 0, -1, 1]),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.tie(select_periodic_ties_2_4_of_8),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
    rmakers.extract_trivial(),
)

quarters_handler_01 = evans.RhythmHandler(
    quarters,
    forget=False,
    name="quarters_handler_01",
)

#

accelerando_01 = rmakers.stack(
    rmakers.accelerando(
        [(1, 8), (1, 20), (1, 16)],
        [(1, 20), (1, 8), (1, 16)],
    ),
    rmakers.force_rest(select_periodic_ties_2_4_7_8_of_10),
    rmakers.duration_bracket(),
    rmakers.tie(select_across_divisions),
)

accelerando_handler_01 = evans.RhythmHandler(
    accelerando_01,
    forget=False,
    name="accelerando_handler_01",
)

##
## 02
##

accelerando_02 = rmakers.stack(
    rmakers.accelerando(
        [(1, 8), (1, 20), (1, 16)],
    ),
    rmakers.duration_bracket(),
    rmakers.tie(select_across_divisions),
)

accelerando_handler_02 = evans.RhythmHandler(
    accelerando_02,
    forget=False,
    name="accelerando_handler_02",
)

#

helianthated_talea_02 = rmakers.stack(
    rmakers.talea(
        helianthated_talea_numerators,
        8,
        extra_counts=[2, 0, 0, -2, 6],
        preamble=[1, 1, 1],
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
)

helianthated_talea_handler_02 = evans.RhythmHandler(
    helianthated_talea_02,
    forget=False,
    name="helianthated_talea_handler_01",
)
