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
            'helianthated_talea_handler_12',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 7),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 17),
                                ('talea_weight_consumed', 56),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'accelerando_handler_12',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 10),
                                ('logical_ties_produced', 81),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )