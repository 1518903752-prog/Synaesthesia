{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            34.0,
            84.0,
            1639.0,
            908.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1222.0869632959366,
                        351.4699237346649,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1293.2990782260895,
                        286.3184143304825,
                        50.0,
                        22.0
                    ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1211.4809036254883,
                        286.3184143304825,
                        50.0,
                        22.0
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1222.0869632959366,
                        402.9850707054138,
                        101.0,
                        22.0
                    ],
                    "text": "s #0-saw-cycle"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1629.0322697162628,
                        864.5161352157593,
                        100.0,
                        22.0
                    ],
                    "text": "r #0-saw-cycle"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1183.8709762096405,
                        867.741941690445,
                        100.0,
                        22.0
                    ],
                    "text": "r #0-saw-cycle"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        741.9354891777039,
                        858.0645222663879,
                        100.0,
                        22.0
                    ],
                    "text": "r #0-saw-cycle"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        309.6774215698242,
                        861.2903287410736,
                        100.0,
                        22.0
                    ],
                    "text": "r #0-saw-cycle"
                }
            },
            {
                "box": {
                    "appearance": 1,
                    "id": "obj-41",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        331.0924172401428,
                        1644.132875740528,
                        25.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                10000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "frequency[61]",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "frequency",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "showname": 0,
                    "shownumber": 0,
                    "varname": "frequency[1]"
                }
            },
            {
                "box": {
                    "attr": "drive",
                    "id": "obj-53",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        479.6460562944412,
                        1890.6665019989014,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "resonance",
                    "id": "obj-54",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        479.6460562944412,
                        1866.6665019989014,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        198.2906002998352,
                        1937.6068572402,
                        182.0,
                        22.0
                    ],
                    "text": "abl.device.autofilter~",
                    "varname": "abl.device.autofilter~_AA[1]"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        286.666657269001,
                        2123.0,
                        50.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "out~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "preset",
                        "int",
                        "preset",
                        "int",
                        ""
                    ],
                    "patching_rect": [
                        1023.08,
                        1912.31,
                        100.0,
                        40.0
                    ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [
                                5,
                                "obj-28",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-86",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-88",
                                "number",
                                "float",
                                68.0,
                                5,
                                "obj-90",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-17",
                                "number",
                                "int",
                                80,
                                5,
                                "obj-23",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-24",
                                "number",
                                "int",
                                180,
                                5,
                                "obj-27",
                                "number",
                                "float",
                                1.0,
                                5,
                                "obj-154",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-166",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-165",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-164",
                                "number",
                                "int",
                                180,
                                5,
                                "obj-163",
                                "number",
                                "float",
                                1.0,
                                5,
                                "obj-161",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-174",
                                "number",
                                "float",
                                2000.0,
                                5,
                                "obj-177",
                                "number",
                                "float",
                                2233.980712890625,
                                5,
                                "obj-187",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-186",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-185",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-184",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-182",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-195",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-205",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "filtertype",
                                5,
                                "obj-10",
                                "attrui",
                                "int",
                                0,
                                5,
                                "obj-54",
                                "attrui",
                                "attr",
                                "resonance",
                                5,
                                "obj-54",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-53",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-53",
                                "attrui",
                                "float",
                                0.17000000000000004,
                                5,
                                "obj-41",
                                "live.dial",
                                "float",
                                2233.980712890625,
                                5,
                                "obj-74",
                                "number",
                                "int",
                                1
                            ]
                        },
                        {
                            "number": 2,
                            "data": [
                                5,
                                "obj-28",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-86",
                                "number",
                                "float",
                                1.600000023841858,
                                5,
                                "obj-88",
                                "number",
                                "float",
                                32.0,
                                5,
                                "obj-90",
                                "number",
                                "float",
                                0.2800000011920929,
                                5,
                                "obj-17",
                                "number",
                                "int",
                                0,
                                5,
                                "obj-23",
                                "number",
                                "int",
                                1053,
                                5,
                                "obj-24",
                                "number",
                                "int",
                                180,
                                5,
                                "obj-27",
                                "number",
                                "float",
                                1.0,
                                5,
                                "obj-154",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-166",
                                "number",
                                "int",
                                150,
                                5,
                                "obj-165",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-164",
                                "number",
                                "int",
                                180,
                                5,
                                "obj-163",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-161",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-174",
                                "number",
                                "float",
                                2170.0,
                                5,
                                "obj-177",
                                "number",
                                "float",
                                850.8877563476562,
                                5,
                                "obj-187",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-186",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-185",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-184",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-182",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-195",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-205",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "filtertype",
                                5,
                                "obj-10",
                                "attrui",
                                "int",
                                0,
                                5,
                                "obj-54",
                                "attrui",
                                "attr",
                                "resonance",
                                5,
                                "obj-54",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-53",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-53",
                                "attrui",
                                "float",
                                0.56,
                                5,
                                "obj-41",
                                "live.dial",
                                "float",
                                850.8877563476562,
                                5,
                                "obj-74",
                                "number",
                                "int",
                                1
                            ]
                        },
                        {
                            "number": 3,
                            "data": [
                                5,
                                "obj-28",
                                "number",
                                "float",
                                0.800000011920929,
                                5,
                                "obj-86",
                                "number",
                                "float",
                                0.7170000076293945,
                                5,
                                "obj-88",
                                "number",
                                "float",
                                78.0,
                                5,
                                "obj-90",
                                "number",
                                "float",
                                0.0020000000949949026,
                                5,
                                "obj-17",
                                "number",
                                "int",
                                0,
                                5,
                                "obj-23",
                                "number",
                                "int",
                                91,
                                5,
                                "obj-24",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-27",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-154",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-166",
                                "number",
                                "int",
                                150,
                                5,
                                "obj-165",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-164",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-163",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-161",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-174",
                                "number",
                                "float",
                                5721.0,
                                5,
                                "obj-177",
                                "number",
                                "float",
                                555.2234497070312,
                                5,
                                "obj-187",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-186",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-185",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-184",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-182",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-195",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-205",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "filtertype",
                                5,
                                "obj-10",
                                "attrui",
                                "int",
                                2,
                                5,
                                "obj-54",
                                "attrui",
                                "attr",
                                "resonance",
                                5,
                                "obj-54",
                                "attrui",
                                "float",
                                0.28,
                                5,
                                "obj-53",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-53",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-41",
                                "live.dial",
                                "float",
                                555.2234497070312,
                                5,
                                "obj-74",
                                "number",
                                "int",
                                2
                            ]
                        },
                        {
                            "number": 4,
                            "data": [
                                5,
                                "obj-28",
                                "number",
                                "float",
                                59.0,
                                5,
                                "obj-86",
                                "number",
                                "float",
                                4.0,
                                5,
                                "obj-88",
                                "number",
                                "float",
                                68.0,
                                5,
                                "obj-90",
                                "number",
                                "float",
                                2.7799999713897705,
                                5,
                                "obj-17",
                                "number",
                                "int",
                                348,
                                5,
                                "obj-23",
                                "number",
                                "int",
                                1168,
                                5,
                                "obj-24",
                                "number",
                                "int",
                                2679,
                                5,
                                "obj-27",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-154",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-166",
                                "number",
                                "int",
                                150,
                                5,
                                "obj-165",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-164",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-163",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-161",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-174",
                                "number",
                                "float",
                                1058.0,
                                5,
                                "obj-177",
                                "number",
                                "float",
                                719.0,
                                5,
                                "obj-187",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-186",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-185",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-184",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-182",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-195",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-205",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "filtertype",
                                5,
                                "obj-10",
                                "attrui",
                                "int",
                                8,
                                5,
                                "obj-54",
                                "attrui",
                                "attr",
                                "resonance",
                                5,
                                "obj-54",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-53",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-53",
                                "attrui",
                                "float",
                                0.24000000000000005,
                                5,
                                "obj-41",
                                "live.dial",
                                "float",
                                1098.71826171875,
                                5,
                                "obj-74",
                                "number",
                                "int",
                                2
                            ]
                        },
                        {
                            "number": 5,
                            "data": [
                                5,
                                "obj-28",
                                "number",
                                "float",
                                4.139999866485596,
                                5,
                                "obj-86",
                                "number",
                                "float",
                                1.1799999475479126,
                                5,
                                "obj-88",
                                "number",
                                "float",
                                58.0,
                                5,
                                "obj-90",
                                "number",
                                "float",
                                0.20000000298023224,
                                5,
                                "obj-17",
                                "number",
                                "int",
                                14,
                                5,
                                "obj-23",
                                "number",
                                "int",
                                790,
                                5,
                                "obj-24",
                                "number",
                                "int",
                                769,
                                5,
                                "obj-27",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-154",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-166",
                                "number",
                                "int",
                                150,
                                5,
                                "obj-165",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-164",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-163",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-161",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-174",
                                "number",
                                "float",
                                3831.0,
                                5,
                                "obj-177",
                                "number",
                                "float",
                                489.0,
                                5,
                                "obj-187",
                                "number",
                                "int",
                                600,
                                5,
                                "obj-186",
                                "number",
                                "int",
                                100,
                                5,
                                "obj-185",
                                "number",
                                "int",
                                1000,
                                5,
                                "obj-184",
                                "number",
                                "float",
                                0.5,
                                5,
                                "obj-182",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-195",
                                "toggle",
                                "int",
                                0,
                                5,
                                "obj-205",
                                "number",
                                "float",
                                0.0,
                                5,
                                "obj-10",
                                "attrui",
                                "attr",
                                "filtertype",
                                5,
                                "obj-10",
                                "attrui",
                                "int",
                                8,
                                5,
                                "obj-54",
                                "attrui",
                                "attr",
                                "resonance",
                                5,
                                "obj-54",
                                "attrui",
                                "float",
                                0.44000000000000006,
                                5,
                                "obj-53",
                                "attrui",
                                "attr",
                                "drive",
                                5,
                                "obj-53",
                                "attrui",
                                "float",
                                0.0,
                                5,
                                "obj-41",
                                "live.dial",
                                "float",
                                1098.71826171875,
                                5,
                                "obj-74",
                                "number",
                                "int",
                                2
                            ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        181.0344922542572,
                        538.6321802139282,
                        29.5,
                        22.0
                    ],
                    "text": "> 0"
                }
            },
            {
                "box": {
                    "id": "obj-voice-busy-noteon-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        726.5161337852478,
                        687.985053062439,
                        32.0,
                        22.0
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        733.2991265058517,
                        759.0908421278,
                        70.0,
                        22.0
                    ],
                    "text": "thispoly~"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1684.6155452728271,
                        275.38464164733887,
                        150.0,
                        20.0
                    ],
                    "text": "detune adsr"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1106.0,
                        1537.0,
                        150.0,
                        23.0
                    ],
                    "text": "频率adsr"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1283.1325775384903,
                        1210.8434182405472,
                        62.0,
                        22.0
                    ],
                    "text": "音量adsr"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        364.44443249702454,
                        2000.7406751513481,
                        300.0,
                        100.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "filtertype",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        455.4036341905594,
                        1777.272570490837,
                        214.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        206.0,
                        2123.0,
                        50.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        970.5718339681625,
                        212.07599663734436,
                        40.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "in 4"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        826.6324527263641,
                        212.07599663734436,
                        40.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "in 3"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        726.5161337852478,
                        268.1817945241928,
                        40.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "in 2"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        119.65812087059021,
                        322.2222254872322,
                        40.0,
                        22.0
                    ],
                    "saved_object_attributes": {
                        "attr_comment": "",
                        "c": ""
                    },
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "obj-poly-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        117.91044354438782,
                        364.0895564556122,
                        85.0,
                        22.0
                    ],
                    "text": "unpack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-poly-preset-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1023.0799999999999,
                        1832.0,
                        40.0,
                        22.0
                    ],
                    "text": "in 5"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-205",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        787.2385168075562,
                        454.5002176761627,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-204",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        797.8445764780045,
                        489.34869945049286,
                        29.5,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-201",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        752.390035033226,
                        552.9850574731827,
                        81.0,
                        22.0
                    ],
                    "text": "snapshot~ 10"
                }
            },
            {
                "box": {
                    "id": "obj-200",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        746.3294295072556,
                        515.1062729358673,
                        29.5,
                        22.0
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-199",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1427.6924438476562,
                        346.1538791656494,
                        86.0,
                        22.0
                    ],
                    "text": "r #0-noteOn"
                }
            },
            {
                "box": {
                    "id": "obj-198",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        725.0,
                        1499.0,
                        86.0,
                        22.0
                    ],
                    "text": "r #0-noteOn"
                }
            },
            {
                "box": {
                    "id": "obj-197",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        956.0620242357254,
                        1244.0,
                        86.0,
                        22.0
                    ],
                    "text": "r #0-noteOn"
                }
            },
            {
                "box": {
                    "id": "obj-195",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        148.41044354438782,
                        762.2221972346306,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-193",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        116.41044354438782,
                        805.1851587891579,
                        88.0,
                        22.0
                    ],
                    "text": "s #0-noteOn"
                }
            },
            {
                "box": {
                    "id": "obj-182",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1444.6155223846436,
                        401.5384998321533,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "attack_slope": -0.10596026984135652,
                    "attack_time": 600.0,
                    "decay_time": 100.0,
                    "id": "obj-183",
                    "maxclass": "live.adsrui",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1495.3847579956055,
                        356.92311096191406,
                        298.34803325060767,
                        100.66666722297668
                    ],
                    "release_time": 1000.0,
                    "sustain": 0.5
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-184",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1555.3847637176514,
                        303.0769519805908,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "flonum[272]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "flonum",
                            "parameter_type": 0
                        }
                    },
                    "varname": "flonum[2]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-185",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1589.230920791626,
                        332.30772399902344,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[515]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[7]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-186",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1526.1539916992188,
                        275.38464164733887,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[516]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[8]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-187",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1493.8462963104248,
                        246.15386962890625,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                600
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[517]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[9]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-188",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1547.692455291748,
                        249.23079299926758,
                        73.0,
                        21.0
                    ],
                    "text": "attack (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-189",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1578.4616889953613,
                        275.38464164733887,
                        73.0,
                        21.0
                    ],
                    "text": "decay (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-190",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1610.7693843841553,
                        304.6154136657715,
                        78.0,
                        21.0
                    ],
                    "text": "sustain gain",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-191",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1638.4616947174072,
                        333.8461856842041,
                        81.0,
                        21.0
                    ],
                    "text": "release (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-192",
                    "maxclass": "newobj",
                    "numinlets": 11,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        1463.0770626068115,
                        478.4615840911865,
                        328.8083509286808,
                        23.0
                    ],
                    "text": "live.adsr~ 600. 100. 0.5 1000."
                }
            },
            {
                "box": {
                    "id": "obj-180",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        480.6726024746895,
                        1605.3098636865616,
                        74.33628916740417,
                        34.0
                    ],
                    "text": "env mod depth"
                }
            },
            {
                "box": {
                    "id": "obj-179",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        376.99118077754974,
                        1601.7700403928757,
                        74.33628916740417,
                        34.0
                    ],
                    "text": "filter cutoff frequency"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-177",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        389.15932536125183,
                        1645.132875740528,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-176",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        397.34516471624374,
                        1783.1859841942787,
                        29.5,
                        22.0
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        479.6460562944412,
                        1727.4337673187256,
                        29.5,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-174",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        475.73528504371643,
                        1645.132875740528,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        725.0,
                        1584.070923924446,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "attack_time": 600.0,
                    "decay_time": 100.0,
                    "id": "obj-162",
                    "maxclass": "live.adsrui",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        815.0443133711815,
                        1584.070923924446,
                        298.34803325060767,
                        100.66666722297668
                    ],
                    "peak": 0.980132450440919,
                    "release_time": 1000.0,
                    "sustain": 0.5
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-163",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        874.0,
                        1521.1240162849426,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "flonum[273]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "flonum",
                            "parameter_type": 0
                        }
                    },
                    "varname": "flonum[1]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-164",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        908.8496306538582,
                        1549.5576468110085,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[483]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[4]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-165",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        846.0177671909332,
                        1492.0355182886124,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[513]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[5]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-166",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        815.0443133711815,
                        1463.716931939125,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                600
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[519]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[6]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-167",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        869.0266185998917,
                        1465.486843585968,
                        73.0,
                        21.0
                    ],
                    "text": "attack (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-168",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        900.0000724196434,
                        1492.9204741120338,
                        73.0,
                        21.0
                    ],
                    "text": "decay (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-169",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        930.0885704159737,
                        1522.1240162849426,
                        78.0,
                        21.0
                    ],
                    "text": "sustain gain",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-170",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        961.0620242357254,
                        1551.3275584578514,
                        81.0,
                        21.0
                    ],
                    "text": "release (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 11,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        784.9558153748512,
                        1697.3452693223953,
                        328.8083509286808,
                        23.0
                    ],
                    "text": "live.adsr~ 600. 100. 0.5 1000."
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        184.89837390184402,
                        1530.9523663520813,
                        29.5,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        961.0,
                        1344.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "attack_slope": 0.4768211894179427,
                    "attack_time": 600.0,
                    "decay_time": 100.0,
                    "id": "obj-4",
                    "maxclass": "live.adsrui",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1056.6265450716019,
                        1287.9518548250198,
                        298.34803325060767,
                        100.66666722297668
                    ],
                    "release_time": 1000.0,
                    "sustain": 0.5
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-27",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1118.0723304748535,
                        1224.0964307785034,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.5
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "flonum[274]",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "flonum",
                            "parameter_type": 0
                        }
                    },
                    "varname": "flonum"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1150.602452158928,
                        1253.0120944976807,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                1000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[514]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[3]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-23",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1086.7470281124115,
                        1195.1807670593262,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[482]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[2]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-17",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1056.6265450716019,
                        1166.265103340149,
                        50.0,
                        23.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                600
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_invisible": 1,
                            "parameter_longname": "number[518]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "number[2]",
                            "parameter_type": 3
                        }
                    },
                    "varname": "number[1]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1109.6385952234268,
                        1168.6747419834137,
                        73.0,
                        21.0
                    ],
                    "text": "attack (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-152",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1140.9638975858688,
                        1196.3855863809586,
                        73.0,
                        21.0
                    ],
                    "text": "decay (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1171.0843806266785,
                        1225.3012501001358,
                        78.0,
                        21.0
                    ],
                    "text": "sustain gain",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-26",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1202.4096829891205,
                        1254.216913819313,
                        81.0,
                        21.0
                    ],
                    "text": "release (ms)",
                    "textcolor": [
                        0.501961,
                        0.501961,
                        0.501961,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 11,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        1026.5060620307922,
                        1400.0000517368317,
                        328.8083509286808,
                        23.0
                    ],
                    "text": "live.adsr~ 600. 100. 0.5 1000."
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1333.333375453949,
                        864.5161352157593,
                        70.0,
                        22.0
                    ],
                    "text": "r #0-note"
                }
            },
            {
                "box": {
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1551.6129143238068,
                        864.5161352157593,
                        102.0,
                        22.0
                    ],
                    "text": "r #0-modDepth"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1474.1935589313507,
                        867.741941690445,
                        95.0,
                        22.0
                    ],
                    "text": "r #0-modRate"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1406.4516229629517,
                        864.5161352157593,
                        83.0,
                        22.0
                    ],
                    "text": "r #0-detune"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        1377.4193646907806,
                        929.0322647094727,
                        63.0,
                        22.0
                    ],
                    "text": "FM"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        869.9354906082153,
                        864.5161352157593,
                        70.0,
                        22.0
                    ],
                    "text": "r #0-note"
                }
            },
            {
                "box": {
                    "id": "obj-140",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1093.5483949184418,
                        867.741941690445,
                        102.0,
                        22.0
                    ],
                    "text": "r #0-modDepth"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1019.3548460006714,
                        864.5161352157593,
                        95.0,
                        22.0
                    ],
                    "text": "r #0-modRate"
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        941.9354906082153,
                        864.5161352157593,
                        83.0,
                        22.0
                    ],
                    "text": "r #0-detune"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        919.3548452854156,
                        932.2580711841583,
                        63.0,
                        22.0
                    ],
                    "text": "FM"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        444.12903594970703,
                        858.0645222663879,
                        70.0,
                        22.0
                    ],
                    "text": "r #0-note"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        664.5161337852478,
                        858.0645222663879,
                        102.0,
                        22.0
                    ],
                    "text": "r #0-modDepth"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        590.3225848674774,
                        858.0645222663879,
                        95.0,
                        22.0
                    ],
                    "text": "r #0-modRate"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        516.129035949707,
                        858.0645222663879,
                        83.0,
                        22.0
                    ],
                    "text": "r #0-detune"
                }
            },
            {
                "box": {
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        490.3225841522217,
                        925.806458234787,
                        63.0,
                        22.0
                    ],
                    "text": "FM"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        -11.764705181121826,
                        854.6217978000641,
                        70.0,
                        22.0
                    ],
                    "text": "r #0-note"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        114.92536902427673,
                        482.0,
                        72.0,
                        22.0
                    ],
                    "text": "s #0-note"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        212.90322732925415,
                        861.2903287410736,
                        102.0,
                        22.0
                    ],
                    "text": "r #0-modDepth"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        138.70967841148376,
                        858.0645222663879,
                        95.0,
                        22.0
                    ],
                    "text": "r #0-modRate"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        970.5718339681625,
                        425.71234142780304,
                        104.0,
                        22.0
                    ],
                    "text": "s #0-modDepth"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        849.3597234487534,
                        425.71234142780304,
                        97.0,
                        22.0
                    ],
                    "text": "s #0-modRate"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        67.74193596839905,
                        851.6129093170166,
                        83.0,
                        22.0
                    ],
                    "text": "r #0-detune"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        756.9354891777039,
                        602.985053062439,
                        85.0,
                        22.0
                    ],
                    "text": "s #0-detune"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        743.2991267442703,
                        331.7729557752609,
                        49.99999952316284,
                        36.0
                    ],
                    "text": "程度 0.～1."
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        738.7536725997925,
                        309.0456850528717,
                        49.59349590539932,
                        20.0
                    ],
                    "text": "detune"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-90",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        734.2082184553146,
                        383.2881027460098,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-88",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        114.92536902427673,
                        447.67164301872253,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-86",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        849.3597234487534,
                        371.1668916940689,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        48.387097120285034,
                        941.9354906082153,
                        63.0,
                        22.0
                    ],
                    "text": "FM"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        976.632439494133,
                        331.7729557752609,
                        66.87499362230301,
                        20.0
                    ],
                    "text": "mod depth"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        861.4809345006943,
                        331.7729557752609,
                        66.87499362230301,
                        20.0
                    ],
                    "text": "mod rate"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-28",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        970.5718339681625,
                        380.2577999830246,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        18.96551823616028,
                        514.4146463871002,
                        66.87499362230301,
                        20.0
                    ],
                    "text": "midi note"
                }
            },
            {
                "box": {
                    "id": "select",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        181.0344922542572,
                        586.6666474342346,
                        110.0,
                        22.0
                    ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "order",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        181.0344922542572,
                        647.985053062439,
                        110.0,
                        22.0
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "wake",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        380.7407282590866,
                        687.985053062439,
                        47.407405853271484,
                        22.0
                    ],
                    "text": "mute 0"
                }
            },
            {
                "box": {
                    "id": "retrigger",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        172.82153004407883,
                        701.4814584851265,
                        45.92592442035675,
                        22.0
                    ],
                    "text": "0, 1"
                }
            },
            {
                "box": {
                    "id": "off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        272.68100649118423,
                        701.4814584851265,
                        42.222220838069916,
                        22.0
                    ],
                    "text": "0"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        0
                    ],
                    "source": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-90",
                        0
                    ],
                    "source": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-86",
                        0
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        1
                    ],
                    "source": [
                        "obj-126",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-28",
                        0
                    ],
                    "source": [
                        "obj-13",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        3
                    ],
                    "source": [
                        "obj-130",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        2
                    ],
                    "source": [
                        "obj-131",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        0
                    ],
                    "source": [
                        "obj-133",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-138",
                        0
                    ],
                    "source": [
                        "obj-134",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-138",
                        3
                    ],
                    "source": [
                        "obj-135",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-138",
                        2
                    ],
                    "source": [
                        "obj-136",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-138",
                        1
                    ],
                    "source": [
                        "obj-137",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-155",
                        0
                    ],
                    "source": [
                        "obj-138",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        0
                    ],
                    "source": [
                        "obj-139",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        3
                    ],
                    "source": [
                        "obj-140",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        2
                    ],
                    "source": [
                        "obj-141",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        1
                    ],
                    "source": [
                        "obj-142",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-155",
                        0
                    ],
                    "source": [
                        "obj-143",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-148",
                        0
                    ],
                    "source": [
                        "obj-144",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-148",
                        3
                    ],
                    "source": [
                        "obj-145",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-148",
                        2
                    ],
                    "source": [
                        "obj-146",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-148",
                        1
                    ],
                    "source": [
                        "obj-147",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-155",
                        0
                    ],
                    "source": [
                        "obj-148",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-154",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-155",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-155",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        0
                    ],
                    "source": [
                        "obj-161",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        10
                    ],
                    "source": [
                        "obj-162",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        9
                    ],
                    "source": [
                        "obj-162",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        8
                    ],
                    "source": [
                        "obj-162",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        7
                    ],
                    "source": [
                        "obj-162",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        6
                    ],
                    "source": [
                        "obj-162",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        5
                    ],
                    "source": [
                        "obj-162",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        4
                    ],
                    "source": [
                        "obj-162",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        3
                    ],
                    "source": [
                        "obj-162",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        2
                    ],
                    "source": [
                        "obj-162",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-171",
                        1
                    ],
                    "source": [
                        "obj-162",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-162",
                        2
                    ],
                    "source": [
                        "obj-163",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-162",
                        3
                    ],
                    "source": [
                        "obj-164",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-162",
                        1
                    ],
                    "source": [
                        "obj-165",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-162",
                        0
                    ],
                    "source": [
                        "obj-166",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-175",
                        1
                    ],
                    "source": [
                        "obj-171",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-175",
                        0
                    ],
                    "source": [
                        "obj-174",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-176",
                        1
                    ],
                    "source": [
                        "obj-175",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        4
                    ],
                    "source": [
                        "obj-176",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-176",
                        0
                    ],
                    "source": [
                        "obj-177",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        0
                    ],
                    "source": [
                        "obj-182",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        10
                    ],
                    "source": [
                        "obj-183",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        9
                    ],
                    "source": [
                        "obj-183",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        8
                    ],
                    "source": [
                        "obj-183",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        7
                    ],
                    "source": [
                        "obj-183",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        6
                    ],
                    "source": [
                        "obj-183",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        5
                    ],
                    "source": [
                        "obj-183",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        4
                    ],
                    "source": [
                        "obj-183",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        3
                    ],
                    "source": [
                        "obj-183",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        2
                    ],
                    "source": [
                        "obj-183",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-192",
                        1
                    ],
                    "source": [
                        "obj-183",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-183",
                        2
                    ],
                    "source": [
                        "obj-184",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-183",
                        3
                    ],
                    "source": [
                        "obj-185",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-183",
                        1
                    ],
                    "source": [
                        "obj-186",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-183",
                        0
                    ],
                    "source": [
                        "obj-187",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-204",
                        1
                    ],
                    "source": [
                        "obj-192",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-193",
                        0
                    ],
                    "source": [
                        "obj-195",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-154",
                        0
                    ],
                    "source": [
                        "obj-197",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-161",
                        0
                    ],
                    "source": [
                        "obj-198",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-182",
                        0
                    ],
                    "source": [
                        "obj-199",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-155",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-201",
                        0
                    ],
                    "source": [
                        "obj-200",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-125",
                        0
                    ],
                    "source": [
                        "obj-201",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-200",
                        1
                    ],
                    "source": [
                        "obj-204",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-204",
                        0
                    ],
                    "source": [
                        "obj-205",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        1
                    ],
                    "source": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        3
                    ],
                    "source": [
                        "obj-24",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        2
                    ],
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-129",
                        0
                    ],
                    "source": [
                        "obj-28",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        10
                    ],
                    "source": [
                        "obj-4",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        9
                    ],
                    "source": [
                        "obj-4",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        8
                    ],
                    "source": [
                        "obj-4",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        7
                    ],
                    "source": [
                        "obj-4",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        6
                    ],
                    "source": [
                        "obj-4",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        5
                    ],
                    "source": [
                        "obj-4",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        4
                    ],
                    "source": [
                        "obj-4",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        3
                    ],
                    "source": [
                        "obj-4",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        2
                    ],
                    "source": [
                        "obj-4",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        1
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-177",
                        0
                    ],
                    "hidden": 1,
                    "source": [
                        "obj-41",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "select",
                        0
                    ],
                    "source": [
                        "obj-51",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        0
                    ],
                    "midpoints": [
                        489.1460562944412,
                        1923.0,
                        207.7906002998352,
                        1923.0
                    ],
                    "source": [
                        "obj-53",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-57",
                        0
                    ],
                    "midpoints": [
                        489.1460562944412,
                        1890.0,
                        207.7906002998352,
                        1890.0
                    ],
                    "source": [
                        "obj-54",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-20",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-57",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-57",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-8",
                        0
                    ],
                    "source": [
                        "obj-57",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-63",
                        4
                    ],
                    "source": [
                        "obj-58",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-138",
                        4
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-143",
                        4
                    ],
                    "source": [
                        "obj-60",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-148",
                        4
                    ],
                    "source": [
                        "obj-61",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-155",
                        0
                    ],
                    "source": [
                        "obj-63",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-74",
                        0
                    ],
                    "source": [
                        "obj-68",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-74",
                        0
                    ],
                    "source": [
                        "obj-70",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-64",
                        0
                    ],
                    "source": [
                        "obj-74",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-128",
                        0
                    ],
                    "source": [
                        "obj-86",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-132",
                        0
                    ],
                    "source": [
                        "obj-88",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-poly-unpack",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-200",
                        0
                    ],
                    "source": [
                        "obj-90",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        0
                    ],
                    "source": [
                        "obj-poly-preset-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-51",
                        0
                    ],
                    "source": [
                        "obj-poly-unpack",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-88",
                        0
                    ],
                    "source": [
                        "obj-poly-unpack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "source": [
                        "obj-voice-busy-noteon-one",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-195",
                        0
                    ],
                    "source": [
                        "off",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "retrigger",
                        0
                    ],
                    "source": [
                        "order",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "wake",
                        0
                    ],
                    "source": [
                        "order",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-195",
                        0
                    ],
                    "source": [
                        "retrigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-voice-busy-noteon-one",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "select",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "off",
                        0
                    ],
                    "source": [
                        "select",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "order",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "select",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "source": [
                        "wake",
                        0
                    ]
                }
            }
        ]
    }
}