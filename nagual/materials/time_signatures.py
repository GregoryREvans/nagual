import abjad
import evans

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

numerators = evans.Sequence([[6, 6, 4], [5], [4, 4, 3, 2]])
groups = numerators.helianthate(-1, 1)
lengths = [len(_) for _ in groups]
numerators = evans.Sequence(groups).flatten(depth=-1)
_time_signatures = [abjad.TimeSignature((_, 4)) for _ in numerators]
groups = evans.Sequence(_time_signatures).partition_by_counts(lengths)
time_signature_series["C"] = groups

numerators = evans.Sequence([[5, 4, 3], [9, 9, 8, 6, 4], [7, 6, 5, 3]])
groups = numerators.helianthate(-1, 1)
lengths = [len(_) for _ in groups]
numerators = evans.Sequence(groups).flatten(depth=-1)
_time_signatures = [abjad.TimeSignature((_, 8)) for _ in numerators]
groups = evans.Sequence(_time_signatures).partition_by_counts(lengths)
time_signature_series["D"] = groups

##
## 01
##

pairs_01 = evans.Sequence(time_signature_series["A"][0:7]).flatten(depth=-1)[:-1]

meters_01 = [abjad.Meter(_) for _ in pairs_01]

signatures_01 = [abjad.TimeSignature(_) for _ in meters_01]

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

bounds_01 = abjad.math.cumulative_sums([_.duration for _ in signatures_01])

##
## 02
##

pairs_02 = evans.Sequence(time_signature_series["B"][0:9]).flatten(depth=-1)[:13]

meters_02 = [abjad.Meter(_) for _ in pairs_02]

signatures_02 = [abjad.TimeSignature(_) for _ in meters_02]

signatures_02.append(abjad.TimeSignature((1, 4)))  # for ending skip

bounds_02 = abjad.math.cumulative_sums([_.duration for _ in signatures_02])

##
## 03
##

pairs_03 = evans.Sequence(time_signature_series["A"][4:10]).flatten(depth=-1)[:14]

meters_03 = [abjad.Meter(_) for _ in pairs_03]

signatures_03 = [abjad.TimeSignature(_) for _ in meters_03]

signatures_03.append(abjad.TimeSignature((1, 4)))  # for ending skip

bounds_03 = abjad.math.cumulative_sums([_.duration for _ in signatures_03])

##
## 04
##

pairs_04 = evans.Sequence(time_signature_series["B"][5:7]).flatten(depth=-1)[:5]

# segment_duration_04 = sum([abjad.Duration(_.pair) for _ in pairs_04])
# raise Exception(f"Segment 04 dur is {segment_duration_04}, with {len(pairs_04)} measures.")

meters_04 = [abjad.Meter(_) for _ in pairs_04]

signatures_04 = [abjad.TimeSignature(_) for _ in meters_04]

signatures_04.append(abjad.TimeSignature((1, 4)))  # for ending skip

bounds_04 = abjad.math.cumulative_sums([_.duration for _ in signatures_04])
