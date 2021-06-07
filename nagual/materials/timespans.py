import abjad
import evans
import tsmakers
from abjadext import rmakers

from nagual.materials.instruments import instruments
from nagual.materials.material_patterns import (
    pitch_materials_01,
    rhythm_materials_01,
)
# from nagual.materials.time_signatures import (
#     bounds_01,
# )

music_specifiers = abjad.OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######

# # 01


target_timespan_01 = abjad.Timespan(0, (30, 4))

timespan_maker_01 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([5, 9, 0, 0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1, 1, 2]),
    silence_talea=rmakers.Talea(counts=([0, 1, 2, 3, 2, 1]), denominator=4),
)

timespan_list_01 = timespan_maker_01(
    music_specifiers=music_specifiers, target_timespan=target_timespan_01
)

cyc_rhythm_materials_01 = evans.CyclicList(rhythm_materials_01, forget=False)

for voice in voice_names:
    for span in timespan_list_01:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_01(r=1)[0]

# rhythm_timespans_01 = evans.timespan.make_split_list(timespan_list_01, bounds_01)

rhythm_timespans_01 = timespan_list_01 # temp

rhythm_commands_01 = []
for span in rhythm_timespans_01:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_01.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_01)

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

# # collected handlers

handler_commands_01 = [pitch_commands_01]
