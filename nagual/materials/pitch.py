import abjad
import evans

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

spazzolato_pitch_handler_07 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 155),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

spazzolato_pitch_handler_08 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 162),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

spazzolato_pitch_handler_10 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 168),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

spazzolato_pitch_handler_12 = spazzolato_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 173),
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

perforated_pitch_handler_10 = perforated_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 42),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

perforated_pitch_handler_11 = perforated_pitch_handler_01.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 49),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

perforated_pitches_12 = (
    evans.Sequence([14, 25, 17, 28, 18]).transpose(-8).transpose(-12)
)

perforated_pitch_handler_12 = evans.PitchHandler(
    perforated_pitches_12,
    forget=False,
    name="perforated_pitch_handler_12",
    state=abjad.OrderedDict(
        [
            ("pitch_count", 105),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    ),
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

tremolo_pitch_handler_06 = evans.PitchHandler(
    [
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        10,
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-9, -1, 4],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
        [-5, 5],
    ],
    forget=False,
    name="tremolo_pitch_handler_06",
)

tremolo_pitch_handler_07 = evans.PitchHandler(
    [
        -2,
        -2,
        -2,
        -2,
        -2,
        -2,
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
        [1, 14],
    ],
    forget=False,
    name="tremolo_pitch_handler_07",
)

tremolo_pitch_handler_10 = evans.PitchHandler(
    [
        -2,
        -2,
        -2,
        -2,
        -2,
        -2,
        -2,
        -2,
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
        [-5, 6, 8],
    ],
    forget=False,
    name="tremolo_pitch_handler_10",
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

trill_pitch_p_handler_09 = evans.PitchHandler(
    trill_pitches_p,
    forget=False,
    name="trill_pitch_p_handler_02",
    state=abjad.OrderedDict(
        [
            ("pitch_count", 54),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    ),
)

trill_pitch_i_handler_02 = evans.PitchHandler(
    trill_pitches_i,
    forget=False,
    name="trill_pitch_i_handler_02",
    chord_boolean_vector=[1],
    chord_groups=[2],
)

trill_pitch_i_handler_10 = evans.PitchHandler(
    trill_pitches_i,
    forget=False,
    name="trill_pitch_i_handler_10",
    state=abjad.OrderedDict(
        [
            ("pitch_count", 17),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    ),
)

trill_pitch_r_handler_06 = evans.PitchHandler(
    trill_pitches_r,
    forget=False,
    name="trill_pitch_r_handler_06",
)

trill_pitch_r_handler_07 = trill_pitch_r_handler_06.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 7),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

trill_pitch_r_handler_08 = trill_pitch_r_handler_06.make_persistent_copy(
    abjad.OrderedDict(
        [
            ("pitch_count", 45),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

trill_pitch_ri_handler_13 = evans.PitchHandler(
    trill_pitches_ri,
    forget=False,
    name="trill_pitch_ri_handler_13",
)

trill_pitch_ri_handler_11 = evans.PitchHandler(
    trill_pitches_ri,
    forget=False,
    name="trill_pitch_ri_handler_11",
    chord_boolean_vector=[1],
    chord_groups=[2],
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

sho_pitches = evans.Sequence([8, 9, 11, 12, 14, 18]).permutations().flatten()

sho_pitch_handler_09 = evans.PitchHandler(
    sho_pitches,
    forget=False,
    name="sho_pitch_handler_09",
    chord_boolean_vector=[0, 0, 0, 0, 1, 1, 1, 1],
    chord_groups=[2],
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

viola_glissando_pitches = evans.Sequence([_ for _ in range(-12, 10)])
viola_glissando_pitches = viola_glissando_pitches.mirror(sequential_duplicates=False)
viola_glissando_pitches = viola_glissando_pitches.rotate(3)
viola_glissando_pitches = viola_glissando_pitches.random_walk(
    length=34,
    step_list=[9, 7, 7, 5, 3, 1],
    random_seed=3,
)

glissando_pitch_handler_09 = evans.PitchHandler(
    viola_glissando_pitches,
    forget=False,
    name="glissando_pitch_handler_09",
)

viola_glissando_pitches_02 = evans.Sequence([_ for _ in range(-12, 10)])
viola_glissando_pitches_02 = viola_glissando_pitches_02.mirror(
    sequential_duplicates=False
)
viola_glissando_pitches_02 = viola_glissando_pitches_02.random_walk(
    length=34,
    step_list=[11, 9, 7, 5, 5, 3, 1],
    random_seed=4,
)

glissando_pitch_handler_10 = evans.PitchHandler(
    viola_glissando_pitches_02,
    forget=False,
    name="glissando_pitch_handler_10",
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
