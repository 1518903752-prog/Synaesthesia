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
        "rect": [ 100.0, 100.0, 520.0, 360.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 15.0, 420.0, 22.0 ],
                    "text": "1 waits for next 4n beat | 0 cancels pending start and stops now"
                }
            },
            {
                "box": {
                    "comment": "ingredient presence 0 or 1",
                    "id": "obj-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 70.0, 55.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-change",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 70.0, 105.0, 65.0, 23.0 ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "id": "obj-select",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 70.0, 150.0, 55.0, 23.0 ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "obj-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 70.0, 195.0, 32.0, 23.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-pipe",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 70.0, 240.0, 130.0, 23.0 ],
                    "text": "pipe 0 @quantize 4n"
                }
            },
            {
                "box": {
                    "id": "obj-zero-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 185.0, 195.0, 40.0, 23.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-clear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.0, 240.0, 40.0, 23.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 185.0, 285.0, 32.0, 23.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "comment": "beat-gated presence 0 or 1",
                    "id": "obj-out",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 70.0, 300.0, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            { "patchline": { "source": [ "obj-in", 0 ], "destination": [ "obj-change", 0 ] } },
            { "patchline": { "source": [ "obj-change", 0 ], "destination": [ "obj-select", 0 ] } },
            { "patchline": { "source": [ "obj-select", 0 ], "destination": [ "obj-on", 0 ] } },
            { "patchline": { "source": [ "obj-on", 0 ], "destination": [ "obj-pipe", 0 ] } },
            { "patchline": { "source": [ "obj-pipe", 0 ], "destination": [ "obj-out", 0 ] } },
            { "patchline": { "source": [ "obj-select", 1 ], "destination": [ "obj-zero-trigger", 0 ] } },
            { "patchline": { "source": [ "obj-zero-trigger", 1 ], "destination": [ "obj-clear", 0 ] } },
            { "patchline": { "source": [ "obj-clear", 0 ], "destination": [ "obj-pipe", 0 ] } },
            { "patchline": { "source": [ "obj-zero-trigger", 0 ], "destination": [ "obj-off", 0 ] } },
            { "patchline": { "source": [ "obj-off", 0 ], "destination": [ "obj-out", 0 ] } }
        ]
    }
}
