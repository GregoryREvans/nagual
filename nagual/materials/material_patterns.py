# import abjad
# import evans

# from nagual.lib import WarbleFingerings
from nagual.materials.pitch import (
    demo_pitch_handler,
    flute_sho_pitch_handler_03,
    glissando_pitch_handler_03,
    grace_base_pitch_handler_03,
    guitar_pitch_handler_03,
    percussion_pitch_handler_01,
    percussion_pitch_handler_02,
    percussion_pitch_handler_03,
    percussion_pitch_handler_04,
    percussion_pitch_handler_05,
    percussion_pitch_handler_06,
    percussion_pitch_handler_07,
    percussion_pitch_handler_08,
    percussion_pitch_handler_09,
    percussion_pitch_handler_10,
    percussion_pitch_handler_11,
    percussion_pitch_handler_12,
    percussion_pitch_handler_13,
    perforated_pitch_handler_01,
    perforated_pitch_handler_04,
    spazzolato_pitch_handler_01,
    spazzolato_pitch_handler_02,
    spazzolato_pitch_handler_04,
    tremolo_pitch_handler_01,
    trill_pitch_i_handler_02,
    trill_pitch_p_handler_02,
)
from nagual.materials.rhythm import (
    accelerando_handler_01,
    accelerando_handler_02,
    accelerando_handler_04,
    accelerando_handler_12,
    drone_handler,
    even_division_handler_02,
    helianthated_talea_handler_01,
    helianthated_talea_handler_01_segment_02,
    helianthated_talea_handler_02,
    helianthated_talea_handler_04,
    helianthated_talea_handler_05,
    helianthated_talea_handler_07,
    helianthated_talea_handler_12,
    note_rhythm_handler,
    quarters_handler_01,
    quarters_handler_06,
    quarters_handler_07,
    rtm_handler_03,
    rtm_handler_04,
    rtm_handler_06,
    rtm_handler_08,
    rtm_handler_09,
    rtm_handler_09_segment_10,
    rtm_handler_10,
    silence_handler,
    sustain_handler_03,
    tuplet_handler_02,
)

## 01

rhythm_materials_01 = [
    silence_handler,  #
    helianthated_talea_handler_01,
    quarters_handler_01,
    silence_handler,
    silence_handler,  #
    helianthated_talea_handler_01,
    silence_handler,
    helianthated_talea_handler_01,
    silence_handler,
    accelerando_handler_01,
    silence_handler,
    quarters_handler_01,
    silence_handler,
    silence_handler,  #
    helianthated_talea_handler_01,
    quarters_handler_01,
    silence_handler,
    helianthated_talea_handler_01,  #
    silence_handler,
    helianthated_talea_handler_01,
    silence_handler,
    helianthated_talea_handler_01,
    silence_handler,
    helianthated_talea_handler_01,
    silence_handler,
    accelerando_handler_01,
    silence_handler,
    accelerando_handler_01,
    silence_handler,
    accelerando_handler_01,
    silence_handler,
    quarters_handler_01,
    silence_handler,
    helianthated_talea_handler_01,
    silence_handler,
    helianthated_talea_handler_01,
]

pitch_materials_01 = [
    silence_handler,  #
    spazzolato_pitch_handler_01,
    tremolo_pitch_handler_01,
    silence_handler,
    silence_handler,  #
    spazzolato_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,
    silence_handler,
    perforated_pitch_handler_01,
    silence_handler,
    tremolo_pitch_handler_01,
    silence_handler,
    silence_handler,  #
    percussion_pitch_handler_01,
    percussion_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,  #
    silence_handler,
    spazzolato_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,
    silence_handler,
    perforated_pitch_handler_01,
    silence_handler,
    perforated_pitch_handler_01,
    silence_handler,
    perforated_pitch_handler_01,
    silence_handler,
    tremolo_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,
    silence_handler,
    spazzolato_pitch_handler_01,
]

## 02

rhythm_materials_02 = [
    helianthated_talea_handler_02,  #
    silence_handler,
    helianthated_talea_handler_02,
    helianthated_talea_handler_01_segment_02,
    silence_handler,
    silence_handler,
    helianthated_talea_handler_01_segment_02,
    accelerando_handler_02,  #
    silence_handler,
    helianthated_talea_handler_02,
    silence_handler,
    tuplet_handler_02,
    silence_handler,
    helianthated_talea_handler_01_segment_02,
    helianthated_talea_handler_02,  #
    silence_handler,
    helianthated_talea_handler_02,
    helianthated_talea_handler_01_segment_02,
    silence_handler,
    silence_handler,
    even_division_handler_02,
    helianthated_talea_handler_02,
    helianthated_talea_handler_02,  #
    helianthated_talea_handler_01_segment_02,
    helianthated_talea_handler_02,
    silence_handler,
    silence_handler,
    helianthated_talea_handler_02,
]

pitch_materials_02 = [
    trill_pitch_p_handler_02,  #
    silence_handler,
    trill_pitch_i_handler_02,
    spazzolato_pitch_handler_02,
    silence_handler,
    silence_handler,
    spazzolato_pitch_handler_02,
    trill_pitch_p_handler_02,  #
    silence_handler,
    trill_pitch_i_handler_02,
    silence_handler,
    spazzolato_pitch_handler_02,
    silence_handler,
    spazzolato_pitch_handler_02,
    percussion_pitch_handler_02,  #
    silence_handler,
    percussion_pitch_handler_02,
    percussion_pitch_handler_02,
    silence_handler,
    silence_handler,
    percussion_pitch_handler_02,
    percussion_pitch_handler_02,
    trill_pitch_p_handler_02,  #
    spazzolato_pitch_handler_02,
    trill_pitch_i_handler_02,
    silence_handler,
    silence_handler,
    trill_pitch_i_handler_02,
]

## 03

rhythm_materials_03 = [
    rtm_handler_03,  #
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    silence_handler,
    rtm_handler_03,  #
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    rtm_handler_03,
    rtm_handler_03,  #
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    sustain_handler_03,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    silence_handler,
    rtm_handler_03,
    rtm_handler_03,  #
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    rtm_handler_03,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    silence_handler,
    sustain_handler_03,
    silence_handler,
]

pitch_materials_03 = [
    flute_sho_pitch_handler_03,  #
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    flute_sho_pitch_handler_03,
    grace_base_pitch_handler_03,
    silence_handler,
    grace_base_pitch_handler_03,
    silence_handler,
    grace_base_pitch_handler_03,
    silence_handler,
    guitar_pitch_handler_03,  #
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    guitar_pitch_handler_03,
    grace_base_pitch_handler_03,
    silence_handler,
    grace_base_pitch_handler_03,
    guitar_pitch_handler_03,
    percussion_pitch_handler_03,  #
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    percussion_pitch_handler_03,
    silence_handler,
    percussion_pitch_handler_03,
    silence_handler,
    percussion_pitch_handler_03,
    glissando_pitch_handler_03,  #
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    glissando_pitch_handler_03,
    grace_base_pitch_handler_03,
    silence_handler,
    grace_base_pitch_handler_03,
    silence_handler,
    grace_base_pitch_handler_03,
    silence_handler,
]

## 04

rhythm_materials_04 = [
    rtm_handler_04,  #
    silence_handler,
    helianthated_talea_handler_04,
    silence_handler,
    rtm_handler_04,  #
    silence_handler,
    helianthated_talea_handler_04,
    silence_handler,
    accelerando_handler_04,
    rtm_handler_04,  #
    silence_handler,
    helianthated_talea_handler_04,
    rtm_handler_04,
    rtm_handler_04,  #
    silence_handler,
    helianthated_talea_handler_04,
    silence_handler,
    rtm_handler_04,
]

pitch_materials_04 = [
    grace_base_pitch_handler_03,  #
    silence_handler,
    spazzolato_pitch_handler_04,
    silence_handler,
    grace_base_pitch_handler_03,  #
    silence_handler,
    spazzolato_pitch_handler_04,
    silence_handler,
    perforated_pitch_handler_04,
    percussion_pitch_handler_04,  #
    silence_handler,
    percussion_pitch_handler_04,
    percussion_pitch_handler_04,
    grace_base_pitch_handler_03,  #
    silence_handler,
    spazzolato_pitch_handler_04,
    silence_handler,
    grace_base_pitch_handler_03,
]

## 05

rhythm_materials_05 = [
    helianthated_talea_handler_05,  #
    helianthated_talea_handler_05,  #
    helianthated_talea_handler_05,  #
    helianthated_talea_handler_05,  #
]

pitch_materials_05 = [
    demo_pitch_handler,  #
    demo_pitch_handler,  #
    percussion_pitch_handler_05,  #
    demo_pitch_handler,  #
]

## 06

rhythm_materials_06 = [
    quarters_handler_06,  #
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    rtm_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,  #
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    rtm_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,  #
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    rtm_handler_06,
    silence_handler,
    rtm_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,  #
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    rtm_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
    quarters_handler_06,
]

pitch_materials_06 = [
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    percussion_pitch_handler_06,  #
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    silence_handler,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    percussion_pitch_handler_06,
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
]

## 07

rhythm_materials_07 = [
    quarters_handler_07,  #
    quarters_handler_07,
    helianthated_talea_handler_07,
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    helianthated_talea_handler_07,
    quarters_handler_07,  #
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    accelerando_handler_02,
    silence_handler,
    accelerando_handler_02,
    quarters_handler_07,  #
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    helianthated_talea_handler_07,
    quarters_handler_07,  #
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    quarters_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
]

pitch_materials_07 = [
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    percussion_pitch_handler_07,  #
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    percussion_pitch_handler_07,
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
]

## 08

rhythm_materials_08 = [
    silence_handler,  #
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    silence_handler,
    silence_handler,  #
    helianthated_talea_handler_07,
    silence_handler,
    rtm_handler_08,  #
    silence_handler,
    rtm_handler_08,
    silence_handler,
    rtm_handler_08,
    silence_handler,
    rtm_handler_08,
    silence_handler,
    rtm_handler_08,
    silence_handler,
    rtm_handler_08,
    silence_handler,  #
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    silence_handler,
    helianthated_talea_handler_07,
    helianthated_talea_handler_05,
    helianthated_talea_handler_07,
    silence_handler,
]

pitch_materials_08 = [
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    percussion_pitch_handler_08,  #
    silence_handler,
    percussion_pitch_handler_08,
    silence_handler,
    percussion_pitch_handler_08,
    silence_handler,
    percussion_pitch_handler_08,
    silence_handler,
    percussion_pitch_handler_08,
    silence_handler,
    percussion_pitch_handler_08,
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
]

## 09

rhythm_materials_09 = [
    note_rhythm_handler,  #
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,  #
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,  #
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    rtm_handler_09,  #
    note_rhythm_handler,
    silence_handler,
    rtm_handler_09,
    note_rhythm_handler,
]

pitch_materials_09 = [
    demo_pitch_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    demo_pitch_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    percussion_pitch_handler_09,  #
    percussion_pitch_handler_09,
    silence_handler,
    percussion_pitch_handler_09,
    percussion_pitch_handler_09,
    demo_pitch_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
]

## 10

rhythm_materials_10 = [
    silence_handler,  #
    drone_handler,
    silence_handler,
    drone_handler,
    silence_handler,
    drone_handler,
    note_rhythm_handler,
    silence_handler,
    rtm_handler_10,
    note_rhythm_handler,
    silence_handler,
    silence_handler,  #
    drone_handler,
    silence_handler,
    drone_handler,
    note_rhythm_handler,
    silence_handler,
    rtm_handler_10,
    note_rhythm_handler,
    silence_handler,
    silence_handler,  #
    drone_handler,
    note_rhythm_handler,
    silence_handler,
    rtm_handler_10,
    note_rhythm_handler,
    silence_handler,
    rtm_handler_09_segment_10,  #
    note_rhythm_handler,
    silence_handler,
    accelerando_handler_01,
    note_rhythm_handler,
    silence_handler,
]

pitch_materials_10 = [
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    silence_handler,  #
    percussion_pitch_handler_10,
    percussion_pitch_handler_10,
    silence_handler,
    percussion_pitch_handler_10,
    percussion_pitch_handler_10,
    silence_handler,
    demo_pitch_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
]

## 11

rhythm_materials_11 = [
    note_rhythm_handler,  #
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    accelerando_handler_01,
    silence_handler,
    accelerando_handler_01,
    note_rhythm_handler,  #
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    accelerando_handler_01,
    note_rhythm_handler,  #
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    accelerando_handler_01,
    note_rhythm_handler,  #
    accelerando_handler_01,
    note_rhythm_handler,
    silence_handler,
    accelerando_handler_01,
    silence_handler,
    accelerando_handler_01,
]

pitch_materials_11 = [
    demo_pitch_handler,  #
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,  #
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    demo_pitch_handler,
    percussion_pitch_handler_11,  #
    silence_handler,
    percussion_pitch_handler_11,
    silence_handler,
    percussion_pitch_handler_11,
    silence_handler,
    percussion_pitch_handler_11,
    demo_pitch_handler,  #
    demo_pitch_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
]

## 12

rhythm_materials_12 = [
    silence_handler,  #
    helianthated_talea_handler_12,
    silence_handler,
    silence_handler,  #
    accelerando_handler_12,
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    silence_handler,  #
    helianthated_talea_handler_12,
    silence_handler,
    helianthated_talea_handler_12,
    silence_handler,
    accelerando_handler_12,  #
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    accelerando_handler_12,
    silence_handler,
    helianthated_talea_handler_12,
    silence_handler,
    silence_handler,
    helianthated_talea_handler_12,
    silence_handler,
    helianthated_talea_handler_12,
    silence_handler,
]

pitch_materials_12 = [
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    silence_handler,  #
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    silence_handler,  #
    percussion_pitch_handler_12,
    silence_handler,
    percussion_pitch_handler_12,
    silence_handler,
    demo_pitch_handler,  #
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
    demo_pitch_handler,
    silence_handler,
]

## 13

rhythm_materials_13 = [
    note_rhythm_handler,  #
    note_rhythm_handler,  #
    note_rhythm_handler,  #
    note_rhythm_handler,  #
]

pitch_materials_13 = [
    demo_pitch_handler,  #
    demo_pitch_handler,  #
    percussion_pitch_handler_13,  #
    demo_pitch_handler,  #
]
