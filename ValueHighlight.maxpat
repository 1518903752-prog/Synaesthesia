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
        "rect": [ 134, 134, 365, 345 ],
        "boxes": [
            {
                "box": {
                    "id": "initial-border-off",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 173, 178, 89, 22 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "comment": "Raw numeric value",
                    "id": "value-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45, 32, 30, 30 ]
                }
            },
            {
                "box": {
                    "id": "detect",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 45, 89, 75, 22 ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "id": "flash",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45, 134, 83, 22 ],
                    "text": "1., 0. 360"
                }
            },
            {
                "box": {
                    "id": "fade",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 45, 178, 86, 22 ],
                    "text": "line 0. 45"
                }
            },
            {
                "box": {
                    "id": "border",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 45, 224, 166, 22 ],
                    "text": "bordercolor 0.62 0.91 0.68 $1"
                }
            },
            {
                "box": {
                    "comment": "Border highlight color",
                    "id": "border-out",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45, 272, 30, 30 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [ "initial-border-off", 0 ],
                    "destination": [ "border", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "border-out", 0 ],
                    "source": [ "border", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fade", 0 ],
                    "source": [ "flash", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "detect", 0 ],
                    "source": [ "value-in", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "detect", 0 ],
                    "destination": [ "flash", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "fade", 0 ],
                    "destination": [ "border", 0 ]
                }
            }
        ]
    }
}
