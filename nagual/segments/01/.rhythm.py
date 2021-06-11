import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'silence_handler',
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
            'helianthated_talea_handler_01',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 23),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 66),
                                ('talea_weight_consumed', 380),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'quarters_handler_01',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 12),
                                ('logical_ties_produced', 44),
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
                                ('divisions_consumed', 6),
                                ('logical_ties_produced', 67),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )