import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'note_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 1),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'silence_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 2),
                                ('logical_ties_produced', 2),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'accelerando_handler_01',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 7),
                                ('logical_ties_produced', 106),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )