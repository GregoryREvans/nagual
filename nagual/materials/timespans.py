import abjad
import evans
import tsmakers
from abjadext import rmakers

from nagual.materials.instruments import instruments
from nagual.materials.material_patterns import (
    pitch_materials_01,
    pitch_materials_02,
    pitch_materials_03,
    pitch_materials_04,
    pitch_materials_05,
    pitch_materials_06,
    pitch_materials_07,
    pitch_materials_08,
    pitch_materials_09,
    pitch_materials_10,
    pitch_materials_11,
    pitch_materials_12,
    rhythm_materials_01,
    rhythm_materials_02,
    rhythm_materials_03,
    rhythm_materials_04,
    rhythm_materials_05,
    rhythm_materials_06,
    rhythm_materials_07,
    rhythm_materials_08,
    rhythm_materials_09,
    rhythm_materials_10,
    rhythm_materials_11,
    rhythm_materials_12,
)
from nagual.materials.time_signatures import (
    bounds_01,
    bounds_02,
    bounds_03,
    bounds_04,
    bounds_05,
    bounds_06,
    bounds_07,
    bounds_08,
    bounds_09,
    bounds_10,
    bounds_11,
    bounds_12,
)

music_specifiers = abjad.OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######

# # 01


target_timespan_01 = abjad.Timespan(0, (17, 1))

timespan_maker_01 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                22,  #
                24,
                11,
                11,
                3,  #
                5,
                4,
                7,
                12,
                9,
                6,
                11,
                11,
                21,  #
                25,
                11,
                11,
                2,  #
                1,
                2,
                1,
                3,
                1,
                9,
                5,
                3,
                5,
                2,
                3,
                6,
                3,
                11,
                1,
                3,
                1,
                6,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_01 = timespan_maker_01(
    music_specifiers=music_specifiers, target_timespan=target_timespan_01
)

cyc_rhythm_materials_01 = evans.CyclicList(rhythm_materials_01, forget=False)

for voice in voice_names:
    for span in timespan_list_01:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_01(r=1)[0]

rhythm_timespans_01 = evans.timespan.make_split_list(timespan_list_01, bounds_01)

# rhythm_timespans_01 = timespan_list_01  # temp

rhythm_commands_01 = []
for span in rhythm_timespans_01:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_01.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_01)

# # 02


target_timespan_02 = abjad.Timespan(0, (73, 8))

timespan_maker_02 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                25,  #
                6,
                8,
                9,
                9,
                12,
                4,
                25,  #
                6,
                8,
                18,
                3,
                4,
                9,
                25,  #
                6,
                8,
                9,
                9,
                4,
                3,
                9,
                25,  #
                6,
                8,
                18,
                12,
                4,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_02 = timespan_maker_02(
    music_specifiers=music_specifiers, target_timespan=target_timespan_02
)

cyc_rhythm_materials_02 = evans.CyclicList(rhythm_materials_02, forget=False)

for voice in voice_names:
    for span in timespan_list_02:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_02(r=1)[0]

rhythm_timespans_02 = evans.timespan.make_split_list(timespan_list_02, bounds_02)

# rhythm_timespans_02 = timespan_list_02  # temp

rhythm_commands_02 = []
for span in rhythm_timespans_02:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_02.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_02)

# # 03


target_timespan_03 = abjad.Timespan(0, (14, 1))

timespan_maker_03 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,  #
                1,
                2,
                2,
                2,
                2,
                1,
                1,
                3,
                2,
                2,
                3,
                3,
                3,
                2,
                2,
                6,
                4,
                4,
                2,
                3,
                4,
                1,  #
                2,
                2,
                2,
                2,
                2,
                1,
                1,
                2,
                3,
                3,
                2,
                3,
                3,
                2,
                2,
                6,
                4,
                4,
                9,
                1,  #
                2,
                3,
                1,
                1,
                3,
                1,
                1,
                1,
                4,
                4,
                1,
                4,
                2,
                2,
                2,
                5,
                1,
                4,
                4,
                3,
                6,
                3,  #
                2,
                2,
                1,
                3,
                2,
                2,
                3,
                1,
                2,
                2,
                3,
                3,
                1,
                2,
                1,
                6,
                4,
                4,
                2,
                3,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_03 = timespan_maker_03(
    music_specifiers=music_specifiers, target_timespan=target_timespan_03
)

cyc_rhythm_materials_03 = evans.CyclicList(rhythm_materials_03, forget=False)

for voice in voice_names:
    for span in timespan_list_03:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_03(r=1)[0]

rhythm_timespans_03 = evans.timespan.make_split_list(timespan_list_03, bounds_03)

# rhythm_timespans_03 = timespan_list_03  # temp

rhythm_commands_03 = []
for span in rhythm_timespans_03:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_03.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_03)

# # 04


target_timespan_04 = abjad.Timespan(0, (9, 2))

timespan_maker_04 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                14,  #
                7,
                9,
                6,
                14,  #
                3,
                9,
                6,
                4,
                14,  #
                7,
                9,
                6,
                14,  #
                3,
                6,
                1,
                12,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_04 = timespan_maker_04(
    music_specifiers=music_specifiers, target_timespan=target_timespan_04
)

cyc_rhythm_materials_04 = evans.CyclicList(rhythm_materials_04, forget=False)

for voice in voice_names:
    for span in timespan_list_04:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_04(r=1)[0]

rhythm_timespans_04 = evans.timespan.make_split_list(timespan_list_04, bounds_04)

# rhythm_timespans_04 = timespan_list_04  # temp

rhythm_commands_04 = []
for span in rhythm_timespans_04:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_04.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_04)

# # 05


target_timespan_05 = abjad.Timespan(0, (5, 2))

timespan_maker_05 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                2,
                2,
                3,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([1, 2, 2]), denominator=4),
)

timespan_list_05 = timespan_maker_05(
    music_specifiers=music_specifiers, target_timespan=target_timespan_05
)

cyc_rhythm_materials_05 = evans.CyclicList(rhythm_materials_05, forget=False)

for voice in voice_names:
    for span in timespan_list_05:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_05(r=1)[0]

rhythm_timespans_05 = evans.timespan.make_split_list(timespan_list_05, bounds_05)

# rhythm_timespans_05 = timespan_list_05  # temp

rhythm_commands_05 = []
for span in rhythm_timespans_05:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_05.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_05)

# # 06


target_timespan_06 = abjad.Timespan(0, (43, 8))

timespan_maker_06 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                4,  #
                5,
                4,
                5,
                10,
                4,
                4,
                3,
                4,
                5,  #
                4,
                4,
                5,
                10,
                4,
                4,
                3,
                4,
                5,  #
                4,
                5,
                4,
                3,
                1,
                6,
                4,
                4,
                3,
                4,
                4,  #
                5,
                5,
                4,
                10,
                4,
                4,
                3,
                4,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_06 = timespan_maker_06(
    music_specifiers=music_specifiers, target_timespan=target_timespan_06
)

cyc_rhythm_materials_06 = evans.CyclicList(rhythm_materials_06, forget=False)

for voice in voice_names:
    for span in timespan_list_06:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_06(r=1)[0]

rhythm_timespans_06 = evans.timespan.make_split_list(timespan_list_06, bounds_06)

# rhythm_timespans_06 = timespan_list_06  # temp

rhythm_commands_06 = []
for span in rhythm_timespans_06:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_06.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_06)

# # 07


target_timespan_07 = abjad.Timespan(0, (8, 1))

timespan_maker_07 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                4,  #
                2,
                4,
                2,
                4,
                3,
                2,
                4,
                3,
                4,
                2,  #
                4,
                3,
                3,
                2,
                2,
                5,
                4,
                7,
                2,  #
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                3,
                2,
                2,
                7,
                2,  #
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                3,
                2,
                2,
                4,
                3,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_07 = timespan_maker_07(
    music_specifiers=music_specifiers, target_timespan=target_timespan_07
)

cyc_rhythm_materials_07 = evans.CyclicList(rhythm_materials_07, forget=False)

for voice in voice_names:
    for span in timespan_list_07:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_07(r=1)[0]

rhythm_timespans_07 = evans.timespan.make_split_list(timespan_list_07, bounds_07)

# rhythm_timespans_07 = timespan_list_07  # temp

rhythm_commands_07 = []
for span in rhythm_timespans_07:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_07.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_07)

# # 08


target_timespan_08 = abjad.Timespan(0, (83, 8))

timespan_maker_08 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                55,  #
                6,
                6,
                6,
                2,
                4,
                4,
                70,  #
                9,
                4,
                5,  #
                4,
                3,
                9,
                9,
                10,
                8,
                13,
                5,
                14,
                3,
                38,  #
                6,
                6,
                8,
                8,
                3,
                6,
                4,
                4,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_08 = timespan_maker_08(
    music_specifiers=music_specifiers, target_timespan=target_timespan_08
)

cyc_rhythm_materials_08 = evans.CyclicList(rhythm_materials_08, forget=False)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_08(r=1)[0]

rhythm_timespans_08 = evans.timespan.make_split_list(timespan_list_08, bounds_08)

# rhythm_timespans_08 = timespan_list_08  # temp

rhythm_commands_08 = []
for span in rhythm_timespans_08:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_08.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_08)

# # 09


target_timespan_09 = abjad.Timespan(0, (29, 4))

timespan_maker_09 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                7,  #
                2,
                4,
                10,
                6,
                7,  #
                2,
                4,
                10,
                6,
                7,  #
                2,
                4,
                10,
                6,
                7,  #
                2,
                4,
                10,
                6,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_09 = timespan_maker_09(
    music_specifiers=music_specifiers, target_timespan=target_timespan_09
)

cyc_rhythm_materials_09 = evans.CyclicList(rhythm_materials_09, forget=False)

for voice in voice_names:
    for span in timespan_list_09:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_09(r=1)[0]

rhythm_timespans_09 = evans.timespan.make_split_list(timespan_list_09, bounds_09)

# rhythm_timespans_09 = timespan_list_09  # temp

rhythm_commands_09 = []
for span in rhythm_timespans_09:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_09.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_09)

# # 10


target_timespan_10 = abjad.Timespan(0, (105, 8))

timespan_maker_10 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                7,  #
                14,
                8,
                6,
                4,
                36,
                9,
                1,
                7,
                7,
                6,
                21,  #
                27,
                8,
                19,
                9,
                1,
                7,
                7,
                6,
                35,  #
                40,
                9,
                1,
                7,
                7,
                6,
                75,  #
                9,
                1,
                7,
                7,
                6,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_10 = timespan_maker_10(
    music_specifiers=music_specifiers, target_timespan=target_timespan_10
)

cyc_rhythm_materials_10 = evans.CyclicList(rhythm_materials_10, forget=False)

for voice in voice_names:
    for span in timespan_list_10:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_10(r=1)[0]

rhythm_timespans_10 = evans.timespan.make_split_list(timespan_list_10, bounds_10)

# rhythm_timespans_10 = timespan_list_10  # temp

rhythm_commands_10 = []
for span in rhythm_timespans_10:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_10.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_10)

# # 11


target_timespan_11 = abjad.Timespan(0, (25, 2))

timespan_maker_11 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                14,  #
                4,
                4,
                6,
                6,
                6,
                6,
                4,
                14,  #
                4,
                4,
                6,
                18,
                4,
                14,  #
                4,
                4,
                6,
                12,
                6,
                4,
                14,  #
                4,
                4,
                6,
                6,
                12,
                4,
            ]
        ),
        denominator=4,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=8),
)

timespan_list_11 = timespan_maker_11(
    music_specifiers=music_specifiers, target_timespan=target_timespan_11
)

cyc_rhythm_materials_11 = evans.CyclicList(rhythm_materials_11, forget=False)

for voice in voice_names:
    for span in timespan_list_11:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_11(r=1)[0]

rhythm_timespans_11 = evans.timespan.make_split_list(timespan_list_11, bounds_11)

# rhythm_timespans_11 = timespan_list_11  # temp

rhythm_commands_11 = []
for span in rhythm_timespans_11:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_11.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_11)

# # 12


target_timespan_12 = abjad.Timespan(0, (63, 8))

timespan_maker_12 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                24,  #
                10,
                29,
                3,  #
                9,
                22,
                9,
                9,
                8,
                3,
                17,  #
                4,
                3,
                6,
                33,
                6,  #
                4,
                2,
                3,
                2,
                4,
                3,
                10,
                9,
                14,
                3,
                1,
                1,
                1,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_12 = timespan_maker_12(
    music_specifiers=music_specifiers, target_timespan=target_timespan_12
)

cyc_rhythm_materials_12 = evans.CyclicList(rhythm_materials_12, forget=False)

for voice in voice_names:
    for span in timespan_list_12:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_12(r=1)[0]

rhythm_timespans_12 = evans.timespan.make_split_list(timespan_list_12, bounds_12)

# rhythm_timespans_12 = timespan_list_12  # temp

rhythm_commands_12 = []
for span in rhythm_timespans_12:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_12.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_12)

# #######
# handlers#
# #######

# # 01

# # pitch

cyc_pitch_materials_01 = evans.CyclicList(pitch_materials_01, forget=False)

for voice in voice_names:
    for span in timespan_list_01:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_01(r=1)[0]

pitch_commands_01 = []
for span in timespan_list_01:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_01.append(h_command)

# # 02

# # pitch

cyc_pitch_materials_02 = evans.CyclicList(pitch_materials_02, forget=False)

for voice in voice_names:
    for span in timespan_list_02:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_02(r=1)[0]

pitch_commands_02 = []
for span in timespan_list_02:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_02.append(h_command)

# # 03

# # pitch

cyc_pitch_materials_03 = evans.CyclicList(pitch_materials_03, forget=False)

for voice in voice_names:
    for span in timespan_list_03:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_03(r=1)[0]

pitch_commands_03 = []
for span in timespan_list_03:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_03.append(h_command)

# # 04

# # pitch

cyc_pitch_materials_04 = evans.CyclicList(pitch_materials_04, forget=False)

for voice in voice_names:
    for span in timespan_list_04:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_04(r=1)[0]

pitch_commands_04 = []
for span in timespan_list_04:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_04.append(h_command)

# # 05

# # pitch

cyc_pitch_materials_05 = evans.CyclicList(pitch_materials_05, forget=False)

for voice in voice_names:
    for span in timespan_list_05:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_05(r=1)[0]

pitch_commands_05 = []
for span in timespan_list_05:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_05.append(h_command)

# # 06

# # pitch

cyc_pitch_materials_06 = evans.CyclicList(pitch_materials_06, forget=False)

for voice in voice_names:
    for span in timespan_list_06:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_06(r=1)[0]

pitch_commands_06 = []
for span in timespan_list_06:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_06.append(h_command)

# # 07

# # pitch

cyc_pitch_materials_07 = evans.CyclicList(pitch_materials_07, forget=False)

for voice in voice_names:
    for span in timespan_list_07:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_07(r=1)[0]

pitch_commands_07 = []
for span in timespan_list_07:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_07.append(h_command)

# # 08

# # pitch

cyc_pitch_materials_08 = evans.CyclicList(pitch_materials_08, forget=False)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_08(r=1)[0]

pitch_commands_08 = []
for span in timespan_list_08:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_08.append(h_command)

# # 09

# # pitch

cyc_pitch_materials_09 = evans.CyclicList(pitch_materials_09, forget=False)

for voice in voice_names:
    for span in timespan_list_09:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_09(r=1)[0]

pitch_commands_09 = []
for span in timespan_list_09:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_09.append(h_command)

# # 10

# # pitch

cyc_pitch_materials_10 = evans.CyclicList(pitch_materials_10, forget=False)

for voice in voice_names:
    for span in timespan_list_10:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_10(r=1)[0]

pitch_commands_10 = []
for span in timespan_list_10:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_10.append(h_command)

# # 11

# # pitch

cyc_pitch_materials_11 = evans.CyclicList(pitch_materials_11, forget=False)

for voice in voice_names:
    for span in timespan_list_11:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_11(r=1)[0]

pitch_commands_11 = []
for span in timespan_list_11:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_11.append(h_command)

# # 12

# # pitch

cyc_pitch_materials_12 = evans.CyclicList(pitch_materials_12, forget=False)

for voice in voice_names:
    for span in timespan_list_12:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_12(r=1)[0]

pitch_commands_12 = []
for span in timespan_list_12:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_12.append(h_command)

# # collected handlers

handler_commands_01 = [pitch_commands_01]

handler_commands_02 = [pitch_commands_02]

handler_commands_03 = [pitch_commands_03]

handler_commands_04 = [pitch_commands_04]

handler_commands_05 = [pitch_commands_05]

handler_commands_06 = [pitch_commands_06]

handler_commands_07 = [pitch_commands_07]

handler_commands_08 = [pitch_commands_08]

handler_commands_09 = [pitch_commands_09]

handler_commands_10 = [pitch_commands_10]

handler_commands_11 = [pitch_commands_11]

handler_commands_12 = [pitch_commands_12]
