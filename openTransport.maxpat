{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 640.0, 480.0 ],
        "bglocked": 0,
        "openinpresentation": 1,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [ 15.0, 15.0 ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "cluebar": 0,
        "boxes": [
            {
                "box": {
                    "bgcolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "bgoncolor": [ 0.0, 0.0, 0.0, 0.0 ],
                    "fontface": 3,
                    "fontlink": 1,
                    "fontsize": 13.0,
                    "id": "obj-39",
                    "legacytextcolor": 1,
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 26.0, 145.71875, 14.5234375 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.0, 5.0, 145.71875, 14.5234375 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_selectioncolor"
                        }
                    },
                    "spacing_x": 0.0,
                    "spacing_y": 0.0,
                    "text": "Open GlobalTransport",
                    "textcolor": [ 0.922234290352602, 0.71007200526417, 0.329758341965716, 1.0 ],
                    "textoncolor": [ 0.27, 0.35, 0.47, 1.0 ],
                    "textovercolor": [ 0.6, 0.741176, 0.858824, 1.0 ],
                    "underline": 1,
                    "usebgoncolor": 1,
                    "usetextovercolor": 1,
                    "varname": "autohelp_global_transport"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 60.0, 163.0, 22.0 ],
                    "text": "load globaltransport.maxpat"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 90.0, 54.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "angle": 0.0,
                    "background": 1,
                    "bgcolor": [ 0.125, 0.125, 0.125, 1.0 ],
                    "bordercolor": [ 0.501961, 0.501961, 0.501961, 1.0 ],
                    "id": "obj-24",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 20.0, 158.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 158.0, 27.0 ],
                    "proportion": 0.39,
                    "rounded": 6,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.toolbar_background_active"
                        }
                    },
                    "varname": "autohelp_itm_panel[1]"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            }
        ],
        "originid": "pat-7750",
        "dependency_cache": [],
        "autosave": 0,
        "oscsendmode": 0,
        "oscsendudpaddr": "127.0.0.1",
        "oscsendudpport": 30337,
        "oscreceivemode": 0,
        "oscreceiveudpport": 30338,
        "oscqueryenable": 0,
        "oscprefixmode": 0,
        "oscprefix": ""
    }
}