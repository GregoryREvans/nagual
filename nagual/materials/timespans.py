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
    rhythm_materials_01,
    rhythm_materials_02,
    rhythm_materials_03,
    rhythm_materials_04,
)
from nagual.materials.time_signatures import bounds_01, bounds_02, bounds_03, bounds_04

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
    initial_silence_talea=rmakers.Talea(counts=([5, 0, 9, 0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1, 1, 2]),
    silence_talea=rmakers.Talea(counts=([0, 1, 2, 1]), denominator=4),
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

rhythm_timespans_01 = timespan_list_01  # temp

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
    initial_silence_talea=rmakers.Talea(counts=([5, 0, 9, 0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1, 1, 2]),
    silence_talea=rmakers.Talea(counts=([0, 1, 2, 1]), denominator=4),
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

rhythm_timespans_02 = timespan_list_02  # temp

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
    initial_silence_talea=rmakers.Talea(counts=([5, 0, 9, 0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1, 1, 2]),
    silence_talea=rmakers.Talea(counts=([0, 1, 2, 1]), denominator=4),
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

rhythm_timespans_03 = timespan_list_03  # temp

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
    initial_silence_talea=rmakers.Talea(counts=([5, 0, 9, 0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1, 1, 2]),
    silence_talea=rmakers.Talea(counts=([0, 1, 2, 1]), denominator=4),
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

rhythm_timespans_04 = timespan_list_04  # temp

rhythm_commands_04 = []
for span in rhythm_timespans_04:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_04.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_04)

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

# # collected handlers

handler_commands_01 = [pitch_commands_01]

handler_commands_02 = [pitch_commands_02]

handler_commands_03 = [pitch_commands_03]

handler_commands_04 = [pitch_commands_04]
