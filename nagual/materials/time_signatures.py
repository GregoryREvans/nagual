# import pathlib

import abjad
import evans

# from nagual.materials.timespans import rhythm_timespans_01


time_signature_series = abjad.OrderedDict()

numerators = evans.Sequence([[2, 3, 4, 4], [5], [4, 6, 6]])
groups = numerators.helianthate(-1, 1)
lengths = [len(_) for _ in groups]
numerators = evans.Sequence(groups).flatten(depth=-1)
_time_signatures = [abjad.TimeSignature((_, 4)) for _ in numerators]
groups = evans.Sequence(_time_signatures).partition_by_counts(lengths)
time_signature_series["A"] = groups

numerators = evans.Sequence([[3, 5, 6, 7], [4, 6, 8, 9, 9], [3, 4, 5]])
groups = numerators.helianthate(-1, 1)
lengths = [len(_) for _ in groups]
numerators = evans.Sequence(groups).flatten(depth=-1)
_time_signatures = [abjad.TimeSignature((_, 8)) for _ in numerators]
groups = evans.Sequence(_time_signatures).partition_by_counts(lengths)
time_signature_series["B"] = groups

##
## 01
##

# offset_counter_01 = abjad.OffsetCounter(rhythm_timespans_01)
#
# counter_path_01 = f"""{pathlib.Path(__file__).parent}/segment_01_offset_counter.pdf"""
# persisted_counter_01 = abjad.persist.as_pdf(
#     offset_counter_01, counter_path_01, scale=0.70
# )
#
# permitted_meters_01 = abjad.MeterList(
#     [
#         (5, 4),
#         (4, 4),
#         (3, 4),
#         (2, 4),
#         # (1, 4),
#     ]
# )
#
# pairs_01 = abjad.Meter.fit_meters(
#     argument=offset_counter_01, meters=permitted_meters_01, maximum_run_length=1
# )

# pairs_01 = (
#     (4, 4),
#     (3, 4),
#     (5, 6),
#     (4, 4),
# )

pairs_01 = evans.Sequence(time_signature_series["A"][0:7]).flatten(depth=-1)[:-1]

# segment_duration_01 = sum([abjad.Duration(_.pair) for _ in pairs_01])
# raise Exception(f"Segment 01 dur is {segment_duration_01}")

meters_01 = [abjad.Meter(_) for _ in pairs_01]

signatures_01 = [abjad.TimeSignature(_) for _ in meters_01]

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

bounds_01 = abjad.math.cumulative_sums([_.duration for _ in signatures_01])
