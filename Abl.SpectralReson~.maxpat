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
		"description" : "Spectral processor which uses spectral resonances and pitched overtones to add tonal character to any audio source",
		"digest" : "Ableton-based stereo spectral resonator module",
		"tags" : "Ableton stereo spectral resonator module",
		"subpatcher_template" : "Abl.EffectModules",
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"integercoordinates" : 1,
		"title" : "Abl.SpectralReson~",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 270.0, 42.0, 22.0 ],
					"text" : "mute~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 240.0, 60.0, 22.0 ],
					"text" : "r #0-Mute"
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
					"patching_rect" : [ 850.0, 360.0, 93.0, 35.0 ],
					"restore" : 					{
						"Active" : [ 1.0 ],
						"ModInA" : [ "None" ],
						"ModInB" : [ "None" ],
						"ModOutA" : [ "None" ],
						"ModOutB" : [ "None" ],
						"View" : [ 0 ]
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
					"patching_rect" : [ 970.0, 420.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 970.0, 390.0, 45.0, 22.0 ],
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
					"patching_rect" : [ 970.0, 360.0, 58.0, 22.0 ],
					"saved_object_attributes" : 					{
						"mode" : 0
					}
,
					"text" : "hover"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 850.0, 210.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-54",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 850.0, 150.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 7.0, 17.0, 17.0 ],
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
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 760.0, 150.0, 79.0, 22.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
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
					"patching_rect" : [ 790.0, 180.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 280.0, 340.0, 66.0, 22.0 ],
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
					"patching_rect" : [ 280.0, 370.0, 77.0, 22.0 ],
					"text" : "Abl.FxColors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 106.0, 72.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 7.0, 72.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : ""
						}

					}
,
					"text" : "Spectral Reson",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 230.0, 73.0, 22.0 ],
					"text" : "pattrforward"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
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
					"patching_rect" : [ 50.0, 190.0, 50.0, 22.0 ],
					"text" : "p Dual~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
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
									"patching_rect" : [ 333.0, 271.0, 77.0, 22.0 ],
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
									"patching_rect" : [ 332.0, 301.0, 72.0, 22.0 ],
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
									"patching_rect" : [ 290.0, 240.0, 148.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"precision" : 6
									}
,
									"text" : "coll Abl.SpectralReson"
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
					"patching_rect" : [ 790.0, 320.0, 47.0, 22.0 ],
					"text" : "p Copy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
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
					"patching_rect" : [ 890.0, 150.0, 40.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
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
					"patching_rect" : [ 220.0, 310.0, 18.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 940.0, 150.0, 89.0, 22.0 ],
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
					"id" : "obj-7",
					"items" : [ "(Presets)", ",", "Default", ",", "B0", ",", "A0", ",", "G0", ",", "E0", ",", "Shift+", ",", "Shift-", ",", "Stretch+", ",", "Stretch-", ",", "Harmonic1", ",", "UltraLow", ",", "Detune", ",", "Short", ",", "Long", ",", "Chorus", ",", "Wobbling", ",", "Bouncing", ",", "Drops", ",", "HighBells", ",", "LowBells", ",", "FallingBirds", ",", "FallingSpaceBirds", ",", "SlidingBells", ",", "-", ",", "(State)", ",", "Copy", ",", "Paste" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 890.0, 120.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.0, 6.0, 15.0, 20.0 ],
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
						"rect" : [ 89.0, 165.0, 304.0, 331.0 ],
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
									"patching_rect" : [ 90.0, 180.0, 192.0, 22.0 ],
									"text" : "help abl.device.spectralresonator~"
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
					"patching_rect" : [ 370.0, 370.0, 43.0, 22.0 ],
					"text" : "p Help"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Help: Click to open the Clue window, in which information will be displayed when the cursor passes over a parameter. Opt/Alt-click to open the help for the dsp object around which this module is built.",
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
					"patching_rect" : [ 370.0, 340.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.0, 7.0, 20.0, 18.0 ],
					"text" : "?",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"texton" : "?",
					"textoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
					"valuepopuplabel" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
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
						"rect" : [ 34.0, 100.0, 862.0, 434.0 ],
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
									"id" : "obj-19",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 290.0, 189.0, 49.0 ],
									"text" : ";\r#0-A script send B setname none;\r#0-B script send B setname none"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 290.0, 108.0, 22.0 ],
									"text" : "script send B bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 500.0, 260.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 500.0, 170.0, 139.0, 22.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 360.0, 49.0, 22.0 ],
									"text" : "forward"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 140.0, 108.0, 22.0 ],
									"text" : "sprintf send #0-%s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 500.0, 110.0, 69.0, 22.0 ],
									"text" : "unjoin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 80.0, 147.0, 22.0 ],
									"text" : "fromsymbol @separator ::"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 500.0, 200.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 230.0, 183.0, 22.0 ],
									"text" : "sprintf script send B setname %s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 220.0, 90.0, 29.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 230.0, 130.0, 105.0, 22.0 ],
									"text" : "substitute None 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 270.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 210.0, 86.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 210.0, 33.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 250.0, 197.0, 22.0 ],
									"text" : "script send ModOutBLed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 40.0, 48.0, 22.0 ],
									"text" : "r #0-B2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 130.0, 39.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 250.0, 39.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 280.0, 34.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 90.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 340.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 170.0, 250.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-141",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 340.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-13", 1 ]
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
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
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
									"destination" : [ "obj-27", 0 ],
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
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-24", 0 ]
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
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
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
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-30", 0 ]
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
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
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
					"patching_rect" : [ 670.0, 320.0, 79.0, 22.0 ],
					"text" : "p ModOut~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 640.0, 370.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
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
					"patching_rect" : [ 580.0, 410.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 670.0, 410.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
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
						"rect" : [ 34.0, 100.0, 862.0, 434.0 ],
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
									"id" : "obj-19",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 290.0, 187.0, 49.0 ],
									"text" : ";\r#0-A script send A setname none;\r#0-B script send A setname none"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 290.0, 107.0, 22.0 ],
									"text" : "script send A bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 500.0, 260.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 500.0, 170.0, 139.0, 22.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 360.0, 49.0, 22.0 ],
									"text" : "forward"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 140.0, 108.0, 22.0 ],
									"text" : "sprintf send #0-%s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 500.0, 110.0, 69.0, 22.0 ],
									"text" : "unjoin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 80.0, 147.0, 22.0 ],
									"text" : "fromsymbol @separator ::"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 500.0, 200.0, 44.0, 22.0 ],
									"text" : "list.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 230.0, 182.0, 22.0 ],
									"text" : "sprintf script send A setname %s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 220.0, 90.0, 29.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 230.0, 130.0, 105.0, 22.0 ],
									"text" : "substitute None 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 270.0, 170.0, 29.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 210.0, 86.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 210.0, 33.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 250.0, 197.0, 22.0 ],
									"text" : "script send ModOutALed hidden $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 40.0, 48.0, 22.0 ],
									"text" : "r #0-A2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 130.0, 39.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 250.0, 39.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 280.0, 34.0, 22.0 ],
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
									"patching_rect" : [ 80.0, 90.0, 66.0, 22.0 ],
									"text" : "r #0-Active"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-149",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 340.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 170.0, 250.0, 80.0, 35.0 ],
									"text" : "clearchecks, checkitem $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 170.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-141",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 340.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-13", 1 ]
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
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-148", 0 ]
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
									"destination" : [ "obj-27", 0 ],
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
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-24", 0 ]
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
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
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
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-30", 0 ]
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
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
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
					"patching_rect" : [ 580.0, 320.0, 79.0, 22.0 ],
					"text" : "p ModOut~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
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
						"rect" : [ 59.0, 104.0, 202.0, 445.0 ],
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
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 40.0, 30.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 60.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 340.0, 67.0, 22.0 ],
									"text" : "alias $1 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"linecount" : 17,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 90.0, 110.0, 236.0 ],
									"text" : "A::Pitch Pitch, A::Shift Shift, A::Stretch Stretch, A::Harms Harms, A::Unison Unison, A::Gain Gain, A::Mix Mix, A::Voices Voices, B::Decay Decay, B::Ldamp Ldamp, B::Hdamp Hdamp, B::ModRate ModRate, B::PitchMod PitchMod, B::ModType ModType"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-127",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 380.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
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
					"patching_rect" : [ 960.0, 190.0, 57.0, 22.0 ],
					"text" : "p Aliases"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 240.0, 19.0, 22.0 ],
					"text" : "t l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 430.0, 370.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 80.0, 33.0, 22.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#0-" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-90",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
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
						"rect" : [ 370.0, 127.0, 393.0, 410.0 ],
						"openinpresentation" : 1,
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
									"id" : "obj-21",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 300.0, 200.0, 10.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 38.0, 64.0, 12.0, 9.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 200.0, 10.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.0, 64.0, 12.0, 9.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 40.0, 230.0, 47.0, 22.0 ],
									"text" : "* 0.001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 150.0, 71.0, 35.0 ],
									"text" : "active $1, outputvalue"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the mode that determines how harmonics are modulated. None (0) applies no modulation. Chorus (1) applies triangle wave modulation at different frequencies for every partial. Wander (2) ramps to random levels at random intervals. Granular (3) randomly triggers exponential envelopes.",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "Modulation type",
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
									"patching_rect" : [ 240.0, 200.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 57.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"hltcolor" : 										{
											"expression" : ""
										}
,
										"hlttextcolor" : 										{
											"expression" : ""
										}
,
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdbgcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "None", "Chorus", "Wandering", "Granular" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "ModType",
											"parameter_mmax" : 3,
											"parameter_modmode" : 0,
											"parameter_shortname" : "ModType",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "ModType"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 230.0, 72.0, 22.0 ],
									"text" : "hf_damp $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of damping of high frequencies [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 0.0, 31.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0.5 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Hdamp",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Hdamp",
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
									"varname" : "Hdamp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 110.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 110.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 40.0, 41.0, 22.0 ],
									"text" : "r #1B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 230.0, 70.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 160.0, 70.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 160.0, 40.0, 142.0, 22.0 ],
									"restore" : 									{
										"Decay" : [ 4999.999999999999091 ],
										"Hdamp" : [ 0.5 ],
										"Ldamp" : [ 0.0 ],
										"ModRate" : [ 0.5 ],
										"ModType" : [ 0.0 ],
										"PitchMod" : [ 0.0 ]
									}
,
									"text" : "autopattr @autorestore 0",
									"varname" : "u448001640"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 230.0, 81.0, 22.0 ],
									"text" : "pitch_mod $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 200.0, 76.0, 22.0 ],
									"text" : "mod_rate $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 260.0, 78.0, 22.0 ],
									"text" : "mod_type $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 200.0, 68.0, 22.0 ],
									"text" : "lf_damp $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 260.0, 57.0, 22.0 ],
									"text" : "decay $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 90.0, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the pitch modulation amount in semitones [0. 4.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-54",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 200.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 72.0, 40.0, 40.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_exponent" : 1.74,
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "PitchMod",
											"parameter_mmax" : 4.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "PitchMod",
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
									"varname" : "PitchMod"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the modulation rate [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 160.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 18.0, 40.0, 40.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_exponent" : 1.74,
											"parameter_initial" : [ 0.5 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "ModRate",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "ModRate",
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
									"varname" : "ModRate"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of damping of low frequencies [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-8",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 80.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 0.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Ldamp",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Ldamp",
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
									"varname" : "Ldamp"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the decay length in milliseconds [1. 20000.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 0.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_exponent" : 3.4,
											"parameter_initial" : [ 5000 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Decay",
											"parameter_mmax" : 20000.0,
											"parameter_mmin" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Decay",
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 1,
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"order" : 1,
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
 ],
						"toolbaradditions" : [ "ABL Effect Modules" ],
						"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ]
					}
,
					"patching_rect" : [ 290.0, 110.0, 130.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 33.0, 125.0, 80.0 ],
					"varname" : "B",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 140.0, 80.0, 33.0, 22.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#0-" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-83",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
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
						"rect" : [ 370.0, 127.0, 402.0, 404.0 ],
						"openinpresentation" : 1,
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
									"fontname" : "Ableton Sans Light",
									"id" : "obj-20",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 147.0, 29.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -2.0, -3.0, 29.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Pitch",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 230.0, 32.0, 22.0 ],
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 200.0, 81.0, 22.0 ],
									"text" : "harmonics $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 230.0, 61.0, 22.0 ],
									"text" : "stretch $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"id" : "obj-23",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 113.0, 147.0, 39.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 55.0, -3.0, 39.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Stretch",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the number of harmonics in the spectrum. A higher number results in more CPU use [1 256].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-19",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 160.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 93.0, 0.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 256 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Harms",
											"parameter_mmax" : 256.0,
											"parameter_mmin" : 1.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Harms",
											"parameter_type" : 1,
											"parameter_unitstyle" : 0
										}

									}
,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Harms"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Stretch (positive values) or compress (negative values) the spacing of the harmonics [-1. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-18",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 162.0, 25.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.0, 13.0, 25.0, 23.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Stretch",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Stretch",
											"parameter_type" : 0,
											"parameter_unitstyle" : 1
										}

									}
,
									"showname" : 0,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Stretch"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the number of voices processed. The more voices, the deeper the unison effect [1 8].",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "Voices",
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
									"patching_rect" : [ 300.0, 230.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 21.0, 64.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"hltcolor" : 										{
											"expression" : ""
										}
,
										"hlttextcolor" : 										{
											"expression" : ""
										}
,
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdbgcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
											"parameter_initial" : [ 1.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Voices",
											"parameter_mmax" : 7,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Voices",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 110.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 110.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 40.0, 41.0, 22.0 ],
									"text" : "r #1A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 230.0, 70.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 160.0, 70.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 160.0, 40.0, 142.0, 22.0 ],
									"restore" : 									{
										"Gain" : [ 0.0 ],
										"Harms" : [ 256.0 ],
										"Mix" : [ 0.5 ],
										"Pitch" : [ 38.0 ],
										"Shift" : [ 0.0 ],
										"Stretch" : [ 0.0 ],
										"Unison" : [ 0.25 ],
										"Voices" : [ 1.0 ]
									}
,
									"text" : "autopattr @autorestore 0",
									"varname" : "u448001640"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 340.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 260.0, 48.0, 22.0 ],
									"text" : "gain $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 230.0, 61.0, 22.0 ],
									"text" : "unison $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 260.0, 59.0, 22.0 ],
									"text" : "voices $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 200.0, 44.0, 22.0 ],
									"text" : "mix $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 200.0, 47.0, 22.0 ],
									"text" : "shift $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 260.0, 78.0, 22.0 ],
									"text" : "frequency $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 90.0, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of gain applied to the processed signal in dB [-24. 24.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-54",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 240.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 40.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Gain",
											"parameter_mmax" : 24.0,
											"parameter_mmin" : -24.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Gain",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Gain"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the intensity of the unison effect [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 200.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 40.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0.25 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Unison",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Unison",
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
									"varname" : "Unison"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the dry/wet mix of the output signal [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-9",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 280.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 40.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0.5 ],
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
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Shifts the input spectrum up or down in semitones [-48. 48.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-8",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 80.0, 150.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 31.0, 0.0, 30.0, 36.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Shift",
											"parameter_mmax" : 48.0,
											"parameter_mmin" : -48.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Shift",
											"parameter_type" : 0,
											"parameter_unitstyle" : 7
										}

									}
,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"triangle" : 1,
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Shift"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the fundamental frequency of the resonator in MIDI note values [16. 127.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"fontsize" : 8.0,
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 162.0, 30.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 13.0, 33.0, 22.0 ],
									"saved_attribute_attributes" : 									{
										"activedialcolor" : 										{
											"expression" : ""
										}
,
										"activefgdialcolor" : 										{
											"expression" : ""
										}
,
										"activeneedlecolor" : 										{
											"expression" : ""
										}
,
										"bordercolor" : 										{
											"expression" : ""
										}
,
										"dialcolor" : 										{
											"expression" : ""
										}
,
										"fgdialcolor" : 										{
											"expression" : ""
										}
,
										"focusbordercolor" : 										{
											"expression" : ""
										}
,
										"needlecolor" : 										{
											"expression" : ""
										}
,
										"panelcolor" : 										{
											"expression" : ""
										}
,
										"textcolor" : 										{
											"expression" : ""
										}
,
										"tricolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_initial" : [ 38 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Pitch",
											"parameter_mmin" : 16.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pitch",
											"parameter_type" : 0,
											"parameter_unitstyle" : 8
										}

									}
,
									"showname" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Pitch"
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
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-116", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-3", 1 ]
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
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
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
 ],
						"toolbaradditions" : [ "ABL Effect Modules" ],
						"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ]
					}
,
					"patching_rect" : [ 140.0, 110.0, 130.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 33.0, 125.0, 80.0 ],
					"varname" : "A",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
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
						"rect" : [ 423.0, 107.0, 400.0, 329.0 ],
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
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 140.0, 80.0, 35.0 ],
									"text" : "A hidden $1, B hidden $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 190.0, 90.0, 35.0 ],
									"text" : "prepend script sendbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 90.0, 30.0, 22.0 ],
									"text" : "1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 90.0, 30.0, 22.0 ],
									"text" : "0 1"
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
									"patching_rect" : [ 60.0, 240.0, 30.0, 30.0 ],
									"varname" : "Line[7]"
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
									"patching_rect" : [ 280.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 150.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 150.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 170.0, 80.0, 44.0, 22.0 ],
									"text" : "sel 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 280.0, 80.0, 29.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 150.0, 55.0, 22.0 ],
									"text" : "hidden 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 240.0, 30.0, 30.0 ],
									"varname" : "Line[5]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 240.0, 30.0, 30.0 ],
									"varname" : "Line[2]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 240.0, 30.0, 30.0 ],
									"varname" : "Line[1]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 240.0, 30.0, 30.0 ],
									"varname" : "Line[6]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 3,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 2,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 0,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
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
					"patching_rect" : [ 430.0, 310.0, 99.0, 22.0 ],
					"text" : "p Display"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-38",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 5.0, 46.0 ],
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
					"id" : "obj-23",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 71.0, 5.0, 46.0 ],
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
					"id" : "obj-22",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 71.0, 24.0, 10.0 ],
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
					"annotation" : "Select view",
					"colorselectedtext" : 1,
					"fontname" : "Ableton Sans Light ",
					"fontsize" : 8.0,
					"htabcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 430.0, 260.0, 30.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 25.0, 21.0, 93.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "A", "B" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "View",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "View",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 9.0,
					"tabcolor" : [ 0.9, 0.9, 0.9, 0.5 ],
					"tabs" : [ "A", "B" ],
					"valuepopuplabel" : 2,
					"varname" : "View"
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
					"patching_rect" : [ 660.0, 100.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 580.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
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
					"patching_rect" : [ 580.0, 170.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 680.0, 230.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
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
					"patching_rect" : [ 790.0, 410.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 790.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"alias" : 					{
						"B::Ldamp" : "Ldamp",
						"A::Unison" : "Unison",
						"B::Decay" : "Decay",
						"B::PitchMod" : "PitchMod",
						"A::Stretch" : "Stretch",
						"A::Mix" : "Mix",
						"B::ModRate" : "ModRate",
						"A::Voices" : "Voices",
						"B::Hdamp" : "Hdamp",
						"A::Harms" : "Harms",
						"A::Pitch" : "Pitch",
						"A::Shift" : "Shift",
						"B::ModType" : "ModType",
						"A::Gain" : "Gain"
					}
,
					"id" : "obj-154",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 790.0, 260.0, 190.0, 49.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.SpectralReson",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "B0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 35.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "A0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 33.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "G0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 31.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "E0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 28.000000000000004 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Shift+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 2.999999999999989 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Shift-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ -4.000000000000002 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Stretch+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.15748031496063 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Stretch-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ -0.2 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Harmonic1",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 1.0 ],
													"A::Mix" : [ 0.669291338582678 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ -24.000000000000007 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "UltraLow",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 12.283464566929149 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 26.000000000000004 ],
													"A::Shift" : [ -24.000000000000014 ],
													"A::Stretch" : [ -1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.051143207314879 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Detune",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.503937007874017 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Short",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 1.0 ],
													"B::Hdamp" : [ 1.0 ],
													"B::Ldamp" : [ 1.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Long",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.118110236220473 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Chorus",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.059128537968638 ],
													"B::ModType" : [ 1.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Wobbling",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 2.0 ],
													"B::PitchMod" : [ 0.60768235983687 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Bouncing",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.018951472453231 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"18" : 											{
												"id" : 18,
												"name" : "Drops",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 1.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.009994555683719 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.000873859308679 ]
												}

											}
,
											"19" : 											{
												"id" : 19,
												"name" : "HighBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.346456692913387 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.008142506293332 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"20" : 											{
												"id" : 20,
												"name" : "LowBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.346456692913387 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.008142506293332 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"21" : 											{
												"id" : 21,
												"name" : "FallingBirds",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.338582677165354 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"22" : 											{
												"id" : 22,
												"name" : "FallingSpaceBirds",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"23" : 											{
												"id" : 23,
												"name" : "SlidingBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 1.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "Abl.SpectralReson",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Abl.SpectralReson",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 0, 100, 412, 440 ],
						"parameter_enable" : 1,
						"parameter_mappable" : 0,
						"paraminitmode" : 1,
						"storage_rect" : [ 0, 100, 592, 464 ]
					}
,
					"text" : "pattrstorage Abl.SpectralReson @autorestore 0 @changemode 1 @outputmode 2 @savemode 0",
					"varname" : "Abl.SpectralReson"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
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
					"patching_rect" : [ 660.0, 170.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
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
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 230.0, 35.0, 22.0 ],
									"text" : "tab 0"
								}

							}
, 							{
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
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
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
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 1,
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
					"patching_rect" : [ 220.0, 370.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 220.0, 340.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.0, 7.0, 20.0, 18.0 ],
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
					"patching_rect" : [ 50.0, 25.0, 179.0, 27.0 ],
					"text" : "Abl.SpectralReson~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 30.0, 640.0, 20.0 ],
					"text" : "A spectral processor which uses spectral resonances and pitched overtones to add tonal character to any audio source"
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
						"rect" : [ 122.0, 190.0, 239.0, 370.0 ],
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
									"patching_rect" : [ 40.0, 240.0, 60.0, 22.0 ],
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
									"patching_rect" : [ 40.0, 200.0, 60.0, 22.0 ],
									"text" : "mc.pack~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 40.0, 150.0, 166.0, 22.0 ],
									"text" : "abl.device.spectralresonator~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 40.0, 90.0, 80.0, 35.0 ],
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
									"patching_rect" : [ 40.0, 30.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 80.0, 30.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 40.0, 290.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 80.0, 240.0, 56.0, 22.0 ],
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
						"rect" : [ 59.0, 104.0, 390.0, 425.0 ],
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
					"patching_rect" : [ 50.0, 320.0, 79.0, 22.0 ],
					"text" : "p Active~"
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
					"patching_rect" : [ 110.0, 290.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 50.0, 134.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 50.0, 410.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 110.0, 360.0, 50.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.0, 17.0, 30.0, 1.0 ],
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
					"patching_rect" : [ 80.0, 380.0, 50.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.0, 14.0, 30.0, 1.0 ],
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
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 420.0, 67.0, 22.0 ],
					"text" : "universal 1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-39",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 5.0, 61.0 ],
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
					"items" : [ "(Mod", "Out", "B)", ",", "None", ",", "A::Pitch", ",", "A::Shift", ",", "A::Stretch", ",", "A::Harms", ",", "A::Unison", ",", "A::Gain", ",", "A::Mix", ",", "B::Decay", ",", "B::Ldamp", ",", "B::Hdamp", ",", "B::ModRate", ",", "B::PitchMod" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 670.0, 280.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out B)", "None", "A::Pitch", "A::Shift", "A::Stretch", "A::Harms", "A::Unison", "A::Gain", "A::Mix", "B::Decay", "B::Ldamp", "B::Hdamp", "B::ModRate", "B::PitchMod" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutB",
							"parameter_mmax" : 13,
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
					"items" : [ "(Mod", "Out", "A)", ",", "None", ",", "A::Pitch", ",", "A::Shift", ",", "A::Stretch", ",", "A::Harms", ",", "A::Unison", ",", "A::Gain", ",", "A::Mix", ",", "B::Decay", ",", "B::Ldamp", ",", "B::Hdamp", ",", "B::ModRate", ",", "B::PitchMod" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 580.0, 280.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out A)", "None", "A::Pitch", "A::Shift", "A::Stretch", "A::Harms", "A::Unison", "A::Gain", "A::Mix", "B::Decay", "B::Ldamp", "B::Hdamp", "B::ModRate", "B::PitchMod" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutA",
							"parameter_mmax" : 13,
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
					"items" : [ "(Mod", "In", "B)", ",", "None", ",", "A::Pitch", ",", "A::Shift", ",", "A::Stretch", ",", "A::Harms", ",", "A::Unison", ",", "A::Gain", ",", "A::Mix", ",", "B::Decay", ",", "B::Ldamp", ",", "B::Hdamp", ",", "B::ModRate", ",", "B::PitchMod" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 680.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In B)", "None", "A::Pitch", "A::Shift", "A::Stretch", "A::Harms", "A::Unison", "A::Gain", "A::Mix", "B::Decay", "B::Ldamp", "B::Hdamp", "B::ModRate", "B::PitchMod" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInB",
							"parameter_mmax" : 13,
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
					"items" : [ "(Mod", "In", "A)", ",", "None", ",", "A::Pitch", ",", "A::Shift", ",", "A::Stretch", ",", "A::Harms", ",", "A::Unison", ",", "A::Gain", ",", "A::Mix", ",", "B::Decay", ",", "B::Ldamp", ",", "B::Hdamp", ",", "B::ModRate", ",", "B::PitchMod" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 600.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In A)", "None", "A::Pitch", "A::Shift", "A::Stretch", "A::Harms", "A::Unison", "A::Gain", "A::Mix", "B::Decay", "B::Ldamp", "B::Hdamp", "B::ModRate", "B::PitchMod" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInA",
							"parameter_mmax" : 13,
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
					"patching_rect" : [ 870.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 880.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 860.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 850.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 410.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 420.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 440.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 410.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 420.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 440.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 390.0, 420.0, 10.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 25.0, 158.0, 5.0 ],
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
					"patching_rect" : [ 360.0, 420.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 330.0, 420.0, 20.0, 20.0 ],
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
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
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
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-13", 0 ]
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
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-151", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-151", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-19", 1 ]
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
					"destination" : [ "obj-19", 0 ],
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
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 2 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 2 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-66", 0 ]
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
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-77", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-77", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-77", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
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
					"destination" : [ "obj-106", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-98", 0 ]
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
			"obj-13" : [ "View", "View", 0 ],
			"obj-154" : [ "Abl.SpectralReson", "Abl.SpectralReson", 0 ],
			"obj-167" : [ "ModOutB", "ModOutB", -1 ],
			"obj-45" : [ "ModInALed", "ModInALed", 0 ],
			"obj-47" : [ "ModInBLed", "ModInBLed", 0 ],
			"obj-49" : [ "ModInA", "ModInA", -1 ],
			"obj-50" : [ "ModInB", "ModInB", -1 ],
			"obj-52" : [ "ModOutA", "ModOutA", -1 ],
			"obj-59" : [ "ModOutALed", "ModOutALed", 0 ],
			"obj-60" : [ "ModOutBLed", "ModOutBLed", 0 ],
			"obj-83::obj-116" : [ "Voices", "Voices", 0 ],
			"obj-83::obj-18" : [ "Stretch", "Stretch", 0 ],
			"obj-83::obj-19" : [ "Harms", "Harms", 0 ],
			"obj-83::obj-54" : [ "Gain", "Gain", 0 ],
			"obj-83::obj-55" : [ "Unison", "Unison", 0 ],
			"obj-83::obj-6" : [ "Pitch", "Pitch", 0 ],
			"obj-83::obj-8" : [ "Shift", "Shift", 0 ],
			"obj-83::obj-9" : [ "Mix", "Mix", 0 ],
			"obj-90::obj-116" : [ "ModType", "ModType", 0 ],
			"obj-90::obj-19" : [ "Hdamp", "Hdamp", 0 ],
			"obj-90::obj-54" : [ "PitchMod", "PitchMod", 0 ],
			"obj-90::obj-55" : [ "ModRate", "ModRate", 0 ],
			"obj-90::obj-6" : [ "Decay", "Decay", 0 ],
			"obj-90::obj-8" : [ "Ldamp", "Ldamp", 0 ],
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
				"name" : "Abl.FxColors.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/ABL Effect Modules/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Abl.Phaser.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
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
						"Decay" : 13302.868492497997067,
						"Gain" : 0.0,
						"Harms" : 256.0,
						"Hdamp" : 0.5,
						"Ldamp" : 0.0,
						"Mix" : 0.5,
						"ModRate" : 0.671419971653026,
						"ModType" : 0.0,
						"Pitch" : 38.0,
						"PitchMod" : 0.0,
						"Shift" : 0.0,
						"Stretch" : 0.0,
						"Unison" : 0.25,
						"View" : 0.0,
						"Voices" : 1.0,
						"blob" : 						{
							"Abl.SpectralReson" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.SpectralReson",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "B0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 35.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "A0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 33.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "G0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 31.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "E0",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 28.000000000000004 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Shift+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 2.999999999999989 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Shift-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ -4.000000000000002 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Stretch+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.15748031496063 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Stretch-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ -0.2 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Harmonic1",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 1.0 ],
													"A::Mix" : [ 0.669291338582678 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ -24.000000000000007 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "UltraLow",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 12.283464566929149 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 26.000000000000004 ],
													"A::Shift" : [ -24.000000000000014 ],
													"A::Stretch" : [ -1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.051143207314879 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Detune",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.503937007874017 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Short",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 1.0 ],
													"B::Hdamp" : [ 1.0 ],
													"B::Ldamp" : [ 1.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Long",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.118110236220473 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 0.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Chorus",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.059128537968638 ],
													"B::ModType" : [ 1.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Wobbling",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.5 ],
													"B::ModType" : [ 2.0 ],
													"B::PitchMod" : [ 0.60768235983687 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Bouncing",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 0.0 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 0.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 4999.999999999999091 ],
													"B::Hdamp" : [ 0.5 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.018951472453231 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"18" : 											{
												"id" : 18,
												"name" : "Drops",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 1.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.009994555683719 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.000873859308679 ]
												}

											}
,
											"19" : 											{
												"id" : 19,
												"name" : "HighBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.346456692913387 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.008142506293332 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"20" : 											{
												"id" : 20,
												"name" : "LowBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 7.937007874015734 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.346456692913387 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.008142506293332 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 0.0 ]
												}

											}
,
											"21" : 											{
												"id" : 21,
												"name" : "FallingBirds",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.338582677165354 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"22" : 											{
												"id" : 22,
												"name" : "FallingSpaceBirds",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 48.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 3.0 ],
													"B::PitchMod" : [ 4.0 ]
												}

											}
,
											"23" : 											{
												"id" : 23,
												"name" : "SlidingBells",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Gain" : [ 4.157480314960623 ],
													"A::Harms" : [ 256.0 ],
													"A::Mix" : [ 0.5 ],
													"A::Pitch" : [ 38.0 ],
													"A::Shift" : [ 0.0 ],
													"A::Stretch" : [ 1.0 ],
													"A::Unison" : [ 0.25 ],
													"A::Voices" : [ 1.0 ],
													"B::Decay" : [ 20000.0 ],
													"B::Hdamp" : [ 0.0 ],
													"B::Ldamp" : [ 0.0 ],
													"B::ModRate" : [ 0.000729749351958 ],
													"B::ModType" : [ 1.0 ],
													"B::PitchMod" : [ 4.0 ]
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
						"name" : "Abl.Phaser",
						"origin" : "Abl.SpectralReson~",
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
									"Decay" : 13302.868492497997067,
									"Gain" : 0.0,
									"Harms" : 256.0,
									"Hdamp" : 0.5,
									"Ldamp" : 0.0,
									"Mix" : 0.5,
									"ModRate" : 0.671419971653026,
									"ModType" : 0.0,
									"Pitch" : 38.0,
									"PitchMod" : 0.0,
									"Shift" : 0.0,
									"Stretch" : 0.0,
									"Unison" : 0.25,
									"View" : 0.0,
									"Voices" : 1.0,
									"blob" : 									{
										"Abl.SpectralReson" : [ 											{
												"pattrstorage" : 												{
													"name" : "Abl.SpectralReson",
													"slots" : 													{
														"1" : 														{
															"id" : 1,
															"name" : "Default",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"2" : 														{
															"id" : 2,
															"name" : "B0",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 35.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"3" : 														{
															"id" : 3,
															"name" : "A0",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 33.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"4" : 														{
															"id" : 4,
															"name" : "G0",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 31.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"5" : 														{
															"id" : 5,
															"name" : "E0",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 28.000000000000004 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"6" : 														{
															"id" : 6,
															"name" : "Shift+",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 2.999999999999989 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"7" : 														{
															"id" : 7,
															"name" : "Shift-",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ -4.000000000000002 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"8" : 														{
															"id" : 8,
															"name" : "Stretch+",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.15748031496063 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"9" : 														{
															"id" : 9,
															"name" : "Stretch-",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ -0.2 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"10" : 														{
															"id" : 10,
															"name" : "Harmonic1",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 1.0 ],
																"A::Mix" : [ 0.669291338582678 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ -24.000000000000007 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"11" : 														{
															"id" : 11,
															"name" : "UltraLow",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 12.283464566929149 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 26.000000000000004 ],
																"A::Shift" : [ -24.000000000000014 ],
																"A::Stretch" : [ -1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.051143207314879 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"12" : 														{
															"id" : 12,
															"name" : "Detune",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.503937007874017 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"13" : 														{
															"id" : 13,
															"name" : "Short",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 1.0 ],
																"B::Hdamp" : [ 1.0 ],
																"B::Ldamp" : [ 1.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"14" : 														{
															"id" : 14,
															"name" : "Long",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.118110236220473 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 0.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"15" : 														{
															"id" : 15,
															"name" : "Chorus",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.059128537968638 ],
																"B::ModType" : [ 1.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"16" : 														{
															"id" : 16,
															"name" : "Wobbling",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.5 ],
																"B::ModType" : [ 2.0 ],
																"B::PitchMod" : [ 0.60768235983687 ]
															}

														}
,
														"17" : 														{
															"id" : 17,
															"name" : "Bouncing",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 0.0 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 0.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 4999.999999999999091 ],
																"B::Hdamp" : [ 0.5 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.018951472453231 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 4.0 ]
															}

														}
,
														"18" : 														{
															"id" : 18,
															"name" : "Drops",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 7.937007874015734 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 48.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 1.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.009994555683719 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 0.000873859308679 ]
															}

														}
,
														"19" : 														{
															"id" : 19,
															"name" : "HighBells",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 7.937007874015734 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 48.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.346456692913387 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.008142506293332 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"20" : 														{
															"id" : 20,
															"name" : "LowBells",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 7.937007874015734 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.346456692913387 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.008142506293332 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 0.0 ]
															}

														}
,
														"21" : 														{
															"id" : 21,
															"name" : "FallingBirds",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 4.157480314960623 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 48.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.338582677165354 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.000729749351958 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 4.0 ]
															}

														}
,
														"22" : 														{
															"id" : 22,
															"name" : "FallingSpaceBirds",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Gain" : [ 4.157480314960623 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 48.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.000729749351958 ],
																"B::ModType" : [ 3.0 ],
																"B::PitchMod" : [ 4.0 ]
															}

														}
,
														"23" : 														{
															"id" : 23,
															"name" : "SlidingBells",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Gain" : [ 4.157480314960623 ],
																"A::Harms" : [ 256.0 ],
																"A::Mix" : [ 0.5 ],
																"A::Pitch" : [ 38.0 ],
																"A::Shift" : [ 0.0 ],
																"A::Stretch" : [ 1.0 ],
																"A::Unison" : [ 0.25 ],
																"A::Voices" : [ 1.0 ],
																"B::Decay" : [ 20000.0 ],
																"B::Hdamp" : [ 0.0 ],
																"B::Ldamp" : [ 0.0 ],
																"B::ModRate" : [ 0.000729749351958 ],
																"B::ModType" : [ 1.0 ],
																"B::PitchMod" : [ 4.0 ]
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
							"name" : "Abl.Phaser",
							"filename" : "Abl.Phaser.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "60d01099d10b8049e3cbf6b9727628b5"
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
