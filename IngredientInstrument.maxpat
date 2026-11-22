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
        "rect": [ 36.0, 84.0, 1639.0, 908.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 351.98291009664536, 77.0, 84.0, 22.0 ],
                    "text": "r midivelocity"
                }
            },
            {
                "box": {
                    "id": "obj-147",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 272.98291009664536, 77.0, 71.0, 22.0 ],
                    "text": "r midivalue"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40, 15, 420, 31 ],
                    "text": "Ingredient Instrument | 8 Voices"
                }
            },
            {
                "box": {
                    "comment": "Inlet 1: MIDI pitch. Set velocity before sending pitch.",
                    "id": "obj-pitch-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 60.0, 70.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Inlet 2: MIDI velocity, 0–127. 0 is note-off.",
                    "id": "obj-velocity-in",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 116.0, 70.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Inlet 3: part switch. 0 fades out and 1 fades in over 150 ms.",
                    "id": "obj-presence-in",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220.51282274723053, 69.23076993227005, 30, 30 ]
                }
            },
            {
                "box": {
                    "comment": "Inlet 4: preset number, 1–5, recalled across all 8 voices.",
                    "id": "obj-preset-in",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 417.0, 136.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-note-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 60.0, 135.0, 75.0, 22.0 ],
                    "text": "pack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-midinote",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 60.0, 175.0, 125.0, 22.0 ],
                    "text": "prepend midinote"
                }
            },
            {
                "box": {
                    "id": "obj-poly",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 60.0, 245.0, 218.0, 24.0 ],
                    "text": "poly~ IngredientSynth 8 @steal 1 @target 0"
                }
            },
            {
                "box": {
                    "id": "obj-gain-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 60.0, 310.0, 35.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-gain-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 135.0, 310.0, 35.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "comment": "Outlet 1: left audio.",
                    "id": "obj-out-l",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 60.0, 380.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Outlet 2: right audio.",
                    "id": "obj-out-r",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 135.0, 380.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "hint": "Send the part gain target (0 or 1) and the 150 ms fade time to line~.",
                    "id": "presence-fade-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 220, 135, 100, 22 ],
                    "text": "pack 0. 150"
                }
            },
            {
                "box": {
                    "hint": "Fade synth output over 150 ms to smooth gate changes.",
                    "id": "presence-fade-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 220.0, 175.0, 75.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "comment": "Inlet 5: parameter name + value, e.g. cutoff_hz 3000. Updates all 8 voices.",
                    "id": "sync-param-in",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 581.0, 136.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "hint": "Prepend setvalue 0 to send the named parameter to all 8 voice parameter inlets.",
                    "id": "sync-param-all",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 581.0, 188.0, 150.0, 22.0 ],
                    "text": "prepend setvalue 0"
                }
            },
            {
                "box": {
                    "hint": "Prepend setvalue 0 to recall the preset on all 8 voices.",
                    "id": "sync-preset-all",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 414.0, 189.0, 150.0, 22.0 ],
                    "text": "prepend setvalue 0"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-note-pack", 1 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-note-pack", 0 ],
                    "source": [ "obj-147", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-out-l", 0 ],
                    "source": [ "obj-gain-l", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-out-r", 0 ],
                    "source": [ "obj-gain-r", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-poly", 0 ],
                    "source": [ "obj-midinote", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-note-pack", 0 ],
                    "source": [ "obj-pitch-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain-l", 0 ],
                    "source": [ "obj-poly", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain-r", 0 ],
                    "source": [ "obj-poly", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sync-preset-all", 0 ],
                    "source": [ "obj-preset-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-note-pack", 1 ],
                    "source": [ "obj-velocity-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain-l", 1 ],
                    "order": 1,
                    "source": [ "presence-fade-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gain-r", 1 ],
                    "order": 0,
                    "source": [ "presence-fade-line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "presence-fade-line", 0 ],
                    "source": [ "presence-fade-pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-poly", 5 ],
                    "source": [ "sync-param-all", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sync-param-all", 0 ],
                    "source": [ "sync-param-in", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-poly", 4 ],
                    "source": [ "sync-preset-all", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-note-pack", 0 ],
                    "destination": [ "obj-midinote", 0 ]
                }
            },
            {
                "patchline": {
                    "source": [ "obj-presence-in", 0 ],
                    "destination": [ "presence-fade-pack", 0 ]
                }
            }
        ]
    }
}