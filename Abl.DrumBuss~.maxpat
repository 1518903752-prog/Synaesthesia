{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"openrect" : [ 0.0, 2.0, 168.0, 123.0 ],
		"openinpresentation" : 1,
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"toolbarvisible" : 0,
		"description" : "A stereo analog-style drum processor",
		"digest" : "Ableton-based stereo drum module",
		"tags" : "Ableton stereo drum module drive filter",
		"subpatcher_template" : "Abl.EffectModules",
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"integercoordinates" : 1,
		"title" : "Abl.DrumBuss~",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 260.0, 42.0, 22.0 ],
					"text" : "mute~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 230.0, 60.0, 22.0 ],
					"text" : "r #0-Mute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 259.0, 288.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 150.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 90.0, 32.0, 22.0 ],
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 120.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 90.0, 32.0, 22.0 ],
									"text" : "ftom"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-57",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-62",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 220.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 410.0, 100.0, 49.0, 22.0 ],
					"text" : "p Pitch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.125, 0.125, 0.125, 0.0 ],
					"fontname" : "Ableton Sans Light ",
					"fontsize" : 8.0,
					"format" : 4,
					"id" : "obj-13",
					"maxclass" : "number",
					"maximum" : 42,
					"minimum" : 23,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 70.0, 30.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 97.0, 27.0, 16.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 300.0, 74.0, 22.0 ],
					"text" : "distortion $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 300.0, 77.0, 22.0 ],
					"text" : "boomsolo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 300.0, 88.0, 22.0 ],
					"text" : "compressor $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 160.0, 44.0, 22.0 ],
					"text" : "mix $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 160.0, 59.0, 22.0 ],
					"text" : "output $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 130.0, 57.0, 22.0 ],
					"text" : "decay $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 410.0, 160.0, 76.0, 22.0 ],
					"text" : "boomfreq $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 160.0, 55.0, 22.0 ],
					"text" : "boom $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 130.0, 77.0, 22.0 ],
					"text" : "transients $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 160.0, 71.0, 22.0 ],
					"text" : "damping $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 130.0, 61.0, 22.0 ],
					"text" : "crunch $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 160.0, 51.0, 22.0 ],
					"text" : "input $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 130.0, 51.0, 22.0 ],
					"text" : "drive $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-133",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 600.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Ableton Sans Light ",
					"id" : "obj-132",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 48.0, 39.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 32.0, 39.0, 16.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : ""
						}

					}
,
					"text" : "Crunch",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 97.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[6]"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Emphasize or de-emphasize the transients of mid-high frequencies [-1. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-82",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 290.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 33.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Trans",
							"parameter_mmax" : 1.0,
							"parameter_mmin" : -1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Trans",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"triangle" : 1,
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Trans"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Adds extra distortion to the mid-high frequencies [0. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-8",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 170.0, 60.0, 25.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 46.0, 25.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Crunch",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Crunch",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Crunch"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Sets the damping frequency in Hz for the output signal [500. 20000.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-9",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 230.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.0, 33.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_exponent" : 2.0,
							"parameter_initial" : [ 9200 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Damp",
							"parameter_mmax" : 20000.0,
							"parameter_mmin" : 500.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Damp",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Damp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 57.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[5]"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"annotation" : "Auditions the result of the low-frequency enhancer [0/1]",
					"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hint" : "Solo",
					"id" : "obj-118",
					"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
					"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 540.0, 270.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 99.0, 10.0, 10.0 ],
					"rounded" : 64.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"inactivelcdcolor" : 						{
							"expression" : ""
						}
,
						"lcdcolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Off", "On" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Solo",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Solo",
							"parameter_type" : 2
						}

					}
,
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Solo"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Sets the dry/wet mix of the output signal [0. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-122",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 600.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 73.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Mix",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Mix",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"triangle" : 1,
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Mix"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Adjusts the amount of low-frequency enhancement. [0. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-123",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 350.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 73.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Boom",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Boom",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Boom"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Adjusts the decay rate of the low frequencies [0. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-125",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 480.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 73.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Decay",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Decay",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Decay"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Adjusts the frequency in Hz of the low-end enhancer [30. 90.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-126",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 410.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.0, 73.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 50 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Freq",
							"parameter_mmax" : 90.0,
							"parameter_mmin" : 30.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Freq",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.0, 97.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 122.0, 97.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 40.0, 390.0, 33.0 ],
					"text" : "Drum-buss is designed to add body and character to a group of drums, while gluing them together in a tight mix."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 990.0, 410.0, 93.0, 35.0 ],
					"restore" : 					{
						"Active" : [ 1.0 ],
						"Boom" : [ 0.0 ],
						"Comp" : [ 0.0 ],
						"Crunch" : [ 0.0 ],
						"Damp" : [ 9200.0 ],
						"Decay" : [ 1.0 ],
						"Dist" : [ 0.0 ],
						"Drive" : [ 0.2 ],
						"Freq" : [ 50.0 ],
						"Gain" : [ 0.0 ],
						"Mix" : [ 1.0 ],
						"ModInA" : [ "None" ],
						"ModInB" : [ "None" ],
						"ModOutA" : [ "None" ],
						"ModOutB" : [ "None" ],
						"Solo" : [ 0.0 ],
						"Trans" : [ 0.0 ],
						"Trim" : [ 0.0 ]
					}
,
					"text" : "autopattr @autorestore 0",
					"varname" : "u766011451[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1110.0, 470.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 117.0, 161.0, 976.0, 592.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 340.0, 41.0, 22.0 ],
									"text" : "nopoll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 70.0, 340.0, 52.0, 22.0 ],
									"text" : "togedge"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 260.0, 30.0, 22.0 ],
									"text" : "poll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 10,
									"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "float", "float", "list" ],
									"patching_rect" : [ 70.0, 310.0, 114.0, 22.0 ],
									"text" : "mousestate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 170.0, 390.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 170.0, 260.0, 44.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 420.0, 110.0, 35.0 ],
									"text" : "sprintf script send %sLed hidden 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 400.0, 194.0, 22.0 ],
									"text" : "sprintf script send %sLed active %i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 510.0, 340.0, 30.0, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 370.0, 213.0, 22.0 ],
									"text" : "ModInA, ModInB, ModOutA, ModOutB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 310.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 130.0, 84.0, 22.0 ],
									"text" : "r #0-ModOutB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 820.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 780.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 780.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 130.0, 84.0, 22.0 ],
									"text" : "r #0-ModOutA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 730.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 690.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 600.0, 130.0, 75.0, 22.0 ],
									"text" : "r #0-ModInB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 640.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 600.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 600.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 130.0, 75.0, 22.0 ],
									"text" : "r #0-ModInA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 550.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 510.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 550.0, 90.0, 379.0, 22.0 ],
									"text" : "routepass ModInA ModInB ModOutA ModOutB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 130.0, 84.0, 22.0 ],
									"text" : "r #0-ModOutB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 350.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 130.0, 84.0, 22.0 ],
									"text" : "r #0-ModOutA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 260.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 130.0, 75.0, 22.0 ],
									"text" : "r #0-ModInB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 170.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 130.0, 75.0, 22.0 ],
									"text" : "r #0-ModInA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 160.0, 32.0, 22.0 ],
									"text" : "$1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 190.0, 59.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 80.0, 160.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 310.0, 110.0, 35.0 ],
									"text" : "sprintf script send %sLed hidden %i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 550.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 120.0, 90.0, 379.0, 22.0 ],
									"text" : "routepass ModInA ModInB ModOutA ModOutB"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 0,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"order" : 1,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 1 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 1 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 1 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-87", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-87", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 1110.0, 440.0, 45.0, 22.0 ],
					"text" : "p Leds"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1110.0, 410.0, 58.0, 22.0 ],
					"saved_object_attributes" : 					{
						"mode" : 0
					}
,
					"text" : "hover"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1000.0, 220.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-92",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1000.0, 160.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 7.0, 17.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"uncheckedcolor" : 						{
							"expression" : "themecolor.theme_patchlinecolor"
						}

					}
,
					"uncheckedcolor" : [ 0.447518749806177, 0.44751863973454, 0.447518668498017, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 910.0, 160.0, 79.0, 22.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 390.0, 375.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Max standard",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 120.0, 44.0, 22.0 ],
									"text" : "title $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 120.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 90.0, 80.0, 69.0, 22.0 ],
									"text" : "route name"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 260.0, 170.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 150.0, 47.0, 22.0 ],
									"text" : "receive"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 310.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 310.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 220.0, 69.0, 35.0 ],
									"text" : "substitute open front"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 210.0, 130.0, 49.0 ],
									"text" : "window flags nogrow, window flags float, window exec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 110.0, 130.0, 49.0 ],
									"text" : "window flags grow, window flags nofloat, window exec"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 210.0, 80.0, 59.0, 22.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 30.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 940.0, 190.0, 79.0, 22.0 ],
					"text" : "p Name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 390.0, 66.0, 22.0 ],
					"text" : "r #0-Active"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 420.0, 77.0, 22.0 ],
					"text" : "Abl.FxColors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 690.0, 220.0, 73.0, 22.0 ],
					"text" : "pattrforward"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 790.0, 220.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 470.0, 436.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 130.0, 83.0, 22.0 ],
									"text" : "s #0-ModInA2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 260.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 260.0, 53.0, 22.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 60.0, 180.0, 64.0, 22.0 ],
									"text" : "snapshot~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 110.0, 130.0, 63.0, 22.0 ],
									"text" : "qmetro 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 150.0, 210.0, 69.0, 22.0 ],
									"text" : "route None"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 290.0, 80.0, 35.0 ],
									"text" : "send $1, rawfloat $2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 320.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 210.0, 77.0, 22.0 ],
									"text" : "s #0-ModInA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 220.0, 260.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 290.0, 187.0, 22.0 ],
									"text" : "script send ModInALed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 60.0, 210.0, 70.0, 35.0 ],
									"text" : "change -0.000001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 110.0, 100.0, 30.0, 22.0 ],
									"text" : "*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 70.0, 29.5, 22.0 ],
									"text" : "pak"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 70.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 110.0, 40.0, 30.0, 22.0 ],
									"text" : "> 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 240.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 290.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-119",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"order" : 1,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 2,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 690.0, 170.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 470.0, 436.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 130.0, 83.0, 22.0 ],
									"text" : "s #0-ModInB2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 260.0, 41.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 260.0, 53.0, 22.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 60.0, 180.0, 64.0, 22.0 ],
									"text" : "snapshot~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 110.0, 130.0, 63.0, 22.0 ],
									"text" : "qmetro 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 150.0, 210.0, 69.0, 22.0 ],
									"text" : "route None"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 290.0, 80.0, 35.0 ],
									"text" : "send $1, rawfloat $2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 320.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 210.0, 77.0, 22.0 ],
									"text" : "s #0-ModInB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 220.0, 260.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 290.0, 187.0, 22.0 ],
									"text" : "script send ModInBLed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 60.0, 210.0, 70.0, 35.0 ],
									"text" : "change -0.000001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 110.0, 100.0, 30.0, 22.0 ],
									"text" : "*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 70.0, 29.5, 22.0 ],
									"text" : "pak"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 70.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 110.0, 40.0, 30.0, 22.0 ],
									"text" : "> 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 240.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 290.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-119",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"order" : 1,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 2,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 770.0, 170.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 164.0, 214.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 80.0, 80.0, 35.0 ],
									"text" : "mc.resize~ 2 @replicate 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 150.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 50.0, 240.0, 50.0, 22.0 ],
					"text" : "p Dual~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 409.0, 289.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl-Effect-Modules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 250.0, 50.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 80.0, 100.0, 35.0 ],
									"text" : "setcheck 8226, clearchecks"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 150.0, 90.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 200.0, 66.0, 22.0 ],
									"text" : "s #0-Paste"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 170.0, 63.0, 22.0 ],
									"text" : "s #0-Copy"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 190.0, 110.0, 22.0, 22.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 150.0, 110.0, 32.0, 22.0 ],
									"text" : "t b 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 110.0, 110.0, 32.0, 22.0 ],
									"text" : "t b 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 170.0, 39.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 110.0, 80.0, 99.0, 22.0 ],
									"text" : "sel Copy Paste"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 60.0, 30.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-4", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ],
						"toolbaradditions" : [ "ABL Effect Modules" ]
					}
,
					"patching_rect" : [ 1040.0, 190.0, 40.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 469.0, 468.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl-Effect-Modules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 170.0, 200.0, 39.0, 22.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 240.0, 35.0, 22.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 240.0, 170.0, 69.0, 22.0 ],
									"text" : "route dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 130.0, 130.0, 33.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 130.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 130.0, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 400.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "bang", "int" ],
									"patching_rect" : [ 150.0, 60.0, 59.0, 22.0 ],
									"text" : "t 1 b 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 170.0, 59.0, 22.0 ],
									"text" : "gate 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 130.0, 64.0, 22.0 ],
									"text" : "r #0-Paste"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-66",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 30.0, 61.0, 22.0 ],
									"text" : "r #0-Copy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 331.0, 270.0, 77.0, 22.0 ],
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 300.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 340.0, 53.0, 22.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 400.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 160.0, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 200.0, 83.0, 22.0 ],
									"text" : "prepend store"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 290.0, 240.0, 142.000000000000057, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"precision" : 6
									}
,
									"text" : "coll Abl.DrumBuss"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 280.0, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"order" : 1,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 940.0, 359.0, 47.0, 22.0 ],
					"text" : "p Copy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 132.0, 175.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl-Effect-Modules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 120.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 80.0, 82.0, 22.0 ],
									"text" : "ignoreclick $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 30.0, 50.0, 33.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 20.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 210.0, 361.0, 18.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1080.0, 220.0, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Click to select a factory preset, and/or copy/paste the module state from one instance to another",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"id" : "obj-86",
					"items" : [ "(Presets)", ",", "Default", ",", "Boom in A", ",", "Boom in D", ",", "Compression Gate", ",", "Crisp Boom in C", ",", "Crisp Comp in G", ",", "Drum Pumper", ",", "Drum Sharpener", ",", "Drum Softener", ",", "Fat & Ruff in E", ",", "Full Boom in E", ",", "Instant Mayhem", ",", "Muffled Crunch in E", ",", "Punch Bass in G", ",", "Punch Boom in C", ",", "Punchy Driven", ",", "Squeeze & Drive in G", ",", "Transient Shaping Enhance", ",", "Transient Shift Decay", ",", "-", ",", "(State)", ",", "Copy", ",", "Paste" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1039.0, 163.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 6.0, 15.0, 20.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopuplabel" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 89.0, 165.0, 270.0, 331.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 210.0, 51.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 180.0, 152.0, 22.0 ],
									"text" : "help abl.device.drumbuss~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 120.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 150.0, 59.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"patching_rect" : [ 110.0, 120.0, 61.0, 22.0 ],
									"text" : "modifiers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 90.0, 90.0, 39.0, 22.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 85.0, 35.0 ],
									"text" : ";\rmax showclue"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-105",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 360.0, 420.0, 43.0, 22.0 ],
					"text" : "p Help"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Help: Click to open the Clue window. Opt/Alt-click to open the help for the dsp object around which this module is built.",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 8.0,
					"id" : "obj-37",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 390.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 7.0, 20.0, 18.0 ],
					"text" : "?",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"texton" : "?",
					"textoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"valuepopuplabel" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-91",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-89",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.0, 130.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 480.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-85",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 350.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 290.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-76",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 230.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-75",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 170.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-71",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 110.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ],
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 790.0, 340.0, 49.0, 22.0 ],
					"text" : "pvar 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "", "signal", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 545.0, 422.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 260.0, 90.0, 29.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 250.0, 80.0, 35.0 ],
									"text" : "setname $1, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 270.0, 130.0, 105.0, 22.0 ],
									"text" : "substitute None 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 310.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 210.0, 86.0, 22.0 ],
									"text" : "s #0-ModOutB"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 310.0, 210.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 250.0, 197.0, 22.0 ],
									"text" : "script send ModOutBLed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 130.0, 39.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 250.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 140.0, 280.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 90.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 250.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-141",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 340.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"order" : 1,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 820.0, 370.0, 79.0, 22.0 ],
					"text" : "p ModOut~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 661.0, 340.0, 49.0, 22.0 ],
					"text" : "pvar 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 750.0, 430.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "", "signal", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 100.0, 545.0, 422.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 260.0, 90.0, 29.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 250.0, 80.0, 35.0 ],
									"text" : "setname $1, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 270.0, 130.0, 105.0, 22.0 ],
									"text" : "substitute None 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 310.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 210.0, 86.0, 22.0 ],
									"text" : "s #0-ModOutA"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 310.0, 210.0, 33.0, 22.0 ],
									"text" : "<= 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 250.0, 197.0, 22.0 ],
									"text" : "script send ModOutALed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 130.0, 39.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 250.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 140.0, 280.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 90.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 250.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-141",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 340.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"order" : 1,
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 690.0, 370.0, 79.0, 22.0 ],
					"text" : "p ModOut~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Modulation output signal A [0. 1.] ",
					"id" : "obj-48",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 711.0, 461.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Modulation output signal B [0. 1.] ",
					"id" : "obj-165",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 840.0, 461.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"annotation" : "Applies a fixed compressor before the input distortion [0/1]",
					"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hint" : "Comp",
					"id" : "obj-23",
					"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
					"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 440.0, 270.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 58.0, 60.0, 10.0, 10.0 ],
					"rounded" : 64.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"inactivelcdcolor" : 						{
							"expression" : ""
						}
,
						"lcdcolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Off", "On" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Comp",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Comp",
							"parameter_type" : 2
						}

					}
,
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Comp"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Modulation input signal B [0. 1.] ",
					"id" : "obj-153",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 770.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Modulation input signal A [0. 1.] ",
					"id" : "obj-152",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 690.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Output of <name value> parameter messages, pattrstorage messages",
					"id" : "obj-26",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 940.0, 461.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Control parameters with a <name value> message, send messages to pattrstorage",
					"id" : "obj-4",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 940.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 940.0, 300.0, 190.0, 49.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.DrumBuss",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.2 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.0 ],
													"Trim" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Boom in A",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.503937007874015 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 55.000000092390984 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.0 ],
													"Trim" : [ -3.307086614173238 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Boom in D",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.79527559055118 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.196850393700787 ],
													"Damp" : [ 6090.427180854395374 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.196850393700787 ],
													"Freq" : [ 36.708096063329663 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.204724409448819 ],
													"Trim" : [ -4.960629921259865 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Compression Gate",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.45 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -4.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.45 ],
													"Trim" : [ -11.999999999999996 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "Crisp Boom in C",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.83 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.92 ],
													"Damp" : [ 15800.0 ],
													"Decay" : [ 0.65 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.83 ],
													"Freq" : [ 64.599999999999994 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.67 ],
													"Trim" : [ -29.800000000000001 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Crisp Comp in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.18 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 49.0 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 1.0 ],
													"Trim" : [ -10.6 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Drum Pumper",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.5 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 49.0 ],
													"Gain" : [ -5.078740157480311 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.75 ],
													"Trim" : [ -6.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Drum Sharpener",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -2.031496062992123 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.513779527559056 ],
													"Trim" : [ -3.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Drum Softener",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ 1.015748031496056 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.557086614173226 ],
													"Trim" : [ -9.062992125984247 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Fat & Ruff in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.63 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.7 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.38 ],
													"Trim" : [ -10.9 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "Full Boom in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 1.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.53 ],
													"Damp" : [ 8810.000000000001819 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.6 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ -2.370078740157481 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -17.5 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Instant Mayhem",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.66 ],
													"Damp" : [ 5359.999999999999091 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.66 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -5.078740157480311 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -6.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Muffled Crunch in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.52 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 1.0 ],
													"Damp" : [ 970.0 ],
													"Decay" : [ 0.88 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.56 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -9.369999999999999 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Punch Bass in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.78771653543307 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 0.919370078740157 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 48.999429584602495 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.615984251968504 ],
													"Trim" : [ -11.023543307086607 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Punch Boom in C",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.52 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.44 ],
													"Damp" : [ 6020.000000000000909 ],
													"Decay" : [ 0.85 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.59 ],
													"Freq" : [ 65.200000000000003 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.78 ],
													"Trim" : [ -30.5 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Punchy Driven",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.34 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.38 ],
													"Damp" : [ 9070.0 ],
													"Decay" : [ 0.11 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.41 ],
													"Freq" : [ 65.400000000000006 ],
													"Gain" : [ -2.92 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.71 ],
													"Trim" : [ -15.0 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Squeeze & Drive in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.83 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.44 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 0.14 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.76 ],
													"Freq" : [ 48.999429584602495 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.56 ],
													"Trim" : [ -20.600000000000001 ]
												}

											}
,
											"18" : 											{
												"id" : 18,
												"name" : "Transient Shaping Enhance",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.16 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.24 ],
													"Damp" : [ 13700.0 ],
													"Decay" : [ 0.29 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.5 ],
													"Freq" : [ 74.299999999999997 ],
													"Gain" : [ -3.66 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.21 ],
													"Trim" : [ -10.0 ]
												}

											}
,
											"19" : 											{
												"id" : 19,
												"name" : "Transient Shift Decay",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.19 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 8810.000000000001819 ],
													"Decay" : [ 0.93 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.095 ],
													"Freq" : [ 82.400000000000006 ],
													"Gain" : [ -4.78 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.7 ],
													"Trim" : [ 0.0 ]
												}

											}

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "Abl.DrumBuss",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Abl.DrumBuss",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 0, 100, 412, 440 ],
						"parameter_enable" : 1,
						"parameter_mappable" : 0,
						"paraminitmode" : 1,
						"storage_rect" : [ 0, 100, 1123, 486 ]
					}
,
					"text" : "pattrstorage Abl.DrumBuss @autorestore 0 @changemode 1 @outputmode 2 @savemode 0",
					"varname" : "Abl.DrumBuss"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 177.0, 302.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 190.0, 67.0, 22.0 ],
									"text" : "append init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 80.0, 80.0, 102.0 ],
									"text" : "live.dial, live.text, live.toggle, live.menu, live.slider, live.numbox, live.tab"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 230.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 210.0, 420.0, 50.0, 22.0 ],
					"text" : "p Reset"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Resets all settings to default values",
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 8.0,
					"id" : "obj-14",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 210.0, 390.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 7.0, 20.0, 18.0 ],
					"text" : "R",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"texton" : "R",
					"textoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"valuepopuplabel" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 15.0, 134.0, 27.0 ],
					"text" : "Abl.DrumBuss"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 830.0, 20.0, 207.0, 20.0 ],
					"text" : "A stereo analog-style drum processor"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"annotation" : "Sets the type of distortion applied to the input signal. 0 = Soft (waveshaping distortion), 1 = Medium (limiting distortion), 2 = Hard (clipping distortion with bass boost)",
					"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
					"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
					"hint" : "Dist",
					"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
					"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
					"id" : "obj-116",
					"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
					"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 350.0, 280.0, 50.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.0, 58.0, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"hltcolor" : 						{
							"expression" : ""
						}
,
						"hlttextcolor" : 						{
							"expression" : ""
						}
,
						"inactivelcdcolor" : 						{
							"expression" : ""
						}
,
						"lcdbgcolor" : 						{
							"expression" : ""
						}
,
						"lcdcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Soft", "Medium", "Hard" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Dist",
							"parameter_mmax" : 2,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Dist",
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Dist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 300.0, 19.0, 22.0 ],
					"text" : "t l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 89.0, 178.0, 229.0, 349.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 240.0, 60.0, 22.0 ],
									"text" : "mc.pass~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 200.0, 60.0, 22.0 ],
									"text" : "mc.pack~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 50.0, 150.0, 126.0, 22.0 ],
									"text" : "abl.device.drumbuss~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 50.0, 100.0, 144.0, 22.0 ],
									"text" : "mc.unpack~ @replicate 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-107",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-108",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-110",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 290.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 80.0, 300.0, 59.0, 22.0 ],
					"text" : "p Effect~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 372.0, 413.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 250.0, 160.0, 66.0, 22.0 ],
									"text" : "route mute"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 190.0, 62.0, 22.0 ],
									"text" : "s #0-Mute"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "", "" ],
									"patching_rect" : [ 150.0, 110.0, 99.0, 22.0 ],
									"text" : "adsr~ 10 0. 1. 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 110.0, 68.0, 22.0 ],
									"text" : "s #0-Active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 280.0, 57.0, 22.0 ],
									"text" : "active $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 350.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 350.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 110.0, 280.0, 79.0, 22.0 ],
									"text" : "mc.unpack~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 80.0, 110.0, 36.0, 22.0 ],
									"text" : "!-~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 220.0, 42.0, 22.0 ],
									"text" : "mc.+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 120.0, 160.0, 49.0, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 160.0, 49.0, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-102",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-103",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 120.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-104",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-105",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 350.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 2,
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 1 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"order" : 1,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "Abl.EffectModules",
								"default" : 								{
									"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
									"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
									"bgfillcolor" : 									{
										"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
										"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
										"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
										"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
										"type" : "color"
									}
,
									"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
									"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
									"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
									"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 50.0, 370.0, 79.0, 22.0 ],
					"text" : "p Active~"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Sets the drive amount applied to the input signal [0. 1.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-81",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 50.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 33.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0.2 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Drive",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Drive",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Drive"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"annotation" : "Enables or disables the module [0/1]",
					"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hint" : "Active",
					"id" : "obj-99",
					"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
					"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 110.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 10.0, 11.0, 11.0 ],
					"rounded" : 64.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"inactivelcdcolor" : 						{
							"expression" : ""
						}
,
						"lcdcolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Off", "On" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Active",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Active",
							"parameter_type" : 2
						}

					}
,
					"valuepopup" : 1,
					"valuepopuplabel" : 1,
					"varname" : "Active"
				}

			}
, 			{
				"box" : 				{
					"comment" : "MC stereo audio input",
					"id" : "obj-56",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 190.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "MC stereo audio output",
					"id" : "obj-25",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 461.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 110.0, 411.0, 50.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.0, 17.0, 30.0, 1.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : ""
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "live.meter~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 1,
					"outlettype" : [ "float", "int" ],
					"patching_rect" : [ 80.0, 430.0, 50.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.0, 14.0, 30.0, 1.0 ],
					"saved_attribute_attributes" : 					{
						"bgcolor" : 						{
							"expression" : ""
						}

					}
,
					"slidercolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Sets the gain of the input signal in dB [-70. 0.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-6",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 110.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.0, 33.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Trim",
							"parameter_mmax" : 0.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Trim",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Trim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 470.0, 67.0, 22.0 ],
					"text" : "universal 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.0, 57.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 122.0, 57.0, 12.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 200.0, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 7.0, 51.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : ""
						}

					}
,
					"text" : "DrumBuss",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"annotation" : "Sets the amount of gain applied to the processed signal in dB [-40. 3.]",
					"appearance" : 1,
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
					"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontname" : "Ableton Sans Light",
					"id" : "obj-124",
					"maxclass" : "live.dial",
					"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 540.0, 50.0, 30.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.0, 73.0, 30.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : ""
						}
,
						"activefgdialcolor" : 						{
							"expression" : ""
						}
,
						"activeneedlecolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"dialcolor" : 						{
							"expression" : ""
						}
,
						"fgdialcolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"needlecolor" : 						{
							"expression" : ""
						}
,
						"panelcolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Gain",
							"parameter_mmax" : 3.0,
							"parameter_mmin" : -40.0,
							"parameter_modmode" : 2,
							"parameter_shortname" : "Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 2,
					"varname" : "Gain"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Modulation output signal B [0. 1.]. Click to select which parameter controls this outlet. ",
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation output signal B [0. 1.]. Click to select which parameter controls this outlet. ",
					"id" : "obj-167",
					"items" : [ "(Mod", "Out", "B)", ",", "None", ",", "Drive", ",", "Trim", ",", "Crunch", ",", "Damp", ",", "Trans", ",", "Boom", ",", "Freq", ",", "Decay", ",", "Gain", ",", "Mix" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 850.0, 331.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out B)", "None", "Drive", "Trim", "Crunch", "Damp", "Trans", "Boom", "Freq", "Decay", "Gain", "Mix" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutB",
							"parameter_mmax" : 11,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModOutB",
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 1,
					"varname" : "ModOutB"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Modulation output signal A [0. 1.]. Click to select which parameter controls this outlet. ",
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation output signal A [0. 1.]. Click to select which parameter controls this outlet. ",
					"id" : "obj-52",
					"items" : [ "(Mod", "Out", "A)", ",", "None", ",", "Drive", ",", "Trim", ",", "Crunch", ",", "Damp", ",", "Trans", ",", "Boom", ",", "Freq", ",", "Decay", ",", "Gain", ",", "Mix" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 720.0, 331.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out A)", "None", "Drive", "Trim", "Crunch", "Damp", "Trans", "Boom", "Freq", "Decay", "Gain", "Mix" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutA",
							"parameter_mmax" : 11,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModOutA",
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 1,
					"varname" : "ModOutA"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Modulation input signal B [0. 1.]. Click to select which parameter to control from this inlet.",
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation input signal B [0. 1.]. Click to select which parameter to control from this inlet.",
					"id" : "obj-50",
					"items" : [ "(Mod", "In", "B)", ",", "None", ",", "Drive", ",", "Trim", ",", "Crunch", ",", "Damp", ",", "Trans", ",", "Boom", ",", "Freq", ",", "Decay", ",", "Gain", ",", "Mix" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 790.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In B)", "None", "Drive", "Trim", "Crunch", "Damp", "Trans", "Boom", "Freq", "Decay", "Gain", "Mix" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInB",
							"parameter_mmax" : 11,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModInB",
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 1,
					"varname" : "ModInB"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Modulation input signal A [0. 1.]. Click to select which parameter to control from this inlet.",
					"background" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation input signal A [0. 1.]. Click to select which parameter to control from this inlet.",
					"id" : "obj-49",
					"items" : [ "(Mod", "In", "A)", ",", "None", ",", "Drive", ",", "Trim", ",", "Crunch", ",", "Damp", ",", "Trans", ",", "Boom", ",", "Freq", ",", "Decay", ",", "Gain", ",", "Mix" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 711.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In A)", "None", "Drive", "Trim", "Crunch", "Damp", "Trans", "Boom", "Freq", "Decay", "Gain", "Mix" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInA",
							"parameter_mmax" : 11,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModInA",
							"parameter_type" : 2
						}

					}
,
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"valuepopup" : 1,
					"valuepopuplabel" : 1,
					"varname" : "ModInA"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"activebgoncolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.257038688706909, 0.257038620357998, 0.25703863821866, 1.0 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hidden" : 1,
					"id" : "obj-59",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1010.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.5, 117.0, 8.0, 8.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_invisible" : 2,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutALed",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "ModOutALed",
							"parameter_type" : 2
						}

					}
,
					"varname" : "ModOutALed"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"activebgoncolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.257038688706909, 0.257038620357998, 0.25703863821866, 1.0 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hidden" : 1,
					"id" : "obj-60",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1020.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.5, 117.0, 8.0, 8.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_invisible" : 2,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutBLed",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "ModOutBLed",
							"parameter_type" : 2
						}

					}
,
					"varname" : "ModOutBLed"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"activebgoncolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.257038688706909, 0.257038620357998, 0.25703863821866, 1.0 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hidden" : 1,
					"id" : "obj-47",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1000.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.5, -1.0, 8.0, 8.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_invisible" : 2,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInBLed",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "ModInBLed",
							"parameter_type" : 2
						}

					}
,
					"varname" : "ModInBLed"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"activebgoncolor" : [ 0.854902, 1.0, 0.513725, 1.0 ],
					"background" : 1,
					"bgcolor" : [ 0.257038688706909, 0.257038620357998, 0.25703863821866, 1.0 ],
					"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"hidden" : 1,
					"id" : "obj-45",
					"maxclass" : "live.button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 990.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.5, -1.0, 8.0, 8.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "Arm", "Trigger" ],
							"parameter_invisible" : 2,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInALed",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "ModInALed",
							"parameter_type" : 2
						}

					}
,
					"varname" : "ModInALed"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-30",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 0.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-33",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 57.0, 0.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-34",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.0, 0.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-35",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 470.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 157.0, 0.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-21",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 480.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 119.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-17",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 480.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 57.0, 119.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-16",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 480.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.0, 119.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-32",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 480.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 157.0, 119.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"id" : "obj-24",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 470.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 25.0, 159.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"id" : "obj-46",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 470.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 6.0, 160.0, 112.0 ],
					"proportion" : 0.39,
					"varname" : "Frame"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"id" : "obj-31",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.0, 470.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 2.0, 168.0, 120.0 ],
					"proportion" : 0.39,
					"rounded" : 12
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-106", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 3,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 2,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 0,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 2 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-42", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-42", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 2 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-63", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-74", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-74", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 1 ],
					"source" : [ "obj-78", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-83", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 2 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-98", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 2 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-116" : [ "Dist", "Dist", 0 ],
			"obj-118" : [ "Solo", "Solo", 0 ],
			"obj-122" : [ "Mix", "Mix", 0 ],
			"obj-123" : [ "Boom", "Boom", 0 ],
			"obj-124" : [ "Gain", "Gain", 0 ],
			"obj-125" : [ "Decay", "Decay", 0 ],
			"obj-126" : [ "Freq", "Freq", 0 ],
			"obj-154" : [ "Abl.DrumBuss", "Abl.DrumBuss", 0 ],
			"obj-167" : [ "ModOutB", "ModOutB", -1 ],
			"obj-23" : [ "Comp", "Comp", 0 ],
			"obj-45" : [ "ModInALed", "ModInALed", 0 ],
			"obj-47" : [ "ModInBLed", "ModInBLed", 0 ],
			"obj-49" : [ "ModInA", "ModInA", -1 ],
			"obj-50" : [ "ModInB", "ModInB", -1 ],
			"obj-52" : [ "ModOutA", "ModOutA", -1 ],
			"obj-59" : [ "ModOutALed", "ModOutALed", 0 ],
			"obj-6" : [ "Trim", "Trim", 0 ],
			"obj-60" : [ "ModOutBLed", "ModOutBLed", 0 ],
			"obj-8" : [ "Crunch", "Crunch", 0 ],
			"obj-81" : [ "Drive", "Drive", 0 ],
			"obj-82" : [ "Trans", "Trans", 0 ],
			"obj-9" : [ "Damp", "Damp", 0 ],
			"obj-99" : [ "Active", "Active", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Abl.Delay_20250731.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Abl.DrumBuss.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Abl.FxColors.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/ABL Effect Modules/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 1,
		"snapshot" : 		{
			"filetype" : "C74Snapshot",
			"version" : 2,
			"minorversion" : 0,
			"name" : "snapshotlist",
			"origin" : "jpatcher",
			"type" : "list",
			"subtype" : "Undefined",
			"embed" : 1,
			"snapshot" : 			{
				"valuedictionary" : 				{
					"parameter_values" : 					{
						"ModInA" : 1.0,
						"ModInB" : 1.0,
						"ModOutA" : 1.0,
						"ModOutB" : 1.0,
						"Active" : 1.0,
						"Boom" : 0.0,
						"Comp" : 0.0,
						"Crunch" : 0.0,
						"Damp" : 13524.976007655444846,
						"Decay" : 1.0,
						"Dist" : 0.0,
						"Drive" : 0.2,
						"Freq" : 50.0,
						"Gain" : 0.0,
						"Mix" : 1.0,
						"Solo" : 0.0,
						"Trans" : 0.0,
						"Trim" : 0.0,
						"blob" : 						{
							"Abl.DrumBuss" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.DrumBuss",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.2 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.0 ],
													"Trim" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Boom in A",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.503937007874015 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 55.000000092390984 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.0 ],
													"Trim" : [ -3.307086614173238 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Boom in D",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.79527559055118 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.196850393700787 ],
													"Damp" : [ 6090.427180854395374 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.196850393700787 ],
													"Freq" : [ 36.708096063329663 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.204724409448819 ],
													"Trim" : [ -4.960629921259865 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Compression Gate",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.45 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -4.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.45 ],
													"Trim" : [ -11.999999999999996 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "Crisp Boom in C",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.83 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.92 ],
													"Damp" : [ 15800.0 ],
													"Decay" : [ 0.65 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.83 ],
													"Freq" : [ 64.599999999999994 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.67 ],
													"Trim" : [ -29.800000000000001 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Crisp Comp in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.18 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 49.0 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 1.0 ],
													"Trim" : [ -10.6 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Drum Pumper",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.5 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 49.0 ],
													"Gain" : [ -5.078740157480311 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.75 ],
													"Trim" : [ -6.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Drum Sharpener",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -2.031496062992123 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.513779527559056 ],
													"Trim" : [ -3.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Drum Softener",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ 1.015748031496056 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.557086614173226 ],
													"Trim" : [ -9.062992125984247 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Fat & Ruff in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.63 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.7 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.38 ],
													"Trim" : [ -10.9 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "Full Boom in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 1.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.53 ],
													"Damp" : [ 8810.000000000001819 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.6 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ -2.370078740157481 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -17.5 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Instant Mayhem",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.0 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.66 ],
													"Damp" : [ 5359.999999999999091 ],
													"Decay" : [ 1.0 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.66 ],
													"Freq" : [ 50.0 ],
													"Gain" : [ -5.078740157480311 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -6.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Muffled Crunch in E",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.52 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 1.0 ],
													"Damp" : [ 970.0 ],
													"Decay" : [ 0.88 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.56 ],
													"Freq" : [ 41.203444692936962 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.49 ],
													"Trim" : [ -9.369999999999999 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Punch Bass in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.78771653543307 ],
													"Comp" : [ 0.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 20000.0 ],
													"Decay" : [ 0.919370078740157 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.0 ],
													"Freq" : [ 48.999429584602495 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.615984251968504 ],
													"Trim" : [ -11.023543307086607 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Punch Boom in C",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.52 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.44 ],
													"Damp" : [ 6020.000000000000909 ],
													"Decay" : [ 0.85 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.59 ],
													"Freq" : [ 65.200000000000003 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.78 ],
													"Trim" : [ -30.5 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Punchy Driven",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.34 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.38 ],
													"Damp" : [ 9070.0 ],
													"Decay" : [ 0.11 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.41 ],
													"Freq" : [ 65.400000000000006 ],
													"Gain" : [ -2.92 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ -0.71 ],
													"Trim" : [ -15.0 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Squeeze & Drive in G",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.83 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.44 ],
													"Damp" : [ 9200.0 ],
													"Decay" : [ 0.14 ],
													"Dist" : [ 2.0 ],
													"Drive" : [ 0.76 ],
													"Freq" : [ 48.999429584602495 ],
													"Gain" : [ 0.0 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.56 ],
													"Trim" : [ -20.600000000000001 ]
												}

											}
,
											"18" : 											{
												"id" : 18,
												"name" : "Transient Shaping Enhance",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.16 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.24 ],
													"Damp" : [ 13700.0 ],
													"Decay" : [ 0.29 ],
													"Dist" : [ 0.0 ],
													"Drive" : [ 0.5 ],
													"Freq" : [ 74.299999999999997 ],
													"Gain" : [ -3.66 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.21 ],
													"Trim" : [ -10.0 ]
												}

											}
,
											"19" : 											{
												"id" : 19,
												"name" : "Transient Shift Decay",
												"data" : 												{
													"Active" : [ 1.0 ],
													"Boom" : [ 0.19 ],
													"Comp" : [ 1.0 ],
													"Crunch" : [ 0.0 ],
													"Damp" : [ 8810.000000000001819 ],
													"Decay" : [ 0.93 ],
													"Dist" : [ 1.0 ],
													"Drive" : [ 0.095 ],
													"Freq" : [ 82.400000000000006 ],
													"Gain" : [ -4.78 ],
													"Mix" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"Solo" : [ 0.0 ],
													"Trans" : [ 0.7 ],
													"Trim" : [ 0.0 ]
												}

											}

										}

									}

								}
 ]
						}

					}

				}

			}
,
			"snapshotlist" : 			{
				"current_snapshot" : 0,
				"entries" : [ 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "Abl.DrumBuss",
						"origin" : "Abl.DrumBuss~",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"ModInA" : 1.0,
									"ModInB" : 1.0,
									"ModOutA" : 1.0,
									"ModOutB" : 1.0,
									"Active" : 1.0,
									"Boom" : 0.0,
									"Comp" : 0.0,
									"Crunch" : 0.0,
									"Damp" : 13524.976007655444846,
									"Decay" : 1.0,
									"Dist" : 0.0,
									"Drive" : 0.2,
									"Freq" : 50.0,
									"Gain" : 0.0,
									"Mix" : 1.0,
									"Solo" : 0.0,
									"Trans" : 0.0,
									"Trim" : 0.0,
									"blob" : 									{
										"Abl.DrumBuss" : [ 											{
												"pattrstorage" : 												{
													"name" : "Abl.DrumBuss",
													"slots" : 													{
														"1" : 														{
															"id" : 1,
															"name" : "Default",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 9200.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.2 ],
																"Freq" : [ 50.0 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.0 ],
																"Trim" : [ 0.0 ]
															}

														}
,
														"2" : 														{
															"id" : 2,
															"name" : "Boom in A",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.503937007874015 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 55.000000092390984 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.0 ],
																"Trim" : [ -3.307086614173238 ]
															}

														}
,
														"3" : 														{
															"id" : 3,
															"name" : "Boom in D",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.79527559055118 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.196850393700787 ],
																"Damp" : [ 6090.427180854395374 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.196850393700787 ],
																"Freq" : [ 36.708096063329663 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ -0.204724409448819 ],
																"Trim" : [ -4.960629921259865 ]
															}

														}
,
														"4" : 														{
															"id" : 4,
															"name" : "Compression Gate",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.45 ],
																"Freq" : [ 50.0 ],
																"Gain" : [ -4.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ -0.45 ],
																"Trim" : [ -11.999999999999996 ]
															}

														}
,
														"5" : 														{
															"id" : 5,
															"name" : "Crisp Boom in C",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.83 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.92 ],
																"Damp" : [ 15800.0 ],
																"Decay" : [ 0.65 ],
																"Dist" : [ 1.0 ],
																"Drive" : [ 0.83 ],
																"Freq" : [ 64.599999999999994 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ -0.67 ],
																"Trim" : [ -29.800000000000001 ]
															}

														}
,
														"6" : 														{
															"id" : 6,
															"name" : "Crisp Comp in G",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.18 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 1.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 49.0 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 1.0 ],
																"Trim" : [ -10.6 ]
															}

														}
,
														"7" : 														{
															"id" : 7,
															"name" : "Drum Pumper",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.5 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 49.0 ],
																"Gain" : [ -5.078740157480311 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.75 ],
																"Trim" : [ -6.0 ]
															}

														}
,
														"8" : 														{
															"id" : 8,
															"name" : "Drum Sharpener",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 50.0 ],
																"Gain" : [ -2.031496062992123 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.513779527559056 ],
																"Trim" : [ -3.0 ]
															}

														}
,
														"9" : 														{
															"id" : 9,
															"name" : "Drum Softener",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 50.0 ],
																"Gain" : [ 1.015748031496056 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ -0.557086614173226 ],
																"Trim" : [ -9.062992125984247 ]
															}

														}
,
														"10" : 														{
															"id" : 10,
															"name" : "Fat & Ruff in E",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.63 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 9200.0 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.7 ],
																"Freq" : [ 41.203444692936962 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.38 ],
																"Trim" : [ -10.9 ]
															}

														}
,
														"11" : 														{
															"id" : 11,
															"name" : "Full Boom in E",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 1.0 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.53 ],
																"Damp" : [ 8810.000000000001819 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.6 ],
																"Freq" : [ 41.203444692936962 ],
																"Gain" : [ -2.370078740157481 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.49 ],
																"Trim" : [ -17.5 ]
															}

														}
,
														"12" : 														{
															"id" : 12,
															"name" : "Instant Mayhem",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.0 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.66 ],
																"Damp" : [ 5359.999999999999091 ],
																"Decay" : [ 1.0 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.66 ],
																"Freq" : [ 50.0 ],
																"Gain" : [ -5.078740157480311 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.49 ],
																"Trim" : [ -6.0 ]
															}

														}
,
														"13" : 														{
															"id" : 13,
															"name" : "Muffled Crunch in E",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.52 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 1.0 ],
																"Damp" : [ 970.0 ],
																"Decay" : [ 0.88 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.56 ],
																"Freq" : [ 41.203444692936962 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.49 ],
																"Trim" : [ -9.369999999999999 ]
															}

														}
,
														"14" : 														{
															"id" : 14,
															"name" : "Punch Bass in G",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.78771653543307 ],
																"Comp" : [ 0.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 20000.0 ],
																"Decay" : [ 0.919370078740157 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.0 ],
																"Freq" : [ 48.999429584602495 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.615984251968504 ],
																"Trim" : [ -11.023543307086607 ]
															}

														}
,
														"15" : 														{
															"id" : 15,
															"name" : "Punch Boom in C",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.52 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.44 ],
																"Damp" : [ 6020.000000000000909 ],
																"Decay" : [ 0.85 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.59 ],
																"Freq" : [ 65.200000000000003 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.78 ],
																"Trim" : [ -30.5 ]
															}

														}
,
														"16" : 														{
															"id" : 16,
															"name" : "Punchy Driven",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.34 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.38 ],
																"Damp" : [ 9070.0 ],
																"Decay" : [ 0.11 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.41 ],
																"Freq" : [ 65.400000000000006 ],
																"Gain" : [ -2.92 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ -0.71 ],
																"Trim" : [ -15.0 ]
															}

														}
,
														"17" : 														{
															"id" : 17,
															"name" : "Squeeze & Drive in G",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.83 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.44 ],
																"Damp" : [ 9200.0 ],
																"Decay" : [ 0.14 ],
																"Dist" : [ 2.0 ],
																"Drive" : [ 0.76 ],
																"Freq" : [ 48.999429584602495 ],
																"Gain" : [ 0.0 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.56 ],
																"Trim" : [ -20.600000000000001 ]
															}

														}
,
														"18" : 														{
															"id" : 18,
															"name" : "Transient Shaping Enhance",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.16 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.24 ],
																"Damp" : [ 13700.0 ],
																"Decay" : [ 0.29 ],
																"Dist" : [ 0.0 ],
																"Drive" : [ 0.5 ],
																"Freq" : [ 74.299999999999997 ],
																"Gain" : [ -3.66 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.21 ],
																"Trim" : [ -10.0 ]
															}

														}
,
														"19" : 														{
															"id" : 19,
															"name" : "Transient Shift Decay",
															"data" : 															{
																"Active" : [ 1.0 ],
																"Boom" : [ 0.19 ],
																"Comp" : [ 1.0 ],
																"Crunch" : [ 0.0 ],
																"Damp" : [ 8810.000000000001819 ],
																"Decay" : [ 0.93 ],
																"Dist" : [ 1.0 ],
																"Drive" : [ 0.095 ],
																"Freq" : [ 82.400000000000006 ],
																"Gain" : [ -4.78 ],
																"Mix" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"Solo" : [ 0.0 ],
																"Trans" : [ 0.7 ],
																"Trim" : [ 0.0 ]
															}

														}

													}

												}

											}
 ]
									}

								}

							}

						}
,
						"fileref" : 						{
							"name" : "Abl.DrumBuss",
							"filename" : "Abl.DrumBuss.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "daba33757079485bc02073875d6d87d3"
						}

					}
, 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "Abl.Delay",
						"origin" : "Abl.DrumBuss~",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"fileref" : 						{
							"name" : "Abl.Delay",
							"filename" : "Abl.Delay_20250731.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "2510db015593945b684948da11d69567"
						}

					}
 ]
			}

		}
,
		"styles" : [ 			{
				"name" : "Abl.EffectModules",
				"default" : 				{
					"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
					"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
					"bgfillcolor" : 					{
						"color" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
						"color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
						"color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
						"dynamiccolor" : [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
						"type" : "color"
					}
,
					"color" : [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
					"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
					"elementcolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
					"patchlinecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"selectioncolor" : [ 1.0, 0.694117647058824, 0.0, 1.0 ],
					"stripecolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"toolbaradditions" : [ "ABL Effect Modules" ],
		"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ]
	}

}
