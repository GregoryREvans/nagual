import pathlib

import abjad

from nagual.materials.timespans import rhythm_timespans_01

##
## 01
##

offset_counter_01 = abjad.OffsetCounter(rhythm_timespans_01)

counter_path_01 = f"""{pathlib.Path(__file__).parent}/segment_01_offset_counter.pdf"""
persisted_counter_01 = abjad.persist.as_pdf(
    offset_counter_01, counter_path_01, scale=0.70
)

permitted_meters_01 = abjad.MeterList(
    [
        (5, 4),
        (4, 4),
        (3, 4),
        (2, 4),
        (1, 4),
    ]
)

pairs_01 = abjad.Meter.fit_meters(
    argument=offset_counter_01, meters=permitted_meters_01, maximum_run_length=1
)

# pairs_01 = (
#     (4, 4),
#     (3, 4),
#     (5, 6),
#     (4, 4),
# )

meters_01 = [abjad.Meter(_) for _ in pairs_01]

signatures_01 = [abjad.TimeSignature(_) for _ in meters_01]

signatures_01.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_01 = abjad.math.cumulative_sums([_.duration for _ in signatures_01])
