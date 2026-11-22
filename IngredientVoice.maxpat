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
            36.0,
            84.0,
            1639.0,
            908.0
        ],
        "boxes": [
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
                        351.98291009664536,
                        77.0,
                        84.0,
                        22.0
                    ],
                    "text": "r midivelocity"
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
                        272.98291009664536,
                        77.0,
                        71.0,
                        22.0
                    ],
                    "text": "r midivalue"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        40.0,
                        15.0,
                        420.0,
                        31.0
                    ],
                    "text": "IngredientVoice：共享食材乐器层"
                }
            },
            {
                "box": {
                    "comment": "音高",
                    "id": "obj-pitch-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        60.0,
                        70.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "力度",
                    "id": "obj-velocity-in",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        116.0,
                        70.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "食材出现0/1",
                    "id": "obj-presence-in",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        220.51282274723053,
                        69.23076993227005,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "预设编号1到4",
                    "id": "obj-preset-in",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        405.98291009664536,
                        188.88889080286026,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-note-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        60.0,
                        135.0,
                        75.0,
                        22.0
                    ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-midinote",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        60.0,
                        175.0,
                        125.0,
                        22.0
                    ],
                    "text": "prepend midinote"
                }
            },
            {
                "box": {
                    "id": "obj-poly",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        60.0,
                        245.0,
                        189.0,
                        22.0
                    ],
                    "text": "poly~ Synth 8 @steal 1 @target 0"
                }
            },
            {
                "box": {
                    "id": "obj-gain-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60.0,
                        310.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-gain-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        135.0,
                        310.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "comment": "左声道",
                    "id": "obj-out-l",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        60.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "右声道",
                    "id": "obj-out-r",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        135.0,
                        380.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-port-labels",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        445.0,
                        77.0,
                        200.0,
                        36.0
                    ],
                    "text": "1音高  2力度  3出现0/1  4预设编号\n  "
                }
            },
            {
                "box": {
                    "id": "presence-fade-pack",
                    "maxclass": "newobj",
                    "text": "pack 0. 150",
                    "patching_rect": [
                        220.0,
                        135.0,
                        100.0,
                        22.0
                    ],
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "presence-fade-line",
                    "maxclass": "newobj",
                    "text": "line~ 0.",
                    "patching_rect": [
                        220.0,
                        175.0,
                        75.0,
                        22.0
                    ],
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-note-pack",
                        1
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
                        "obj-note-pack",
                        0
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
                        "obj-out-l",
                        0
                    ],
                    "source": [
                        "obj-gain-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out-r",
                        0
                    ],
                    "source": [
                        "obj-gain-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-poly",
                        0
                    ],
                    "source": [
                        "obj-midinote",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-midinote",
                        0
                    ],
                    "source": [
                        "obj-note-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-note-pack",
                        0
                    ],
                    "source": [
                        "obj-pitch-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain-l",
                        0
                    ],
                    "source": [
                        "obj-poly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gain-r",
                        0
                    ],
                    "source": [
                        "obj-poly",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-poly",
                        4
                    ],
                    "source": [
                        "obj-preset-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-note-pack",
                        1
                    ],
                    "source": [
                        "obj-velocity-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "presence-fade-line",
                        0
                    ],
                    "destination": [
                        "obj-gain-l",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "presence-fade-line",
                        0
                    ],
                    "destination": [
                        "obj-gain-r",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-presence-in",
                        0
                    ],
                    "destination": [
                        "presence-fade-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "presence-fade-pack",
                        0
                    ],
                    "destination": [
                        "presence-fade-line",
                        0
                    ]
                }
            }
        ]
    }
}
