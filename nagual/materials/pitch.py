import abjad
import evans

demo_pitch_handler = evans.PitchHandler(
    [0],
    forget=True,
    name="demo_pitch_handler",
)

### materials ###

spazzolato_pitches = evans.PitchSegment([0, 2, -1.5, -1, -1.5, -3, -2.5, 0.5])
spazzolato_pitches = spazzolato_pitches.transpose(-2)
spazzolato_pitches += spazzolato_pitches.invert(-1.5)
spazzolato_pitches = evans.Sequence([_ for _ in spazzolato_pitches])
spazzolato_pitches += spazzolato_pitches.transpose(2.5).reverse()
spazzolato_pitches += spazzolato_pitches.multiply(2).reverse()
spazzolato_pitches += spazzolato_pitches.alpha(1)
spazzolato_pitches = spazzolato_pitches.mirror(sequential_duplicates=False)

spazzolato_pitch_handler_01 = evans.PitchHandler(
    spazzolato_pitches,
    forget=False,
    name="spazzolato_pitch_handler_01",
)

spazzolato_pitch_handler_02 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 54),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

spazzolato_pitch_handler_04 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 79),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

spazzolato_pitch_handler_05 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 102),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

perforated_pitches = evans.Sequence([14, 25, 17, 28, 18]).transpose(-6)

perforated_pitch_handler_01 = evans.PitchHandler(
    perforated_pitches,
    forget=False,
    name="perforated_pitch_handler_01",
)

perforated_pitch_handler_04 = perforated_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 38),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

# -8, -7, 6, 11, 12, 20
tremolo_pitch_handler_01 = evans.PitchHandler(
    [
        12,
        12,
        12,
        12,
        12,
        12,
        12,
        12,
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [-8, -7, 6],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
        [6, 11],
    ],
    forget=False,
    name="tremolo_pitch_handler_01",
)

trill_pitches = evans.Sequence([0, 1, 3, 7, 4, 2, 9, 8, 11, 5, 10, 6])
trill_pitches = trill_pitches.matrix()
trill_pitches_p = trill_pitches.potamia().flatten().remove_repeats()
trill_pitches_i = trill_pitches.potamia(columns=True).flatten().remove_repeats()
trill_pitches_r = trill_pitches.potamia(retrograde=True).flatten().remove_repeats()
trill_pitches_ri = (
    trill_pitches.potamia(columns=True, retrograde=True).flatten().remove_repeats()
)

trill_pitch_p_handler_02 = evans.PitchHandler(
    trill_pitches_p,
    forget=False,
    name="trill_pitch_p_handler_02",
    chord_boolean_vector=[
        0,
        0,
        0,
        1,
        1,
        1,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        1,
        1,
        1,
    ],
    chord_groups=[2],
)

trill_pitch_i_handler_02 = evans.PitchHandler(
    trill_pitches_i,
    forget=False,
    name="trill_pitch_i_handler_02",
    chord_boolean_vector=[1],
    chord_groups=[2],
)

trill_pitch_ri_handler_13 = evans.PitchHandler(
    trill_pitches_ri,
    forget=False,
    name="trill_pitch_ri_handler_13",
)

grace_base_pitch_handler_03 = evans.PitchHandler(
    [
        14,
        4,
        11,
        -5,
    ],
    forget=False,
    name="grace_base_pitch_handler_03",
)

### Percussion ###

percussion_pitch_handler_01 = evans.PitchHandler(
    [0],
    forget=False,
    name="percussion_pitch_handler_01",
)

percussion_pitch_handler_02 = evans.PitchHandler(
    [
        4,
        0,
        -3,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        -1,
        2,
        5,
        2,
        5,
        2,
        -5,
        2,
        5,
    ],
    forget=False,
    name="percussion_pitch_handler_02",
)

percussion_pitch_handler_03 = evans.PitchHandler(
    [
        -3,
        0,
        -3,
        [2, 4],
        11,
        9,
        [4, 18],
        [16, 18],
        [9, 11],
        11,
        4,
        -3,
        11,
        12,
        [12, 14],
        4,
        -3,
        11,
        [12, 14],
        None,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        -3,
        0,
        0,
        0,
    ],
    forget=False,
    name="percussion_pitch_handler_03",
)

percussion_pitch_handler_04 = evans.PitchHandler(
    [
        -5,
        -1,
        -1,
        2,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        2,
        5,
    ],
    forget=False,
    name="percussion_pitch_handler_04",
)

percussion_pitch_handler_05 = evans.PitchHandler(
    [0],
    forget=False,
    name="percussion_pitch_handler_05",
)

percussion_pitch_handler_06 = evans.PitchHandler(
    [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        2,
        -1,
        -5,
        5,
        -1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
    ],
    forget=False,
    name="percussion_pitch_handler_06",
)

percussion_pitch_handler_07 = evans.PitchHandler(
    [
        4,
        -3,
        0,
        -3,
        -3,
        0,
        -3,
        0,
        4,
        -3,
        4,
        0,
        -3,
        0,
        0,
        -3,
        0,
        -3,
        -3,
        0,
        0,
        0,
        0,
        0,
    ],
    forget=False,
    name="percussion_pitch_handler_07",
)

percussion_pitch_handler_08 = evans.PitchHandler(
    [0],
    forget=False,
    name="percussion_pitch_handler_08",
)

percussion_pitch_handler_09 = evans.PitchHandler(
    [
        [8, 9],
        [9, 11],
        11,
        [12, 14],
        [14, 18],
        18,
    ],
    forget=False,
    name="percussion_pitch_handler_09",
)

percussion_pitch_handler_10 = evans.PitchHandler(
    [0, 2, 0, 0, 0, 0, 0, 0, 0, -1],
    forget=False,
    name="percussion_pitch_handler_10",
)

percussion_pitch_handler_11 = evans.PitchHandler(
    [
        -5,
        -1,
        2,
        5,
        -1,
        2,
        5,
        0,
        4,
        -3,
        0,
        4,
        -3,
        0,
        4,
        -3,
    ],
    forget=False,
    name="percussion_pitch_handler_11",
)

percussion_pitch_handler_12 = evans.PitchHandler(
    [0],
    forget=False,
    name="percussion_pitch_handler_12",
)

percussion_pitch_handler_13 = evans.PitchHandler(
    [0],
    forget=False,
    name="percussion_pitch_handler_13",
)

### Guitar ###

guitar_pitch_handler_03 = evans.PitchHandler(
    [
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-10, 0, 5, 9],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-10, 0, 5, 9],
        [-11, -2, 4, 9],
        [-11, -2, 4, 9],
        [-10, 0, 5, 9],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-13, -6, -3, 2, 8],
        [-10, 0, 5, 9],
        [-12, -5, -2, 3, 9],
        [-12, -5, -2, 3, 9],
        [-10, 0, 5, 9],
        [-13, -6, -3, 2, 8],
        [-12, -5, -2, 3, 9],
        [-17, -8, -1, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
        [-17, -13, -10, -5, -4, 2],
    ],
    forget=False,
    name="guitar_pitch_handler_03",
)

### Violin ###

glissando_pitches = evans.Sequence([_ for _ in range(-5, 18)])
glissando_pitches = glissando_pitches.mirror(sequential_duplicates=False)
glissando_pitches = glissando_pitches.random_walk(
    length=56,
    step_list=[7, 5, 5, 3, 1],
    random_seed=3,
)

glissando_pitch_handler_03 = evans.PitchHandler(
    glissando_pitches,
    forget=False,
    name="glissando_pitch_handler_03",
)

### Flute ###

flute_sho_pitch_handler_03 = evans.PitchHandler(
    [
        -3,
        0,
        -3,
        2,
        4,
        11,
        9,
        4,
        18,
        16,
        18,
        9,
        11,
        11,
        4,
        -3,
        11,
        12,
        12,
        14,
        4,
        -3,
        11,
        12,
        14,
    ],
    forget=False,
    name="flute_sho_pitch_handler_03",
)
