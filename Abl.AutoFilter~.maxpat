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
		"description" : "Classic stereo analog filter emulation",
		"digest" : "Ableton-based stereo autofilter module",
		"tags" : "Ableton stereo autofilter module modulation",
		"subpatcher_template" : "Abl.EffectModules",
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"visualizepatchpoints" : 0,
		"integercoordinates" : 1,
		"title" : "Abl.AutoFilter~",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 270.0, 42.0, 22.0 ],
					"text" : "mute~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 240.0, 60.0, 22.0 ],
					"text" : "r #0-Mute"
				}

			}
, 			{
				"box" : 				{
					"attack" : 0.0,
					"bgcolor" : [ 0.125, 0.125, 0.125, 0.0 ],
					"cellheight" : 5,
					"cellwidth" : 5,
					"color" : [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
					"columns" : 1,
					"contrast" : 0.9,
					"dividersize" : 5,
					"hotcolor" : [ 0.0, 0.980392156862745, 0.63921568627451, 1.0 ],
					"id" : "obj-82",
					"interval" : 5.0,
					"maxclass" : "gridmeter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 130.0, 270.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 92.0, 58.0, 15.0, 15.0 ],
					"release" : 0.0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"comment" : "MC stereo audio sidechain",
					"id" : "obj-40",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 110.0, 120.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 110.0, 190.0, 50.0, 22.0 ],
					"text" : "p Dual~"
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
					"patching_rect" : [ 940.0, 360.0, 93.0, 35.0 ],
					"restore" : 					{
						"Active" : [ 1.0 ],
						"ModInA" : [ "None" ],
						"ModInB" : [ "None" ],
						"ModOutA" : [ "None" ],
						"ModOutB" : [ "None" ],
						"View" : [ 2 ]
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
					"patching_rect" : [ 1060.0, 420.0, 67.0, 22.0 ],
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 1060.0, 390.0, 45.0, 22.0 ],
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
					"patching_rect" : [ 1060.0, 360.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 940.0, 220.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 940.0, 160.0, 24.0, 24.0 ],
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
					"patching_rect" : [ 850.0, 160.0, 79.0, 22.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 880.0, 190.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 300.0, 340.0, 66.0, 22.0 ],
					"text" : "r #0-Active"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 370.0, 77.0, 22.0 ],
					"text" : "Abl.FxColors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 91.0, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 7.0, 51.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : ""
						}

					}
,
					"text" : "AutoFilter",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 650.0, 220.0, 73.0, 22.0 ],
					"text" : "pattrforward"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 750.0, 220.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 650.0, 170.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 730.0, 170.0, 59.0, 22.0 ],
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
						"visualizepatchpoints" : 0,
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
					"id" : "obj-9",
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
						"visualizepatchpoints" : 0,
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
									"text" : "coll Abl.AutoFilter"
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
					"patching_rect" : [ 880.0, 320.0, 47.0, 22.0 ],
					"text" : "p Copy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 990.0, 160.0, 40.0, 22.0 ],
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 240.0, 310.0, 18.0, 22.0 ],
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1040.0, 160.0, 89.0, 22.0 ],
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
					"items" : [ "(Presets)", ",", "Default", ",", "Envelope+", ",", "Envelope-", ",", "Drive", ",", "High-pass", ",", "Morph", ",", "Ctrl", ",", "Resamp", ",", "Notch+LP", ",", "Pitch&Form", ",", "LFO", ",", "Stereo", ",", "Square", ",", "Vibe", ",", "Spinning", ",", "Sidechain", ",", "Sidechain+LFO", ",", "-", ",", "(State)", ",", "Copy", ",", "Paste" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 990.0, 130.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 6.0, 15.0, 20.0 ],
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
						"rect" : [ 89.0, 165.0, 289.0, 331.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
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
									"patching_rect" : [ 90.0, 180.0, 145.0, 22.0 ],
									"text" : "help abl.device.autofilter~"
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
					"patching_rect" : [ 390.0, 370.0, 43.0, 22.0 ],
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
					"patching_rect" : [ 390.0, 340.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 142.0, 7.0, 20.0, 18.0 ],
					"text" : "?",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"texton" : "?",
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
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-19",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 290.0, 189.0, 62.0 ],
									"text" : ";\r#0-A script send B setname none;\r#0-B script send B setname none;\r#0-C script send B setname none"
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
					"patching_rect" : [ 740.0, 320.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 710.0, 370.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 650.0, 410.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 740.0, 410.0, 30.0, 30.0 ]
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
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-19",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 620.0, 290.0, 188.0, 62.0 ],
									"text" : ";\r#0-A script send A setname none;\r#0-B script send A setname none;\r#0-C script send A setname none"
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
					"patching_rect" : [ 650.0, 320.0, 79.0, 22.0 ],
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
						"rect" : [ 616.0, 100.0, 318.0, 530.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
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
									"patching_rect" : [ 40.0, 410.0, 67.0, 22.0 ],
									"text" : "alias $1 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"linecount" : 22,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 90.0, 204.0, 303.0 ],
									"text" : "A::BassFreq BassFreq, A::Time Time, A::Mix Mix, A::Mode Mode, A::PhaserBlend PhaserBlend, A::PhaserCenter PhaserCenter, A::PhaserNotches PhaserNotches, A::PhaserSpread PhaserSpread, A::Warmth Warmth, B::LFO2 LFO2, B::LFODuty LFODuty, B::LFO2Freq LFO2Freq, B::LFOFeedback LFOFeedback, B::LFOFreq LFOFreq, B::LFOInvert LFOInvert, B::LFOMod LFOMod, B::LFOPhaseMode LFOPhaseMode, B::LFOPhase LFOPhase, B::LFOSpin LFOSpin, B::LFOStereo LFOStereo, B::LFOWaveDisplay LFOWaveDisplay, B::LFOWaveform LFOWaveform, C::EnvAmount EnvAmount, C::EnvAttack EnvAttack, C::EnvOnOff EnvOnOff, C::EnvRelease EnvRelease"
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
									"patching_rect" : [ 40.0, 460.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 1050.0, 200.0, 57.0, 22.0 ],
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
					"patching_rect" : [ 330.0, 240.0, 19.0, 22.0 ],
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
					"patching_rect" : [ 470.0, 370.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 80.0, 33.0, 22.0 ],
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
					"id" : "obj-92",
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
						"rect" : [ 34.0, 100.0, 478.0, 447.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 160.0, 67.0, 22.0 ],
									"text" : "scmode $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-3",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 120.0, 53.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 74.0, -2.0, 50.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Sidechain",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-11",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 210.0, 29.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 61.0, 29.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Type",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-10",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.0, 140.0, 22.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 49.0, 22.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "EQ",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-9",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 190.0, 32.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 25.0, 32.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Mono",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-8",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 190.0, 28.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 88.0, 12.0, 28.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Solo",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 245.0, 253.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 40.0, 90.0, 33.0, 22.0 ],
													"text" : "== 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 120.0, 80.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 190.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-282",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.0, 120.0, 80.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-297",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-298",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 130.0, 190.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-298", 0 ],
													"source" : [ "obj-282", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-282", 0 ],
													"order" : 0,
													"source" : [ "obj-297", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-297", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 40.0, 160.0, 30.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 177.0, 247.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-282",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 80.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-297",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-298",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 170.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-298", 0 ],
													"source" : [ "obj-282", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-282", 0 ],
													"source" : [ "obj-297", 0 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 330.0, 140.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-332",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 250.0, 73.0, 22.0 ],
									"text" : "sceqtype $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Selects the filter type used for the sidechain EQ [0 5]",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-330",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 330.0, 230.0, 50.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 75.0, 61.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Low Shelf", "Bell", "High Shelf", "Low-pass", "Band-pass", "High-pass" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCType",
											"parameter_mmax" : 5,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Type",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "SCType"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-328",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 310.0, 93.0, 22.0 ],
									"text" : "scresonance $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the resonance of the sidechain EQ filter [0.1 12.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-329",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 300.0, 190.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 43.0, 40.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 3.0,
											"parameter_initial" : [ 0.7 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCRes",
											"parameter_mmax" : 12.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Res",
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
									"varname" : "SCRes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-326",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 250.0, 51.0, 22.0 ],
									"text" : "sceq $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "When enabled, the internal envelope will only react to the range of frequencies specified by the set filter type and sidechain EQ controls [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-327",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 250.0, 140.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 78.0, 51.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCEQ",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "EQ",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "SCEQ"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-324",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 280.0, 90.0, 22.0 ],
									"text" : "scfrequency $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the frequency (in Hz) of sidechain input EQ filtering [30. 15000.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-325",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 270.0, 190.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.0, 40.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 3.33,
											"parameter_initial" : [ 200 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCFreq",
											"parameter_mmax" : 15000.0,
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
									"varname" : "SCFreq"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-322",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 280.0, 60.0, 22.0 ],
									"text" : "scgain $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-320",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 280.0, 65.0, 22.0 ],
									"text" : "sclisten $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Bypasses the module's output so that only the sidechain input is audible. This is useful for fine-tuning the sidechain settings [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-318",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 180.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 78.0, 15.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCSolo",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Solo",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "SCSolo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-317",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 250.0, 99.0, 22.0 ],
									"text" : "internalscgain $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-313",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 250.0, 67.0, 22.0 ],
									"text" : "scmono $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Converts the sidechain signal to mono so that the envelope follower modulation is identical across the left and right channels [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-311",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 150.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 78.0, 28.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCMono",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Mono",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "SCMono"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Switches the side-chain signal between internal and external signals [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-310",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 120.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 29.0, 20.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "SCExternal",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "External",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "SCExternal"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Adjusts the level (in dB) of the internal sidechain signal - i.e. the processed signal itself. This makes it possible, for example, to modulate the filtering of the input signal by its own envelope, when the Env parameter is engaged [-70. 24.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-309",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 200.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "SCIntern",
											"parameter_mmax" : 24.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Intern",
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
									"varname" : "SCIntern"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Adjusts the level (in dB) of the external sidechain signal [-15. 15.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-323",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 80.0, 200.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 43.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "SCExtern",
											"parameter_mmax" : 15.0,
											"parameter_mmin" : -15.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Extern",
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
									"varname" : "SCExtern"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 70.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 70.0, 50.0, 22.0 ],
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
									"patching_rect" : [ 90.0, 20.0, 42.0, 22.0 ],
									"text" : "r #1C"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 230.0, 20.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 160.0, 20.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 300.0, 20.0, 142.0, 22.0 ],
									"restore" : 									{
										"SCEQ" : [ 0.0 ],
										"SCExtern" : [ 0.0 ],
										"SCExternal" : [ 0.0 ],
										"SCFreq" : [ 200.000000000000028 ],
										"SCIntern" : [ 0.0 ],
										"SCMono" : [ 0.0 ],
										"SCRes" : [ 0.7 ],
										"SCSolo" : [ 0.0 ],
										"SCType" : [ 0.0 ]
									}
,
									"text" : "autopattr @autorestore 0",
									"varname" : "u954000600"
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
									"patching_rect" : [ 180.0, 370.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 70.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 40.0, 20.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-13", 1 ]
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
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-317", 0 ],
									"source" : [ "obj-309", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-310", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-310", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-313", 0 ],
									"source" : [ "obj-311", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-313", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-317", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-320", 0 ],
									"source" : [ "obj-318", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-320", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-322", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-322", 0 ],
									"source" : [ "obj-323", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-324", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-324", 0 ],
									"source" : [ "obj-325", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-326", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-326", 0 ],
									"order" : 1,
									"source" : [ "obj-327", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-327", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-328", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-328", 0 ],
									"source" : [ "obj-329", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-332", 0 ],
									"source" : [ "obj-330", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-332", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-325", 0 ],
									"order" : 2,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-329", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-330", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-309", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-323", 0 ],
									"source" : [ "obj-7", 1 ]
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
					"patching_rect" : [ 470.0, 110.0, 130.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 33.0, 125.0, 80.0 ],
					"varname" : "C",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 80.0, 33.0, 22.0 ],
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
						"rect" : [ 59.0, 103.0, 637.0, 465.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-302",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 179.0, 267.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-278",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 130.0, 80.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-276",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 100.0, 33.0, 22.0 ],
													"text" : "== 7"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-300",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-301",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 190.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-278", 0 ],
													"source" : [ "obj-276", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-301", 0 ],
													"source" : [ "obj-278", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-276", 0 ],
													"source" : [ "obj-300", 0 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 180.0, 160.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-299",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 177.0, 247.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-282",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 80.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-297",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-298",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 170.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-298", 0 ],
													"source" : [ "obj-282", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-282", 0 ],
													"source" : [ "obj-297", 0 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 300.0, 160.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-296",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 205.0, 238.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 110.0, 120.0, 61.0, 22.0 ],
													"text" : "hidden $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-63",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 120.0, 61.0, 22.0 ],
													"text" : "hidden $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 110.0, 90.0, 33.0, 22.0 ],
													"text" : "== 0"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-293",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-294",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 170.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-295",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 110.0, 170.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"order" : 0,
													"source" : [ "obj-293", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"order" : 1,
													"source" : [ "obj-293", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-294", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-295", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 410.0, 160.0, 30.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the waveform used by the LFO [0 12]",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-255",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 160.0, 120.0, 50.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Sine", "Triangle", "Analog Triangle", "Triangle 8-Step", "Triangle 16-Step", "Saw Up", "Saw Down", "Square", "Random", "Random Sample & Hold", "Wander", "Ramp Up", "Ramp Down" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "LFOWave",
											"parameter_mmax" : 12,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Wave",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "LFOWave"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-286",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 240.0, 67.0, 22.0 ],
									"text" : "lfosteps $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-279",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 270.0, 83.0, 22.0 ],
									"text" : "lfoquantize $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Enables/disables the quantization for the LFO [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-280",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 280.0, 120.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 108.0, 28.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "LFOQuantize",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Quantize",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "LFOQuantize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-272",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 240.0, 93.0, 22.0 ],
									"text" : "lfosmoothing $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Applies smoothing to the LFO Sample and Hold waveform [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-273",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 180.0, 190.0, 40.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 13.0, 40.0, 33.0, 36.0 ],
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
											"parameter_longname" : "LFOSmooth",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Smooth",
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
									"varname" : "LFOSmooth"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-271",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 300.0, 100.0, 22.0 ],
									"text" : "lfophaseoffset $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Shifts the starting point (in degrees) of both LFO channels along their waveforms [0. 360.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-269",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 490.0, 200.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 83.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "LFOOffset",
											"parameter_mmax" : 360.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Offset",
											"parameter_type" : 0,
											"parameter_units" : "°",
											"parameter_unitstyle" : 9
										}

									}
,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "LFOOffset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-268",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 410.0, 240.0, 71.0, 22.0 ],
									"text" : "lfophase $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-267",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 270.0, 60.0, 22.0 ],
									"text" : "lfospin $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-265",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 380.0, 300.0, 71.0, 22.0 ],
									"text" : "lfostereo $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"activebgoncolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"activetextcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activetextoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Sets the LFO stereo offset mode. 'Phase' offsets the left and right modulation channels using degrees. 'Spin' progressively diverges the left and right channels of the LFO [0/1]",
									"automation" : "Phase",
									"automationon" : "Spin",
									"bgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"bgoncolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"bordercolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"focusbordercolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"hint" : "",
									"id" : "obj-3",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"labeltextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"lcdbgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 380.0, 120.0, 23.0, 15.0 ],
									"pictures" : [ "phi_alt.svg", "spin.svg" ],
									"presentation" : 1,
									"presentation_rect" : [ 63.0, 65.0, 13.0, 15.0 ],
									"remapsvgcolors" : 1,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"activetextcolor" : 										{
											"expression" : ""
										}
,
										"activetextoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"labeltextcolor" : 										{
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
										"textoffcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Phase", "Spin" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "LFOMode",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Mode",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
									"textoffcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"usepicture" : 1,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "LFOMode"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Adjusts the offset between the left and right LFO channels. At 180 degrees, the LFO channels will be perfectly out of phase. Range: [0. 360.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-263",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 410.0, 200.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "LFOPhase",
											"parameter_mmax" : 360.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Phase",
											"parameter_type" : 0,
											"parameter_units" : "°",
											"parameter_unitstyle" : 9
										}

									}
,
									"shownumber" : 0,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "LFOPhase"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Detunes the left and right LFOs relative to each other [0. 0.5]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"hidden" : 1,
									"id" : "obj-55",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 450.0, 200.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 48.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "LFOSpin",
											"parameter_mmax" : 0.5,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Spin",
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
									"varname" : "LFOSpin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-260",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 300.0, 72.0, 22.0 ],
									"text" : "lfomorph $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Morphs the LFO waveform [-1. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-259",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 120.0, 190.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 63.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "LFOMorph",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Morph",
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
									"varname" : "LFOMorph"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-258",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 270.0, 90.0, 22.0 ],
									"text" : "lfowaveform $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-253",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 270.0, 59.0, 22.0 ],
									"text" : "lforate $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the LFO rate in Hz [0.1 60.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-254",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 80.0, 190.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 33.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 3.0,
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "LFORate",
											"parameter_mmax" : 60.0,
											"parameter_mmin" : 0.1,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Rate",
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
									"varname" : "LFORate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-252",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 240.0, 78.0, 22.0 ],
									"text" : "lfoamount $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of LFO modulation [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-250",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 190.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "LFOAmount",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "LFO",
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
									"varname" : "LFOAmount"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Defines how many discrete steps are used to divide the LFO cycle [2 64]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-292",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 300.0, 190.0, 30.0, 36.0 ],
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
											"parameter_initial" : [ 8 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "LFOSteps",
											"parameter_mmax" : 64.0,
											"parameter_mmin" : 2.0,
											"parameter_modmode" : 4,
											"parameter_shortname" : "Steps",
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
									"varname" : "LFOSteps"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 80.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 80.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 30.0, 41.0, 22.0 ],
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
									"patching_rect" : [ 400.0, 30.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 330.0, 30.0, 49.0, 22.0 ],
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
									"patching_rect" : [ 150.0, 30.0, 142.0, 22.0 ],
									"restore" : 									{
										"LFOAmount" : [ 0.0 ],
										"LFOMode" : [ 0.0 ],
										"LFOMorph" : [ 0.0 ],
										"LFOOffset" : [ 0.0 ],
										"LFOPhase" : [ 0.0 ],
										"LFOQuantize" : [ 0.0 ],
										"LFORate" : [ 1.0 ],
										"LFOSmooth" : [ 0.0 ],
										"LFOSpin" : [ 0.0 ],
										"LFOSteps" : [ 8.0 ],
										"LFOWave" : [ 0.0 ]
									}
,
									"text" : "autopattr @autorestore 0",
									"varname" : "u766011451[1]"
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
									"patching_rect" : [ 280.0, 390.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 80.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 40.0, 30.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-252", 0 ],
									"source" : [ "obj-250", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-252", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-253", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-253", 0 ],
									"source" : [ "obj-254", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-258", 0 ],
									"order" : 1,
									"source" : [ "obj-255", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-302", 0 ],
									"order" : 0,
									"source" : [ "obj-255", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-258", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-260", 0 ],
									"source" : [ "obj-259", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-260", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-268", 0 ],
									"source" : [ "obj-263", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-265", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-267", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-268", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-271", 0 ],
									"source" : [ "obj-269", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-271", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-272", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-272", 0 ],
									"source" : [ "obj-273", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-279", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-279", 0 ],
									"order" : 1,
									"source" : [ "obj-280", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-299", 0 ],
									"order" : 0,
									"source" : [ "obj-280", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-286", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-286", 0 ],
									"source" : [ "obj-292", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-263", 0 ],
									"source" : [ "obj-296", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-296", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-292", 0 ],
									"source" : [ "obj-299", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-265", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-296", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-273", 0 ],
									"source" : [ "obj-302", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-267", 0 ],
									"source" : [ "obj-55", 0 ]
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
					"patching_rect" : [ 330.0, 110.0, 130.0, 80.0 ],
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
					"patching_rect" : [ 190.0, 80.0, 33.0, 22.0 ],
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
						"rect" : [ 34.0, 100.0, 1148.0, 983.0 ],
						"openinpresentation" : 1,
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-6",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 160.0, 10.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 52.0, 5.0, 23.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}
,
									"varname" : "Line[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 160.0, 10.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 24.0, 64.0, 8.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}
,
									"varname" : "Line[5]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-228",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 670.0, 340.0, 47.0, 22.0 ],
									"text" : "* 0.001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-227",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 610.0, 340.0, 47.0, 22.0 ],
									"text" : "* 0.001"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light ",
									"id" : "obj-220",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 259.0, 35.0, 16.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 58.0, -1.0, 35.0, 16.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Morph",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-217",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 520.0, 67.0, 22.0 ],
									"text" : "envhold $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "When on, the envelope completes the entire attack phase before the release phase is started [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-218",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 630.0, 430.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 19.0, 67.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 1.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Hold",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Hold",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Hold"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-215",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 670.0, 400.0, 84.0, 22.0 ],
									"text" : "envrelease $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
									"annotation" : "Sets how quickly (in ms) the envelope responds to falling input levels [0. 3000.]",
									"bordercolor" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 0.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-216",
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 670.0, 260.0, 30.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 64.0, 30.0, 15.0 ],
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
											"parameter_exponent" : 3.0,
											"parameter_initial" : [ 250 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Rel",
											"parameter_mmax" : 3000.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Rel",
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Rel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-213",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.0, 370.0, 77.0, 22.0 ],
									"text" : "envattack $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 0.0 ],
									"annotation" : "Sets how quickly (in ms) the envelope responds to rising input levels [0. 100.]",
									"bordercolor" : [ 0.09782765023003, 0.097827613875914, 0.09782762332443, 0.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-214",
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.numbox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 610.0, 260.0, 30.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 49.0, 30.0, 15.0 ],
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
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Att",
											"parameter_mmax" : 100.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Att",
											"parameter_type" : 0,
											"parameter_unitstyle" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Att"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-209",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 310.0, 85.0, 22.0 ],
									"text" : "envamount $1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Determines the extent to which the envelope modulation affects the filter frequency [-1. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-210",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 570.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Env",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Env",
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
									"varname" : "Env"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-203",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 600.0, 490.0, 87.0, 22.0 ],
									"text" : "oversample $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Activates oversampling hi-quality mode, which helps reduce unwanted artifacts [0/1]",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-204",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 600.0, 430.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 109.0, 67.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Oversample",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Oversample",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Oversample"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-202",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 460.0, 63.0, 22.0 ],
									"text" : "softclip $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 370.0, 59.0, 22.0 ],
									"text" : "output $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-198",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 520.0, 310.0, 44.0, 22.0 ],
									"text" : "mix $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Applies soft clipping to the module output. This is useful for limiting any peaks caused by high resonance values [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "",
									"id" : "obj-195",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 570.0, 430.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 79.0, 68.0, 10.0, 10.0 ],
									"rounded" : 64.0,
									"saved_attribute_attributes" : 									{
										"activebgcolor" : 										{
											"expression" : ""
										}
,
										"activebgoncolor" : 										{
											"expression" : ""
										}
,
										"bgcolor" : 										{
											"expression" : ""
										}
,
										"bgoncolor" : 										{
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
										"inactivelcdcolor" : 										{
											"expression" : ""
										}
,
										"lcdcolor" : 										{
											"expression" : ""
										}
,
										"valueof" : 										{
											"parameter_enum" : [ "Off", "On" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Softclip",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Softclip",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Softclip"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-194",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 310.0, 57.0, 22.0 ],
									"text" : "circuit $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 340.0, 51.0, 22.0 ],
									"text" : "drive $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 370.0, 88.0, 22.0 ],
									"text" : "morphslope $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 340.0, 77.0, 22.0 ],
									"text" : "filterslope $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 310.0, 97.0, 22.0 ],
									"text" : "vowelformant $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 370.0, 81.0, 22.0 ],
									"text" : "vowelpitch $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 340.0, 71.0, 22.0 ],
									"text" : "djcontrol $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 310.0, 59.0, 22.0 ],
									"text" : "morph $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 370.0, 81.0, 22.0 ],
									"text" : "resonance $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 340.0, 78.0, 22.0 ],
									"text" : "frequency $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 310.0, 71.0, 22.0 ],
									"text" : "filtertype $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 323.0, 483.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "MP Max",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-147",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 340.0, 180.0, 35.0 ],
													"text" : "$1 active $2, $1 hidden $3, $1 ignoreclick $4, $1 outputvalue"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 290.0, 30.0, 22.0 ],
													"text" : "join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-144",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 120.0, 180.0, 30.0, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-142",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 4,
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 80.0, 240.0, 61.0, 22.0 ],
													"text" : "counter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-141",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 290.0, 30.0, 35.0 ],
													"text" : "1 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-140",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 200.0, 290.0, 30.0, 35.0 ],
													"text" : "0 1 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-139",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 290.0, 30.0, 35.0 ],
													"text" : "0 0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 80.0, 180.0, 30.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-136",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 160.0, 240.0, 58.0, 22.0 ],
													"text" : "sel -1 0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-135",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 150.0, 25.0, 22.0 ],
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-134",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 110.0, 110.0, 30.0, 22.0 ],
													"text" : "t l b"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 0.0 ],
													"bgfillcolor_color1" : [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
													"bgfillcolor_color2" : [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "color",
													"id" : "obj-91",
													"items" : [ 1, 1, -1, 0, 0, 0, 1, 0, 1, ",", 1, 1, -1, 0, 0, 0, 1, 0, 1, ",", 1, 1, -1, 0, 0, 0, 1, 0, 1, ",", 1, 1, -1, 0, 0, 0, 1, 0, 1, ",", 1, 1, 1, 0, 0, 0, 0, 1, 1, ",", 0, 1, -1, 1, 0, 0, 0, 0, 0, ",", 1, 1, 1, 0, 0, 0, 1, 0, 0, ",", 1, -1, -1, 0, 0, 0, 1, 0, 0, ",", 1, 1, 1, 0, 0, 0, 1, 0, 0, ",", 0, 0, -1, 0, 1, 1, 1, 0, 0 ],
													"maxclass" : "umenu",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 60.0, 80.0, 119.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-158",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-159",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 80.0, 410.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-135", 0 ],
													"source" : [ "obj-134", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-144", 0 ],
													"source" : [ "obj-134", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-136", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-141", 0 ],
													"source" : [ "obj-136", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-137", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 1 ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 1 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 1 ],
													"source" : [ "obj-141", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 0 ],
													"source" : [ "obj-142", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 2 ],
													"source" : [ "obj-144", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-147", 0 ],
													"source" : [ "obj-145", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-159", 0 ],
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-91", 0 ],
													"source" : [ "obj-158", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"source" : [ "obj-91", 1 ]
												}

											}
 ],
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"patching_rect" : [ 70.0, 200.0, 58.0, 22.0 ],
									"saved_object_attributes" : 									{
										"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
									}
,
									"text" : "p Display"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the filter slope (in db per octave) for low-pass, high-pass, band-pass, notch, and notch+LP filters [0 1]",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-81",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 310.0, 260.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 47.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "12dB", "24dB" ],
											"parameter_initial" : [ 1.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Slope",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Slope",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Slope"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 70.0, 230.0, 339.0, 22.0 ],
									"text" : "spray 9 0 1"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Morphs through the following vowels: a, e, i, o, and u [0 4]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"hidden" : 1,
									"id" : "obj-87",
									"ignoreclick" : 1,
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 270.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Form",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Form",
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
									"varname" : "Form"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Defines the amount of emphasis at the cutoff frequency specified by frequency [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-86",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 110.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Res",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Res",
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
									"varname" : "Res"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the filter slope (in dB per octave) for the Morph filter [0 3]",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hidden" : 1,
									"hint" : "",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-82",
									"ignoreclick" : 1,
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 350.0, 260.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 47.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "6dB", "12dB", "24dB", "48dB" ],
											"parameter_initial" : [ 2.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MorphSlope",
											"parameter_mmax" : 3,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Slope",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "MorphSlope"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the filter position in its morph cycle. Morph filter: transitions between low-pass, band-pass, and high-pass filtering. Comb filter: shifts the filter between either the peaks or notches that appear at multiples of the set filter frequency. Notch+LP filter: shifts the position of the notch relative to the low-pass cutoff. Vowel filter: increasingly normalizes the gain of the formants. Range: [0. 1.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-78",
									"ignoreclick" : 1,
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 150.0, 273.0, 25.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 13.0, 25.0, 23.0 ],
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
											"parameter_longname" : "Morph",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Morph",
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
									"varname" : "Morph"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the filter type [0 9]",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "",
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
									"patching_rect" : [ 40.0, 160.0, 50.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "LP", "HP", "BP", "Notch", "Morph", "DJ", "Comb", "Resamp", "Notch+LP", "Vowel" ],
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Type",
											"parameter_mmax" : 9,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Type",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Type"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Selects the filter circuit used for the Low-pass, High-pass, Band-pass, Notch, and Morph filters. SVF is a clean-sounding filter, DFM filter internally feeds back more of its distortion for a broad range of tones from subtle filter sweeps to warm drive. Range: [0 1].",
									"bordercolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 0.0 ],
									"focusbordercolor" : [ 0.447058823529412, 0.447058823529412, 0.447058823529412, 0.0 ],
									"hint" : "",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"id" : "obj-54",
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 390.0, 260.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 107.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "SVF", "DFM", "MS2", "PRD" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Circuit",
											"parameter_mmax" : 3,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Circuit",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Circuit"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Controls the transition between low-pass and high-pass filtering. Values above 0.0 filter out low frequencies, while values below 0.0 filter out high frequencies. The filter resonance also shifts as the filtering changes: values near 0.0 result in only a slight boost of the emphasized frequencies; this boost grows progressively as values near -1.0 or 1.0. Range: [-1. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"hidden" : 1,
									"id" : "obj-83",
									"ignoreclick" : 1,
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 190.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Ctrl",
											"parameter_mmax" : 1.0,
											"parameter_mmin" : -1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Ctrl",
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
									"varname" : "Ctrl"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Shifts the formants up or down by the set number of semitones [-36. 36.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"hidden" : 1,
									"id" : "obj-65",
									"ignoreclick" : 1,
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 230.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Pitch",
											"parameter_mmax" : 36.0,
											"parameter_mmin" : -36.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Pitch",
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
									"varname" : "Pitch"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the filter cutoff frequency [20. 20000.]",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-34",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 70.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 3.33,
											"parameter_initial" : [ 10000 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Freq",
											"parameter_mmax" : 20000.0,
											"parameter_mmin" : 20.0,
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
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Applies additional input drive to the signal before it reaches the filter to add distortion. At 0.0, the signal remains clean and unaltered. As the drive value is increased, most filter types will progressively blend in the distortion for a more saturated sound. Range: [0. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-190",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 440.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 94.0, 0.0, 30.0, 36.0 ],
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
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Defines the wet signal level at the output of the module in dB [-70. 0.]",
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
									"patching_rect" : [ 480.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 64.0, 40.0, 30.0, 36.0 ],
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
											"parameter_mmax" : 0.0,
											"parameter_mmin" : -70.0,
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
, 							{
								"box" : 								{
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
									"id" : "obj-196",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.585589561616945, 0.585589421302297, 0.585589457968756, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 520.0, 260.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 94.0, 40.0, 30.0, 36.0 ],
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
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 90.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 90.0, 50.0, 22.0 ],
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
									"patching_rect" : [ 400.0, 40.0, 49.0, 22.0 ],
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
									"patching_rect" : [ 330.0, 40.0, 49.0, 22.0 ],
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
										"Att" : [ 1.0 ],
										"Circuit" : [ 0.0 ],
										"Ctrl" : [ 0.0 ],
										"Drive" : [ 0.0 ],
										"Env" : [ 0.0 ],
										"Form" : [ 0.0 ],
										"Freq" : [ 9999.999999999998181 ],
										"Gain" : [ 0.0 ],
										"Hold" : [ 1.0 ],
										"Mix" : [ 1.0 ],
										"Morph" : [ 0.0 ],
										"MorphSlope" : [ 2.0 ],
										"Oversample" : [ 0.0 ],
										"Pitch" : [ 0.0 ],
										"Rel" : [ 249.999999999999943 ],
										"Res" : [ 0.0 ],
										"Slope" : [ 1.0 ],
										"Softclip" : [ 0.0 ],
										"Type" : [ 0.0 ]
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
									"patching_rect" : [ 310.0, 520.0, 30.0, 30.0 ]
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"order" : 0,
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"order" : 1,
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 0 ],
									"source" : [ "obj-124", 0 ]
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
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 0 ],
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-198", 0 ],
									"source" : [ "obj-196", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-198", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-202", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-203", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-203", 0 ],
									"source" : [ "obj-204", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-209", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 0 ],
									"source" : [ "obj-210", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-227", 0 ],
									"source" : [ "obj-214", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-215", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-217", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-217", 0 ],
									"source" : [ "obj-218", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-213", 0 ],
									"source" : [ "obj-227", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-215", 0 ],
									"source" : [ "obj-228", 0 ]
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
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-88", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-88", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-88", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-88", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-88", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-88", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-88", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-88", 5 ]
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
					"patching_rect" : [ 190.0, 110.0, 130.0, 80.0 ],
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
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
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
						"rect" : [ 59.0, 104.0, 613.0, 435.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "Abl.EffectModules",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 90.0, 75.0, 22.0 ],
									"text" : "s #0-Display"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 240.0, 80.0, 49.0 ],
									"text" : "A hidden $1, B hidden $2, C hidden $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 300.0, 133.0, 22.0 ],
									"text" : "prepend script sendbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 190.0, 35.0, 22.0 ],
									"text" : "1 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 190.0, 35.0, 22.0 ],
									"text" : "1 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 190.0, 35.0, 22.0 ],
									"text" : "0 1 1"
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
									"patching_rect" : [ 90.0, 340.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 440.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 250.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 250.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 250.0, 250.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"patching_rect" : [ 250.0, 120.0, 79.0, 22.0 ],
									"text" : "sel 0 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 440.0, 90.0, 29.0, 22.0 ],
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
									"patching_rect" : [ 450.0, 250.0, 55.0, 22.0 ],
									"text" : "hidden 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 410.0, 340.0, 30.0, 30.0 ],
									"varname" : "Line[5]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 340.0, 30.0, 30.0 ],
									"varname" : "Line[4]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 340.0, 30.0, 30.0 ],
									"varname" : "Line[3]"
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
									"patching_rect" : [ 290.0, 340.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 250.0, 340.0, 30.0, 30.0 ],
									"varname" : "Line[1]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 340.0, 30.0, 30.0 ],
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
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 5,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 4,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 3,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
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
									"destination" : [ "obj-69", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 2 ]
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
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 2 ]
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
									"order" : 3,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 2,
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
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
									"destination" : [ "obj-29", 0 ],
									"order" : 1,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-69", 0 ]
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
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
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
					"patching_rect" : [ 470.0, 310.0, 139.0, 22.0 ],
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
					"patching_rect" : [ 570.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 5.0, 31.0 ],
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
					"hidden" : 1,
					"id" : "obj-36",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 86.0, 5.0, 31.0 ],
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
					"id" : "obj-29",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 86.0, 24.0, 10.0 ],
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
					"hidden" : 1,
					"id" : "obj-23",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 56.0, 5.0, 61.0 ],
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
					"hidden" : 1,
					"id" : "obj-22",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 340.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 56.0, 24.0, 10.0 ],
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
					"patching_rect" : [ 470.0, 260.0, 30.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 24.25, 21.0, 92.75 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "A", "B", "C" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "View",
							"parameter_mmax" : 2,
							"parameter_modmode" : 0,
							"parameter_shortname" : "View",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 9.0,
					"tabcolor" : [ 0.9, 0.9, 0.9, 0.5 ],
					"tabs" : [ "A", "B", "C" ],
					"valuepopuplabel" : 1,
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
					"patching_rect" : [ 730.0, 100.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 650.0, 100.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 880.0, 410.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 880.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"alias" : 					{
						"B::LFOSpin" : "LFOSpin",
						"A::Mix" : "Mix",
						"B::LFOPhase" : "LFOPhase"
					}
,
					"id" : "obj-154",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 880.0, 260.0, 190.0, 49.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.AutoFilter",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Envelope+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Envelope-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ -1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Drive",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "High-pass",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 1.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Morph",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 4.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Ctrl",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 5.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Resamp",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.496062992125986 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 7.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Notch+LP",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.984251968503938 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 8.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Pitch&Form",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.496062992125986 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 9.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "LFO",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.5 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Stereo",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.5 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Square",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.527559055118111 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 1.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 5.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 7.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Vibe",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.527559055118111 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 45.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 5.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 64.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Spinning",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.251968503937007 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 2653.090163612970173 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 2.0 ],
													"B::LFOAmount" : [ 0.496062992125984 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 0.252417976229005 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 15000.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Sidechain",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 2 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.118110236220472 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 49.852900613215532 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 8.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 30.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Sidechain+LFO",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.118110236220472 ],
													"A::Env" : [ -1.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 2653.090163612970173 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 1.0 ],
													"B::LFOAmount" : [ 0.385826771653543 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 62.362204724409438 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 0.634293059501252 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 30.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
												}

											}

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "Abl.AutoFilter",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Abl.AutoFilter",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"client_rect" : [ 0, 100, 437, 1034 ],
						"parameter_enable" : 1,
						"parameter_mappable" : 0,
						"paraminitmode" : 1,
						"storage_rect" : [ 0, 100, 1056, 848 ]
					}
,
					"text" : "pattrstorage Abl.AutoFilter @autorestore 0 @changemode 1 @outputmode 2 @savemode 0",
					"varname" : "Abl.AutoFilter"
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
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 230.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 240.0, 370.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 240.0, 340.0, 30.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 7.0, 20.0, 18.0 ],
					"text" : "R",
					"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"texton" : "R",
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
					"patching_rect" : [ 50.0, 25.0, 138.0, 27.0 ],
					"text" : "Abl.AutoFilter~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 30.0, 205.0, 20.0 ],
					"text" : "Classic stereo analog filter emulation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "signal" ],
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
						"rect" : [ 34.0, 100.0, 443.0, 424.0 ],
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"subpatcher_template" : "MP Max",
						"assistshowspatchername" : 0,
						"commentary" : "",
						"showcommentary" : 0,
						"visualizepatchpoints" : 0,
						"integercoordinates" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 300.0, 60.0, 22.0 ],
									"text" : "mc.pass~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 250.0, 300.0, 40.0, 22.0 ],
									"text" : "*~ 0.7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 250.0, 270.0, 58.0, 22.0 ],
									"text" : "mc.sum~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 100.0, 448.0, 517.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "Abl.EffectModules",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"visualizepatchpoints" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 190.0, 290.0, 95.0, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 190.0, 320.0, 121.0, 22.0 ],
													"presentation_linecount" : 2,
													"text" : "hotcolor $1 $2 $3 $4,"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 420.0, 61.0, 22.0 ],
													"text" : "hidden $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 140.0, 390.0, 30.0, 22.0 ],
													"text" : "!= 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 360.0, 73.0, 22.0 ],
													"text" : "r #0-Display"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 320.0, 101.0, 22.0 ],
													"text" : "color $1 $2 $3 $4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 40.0, 70.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 40.0, 66.0, 22.0 ],
													"text" : "r #0-Active"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 50.0, 240.0, 30.0, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 40.0, 110.0, 30.0, 22.0 ],
													"text" : "i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 40.0, 140.0, 29.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 290.0, 99.0, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 90.0, 240.0, 295.0, 22.0 ],
													"text" : "route \"Text / Icon Off (Inactive)\" Play \"Text / Icon\" Alert"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 180.0, 273.0, 22.0 ],
													"text" : "\"Text / Icon Off (Inactive)\", Play, \"Text / Icon\", Alert"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 90.0, 210.0, 62.0, 22.0 ],
													"text" : "live.colors"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-28",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 410.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 2 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 2 ],
													"source" : [ "obj-14", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-14", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-24", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 1,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 330.0, 270.0, 47.0, 22.0 ],
									"text" : "p Color"
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
									"patching_rect" : [ 250.0, 350.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.0, 220.0, 19.0, 22.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 100.0, 42.0, 22.0 ],
									"text" : "mc.+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 300.0, 100.0, 89.0, 22.0 ],
									"text" : "route scmode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 150.0, 30.0, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-345",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 350.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-343",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 270.0, 60.0, 22.0 ],
									"text" : "mc.pack~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-342",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 250.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-339",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 150.0, 100.0, 90.0, 35.0 ],
									"text" : "mc.selector~ 2 @ramptime 10"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-338",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-336",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 150.0, 150.0, 80.0, 35.0 ],
									"text" : "mc.unpack~ @replicate 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-335",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 50.0, 150.0, 80.0, 35.0 ],
									"text" : "mc.unpack~ @replicate 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-334",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 50.0, 220.0, 119.0, 22.0 ],
									"text" : "abl.device.autofilter~"
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
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-345", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-339", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-343", 1 ],
									"source" : [ "obj-334", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-343", 0 ],
									"source" : [ "obj-334", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-334", 1 ],
									"source" : [ "obj-335", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-334", 0 ],
									"source" : [ "obj-335", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-334", 3 ],
									"source" : [ "obj-336", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-334", 2 ],
									"source" : [ "obj-336", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-338", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-336", 0 ],
									"source" : [ "obj-339", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-339", 2 ],
									"order" : 1,
									"source" : [ "obj-342", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-342", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-343", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-335", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-339", 1 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-334", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
					}
,
					"patching_rect" : [ 90.0, 240.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"patchlinecolor" : [ 0.5, 0.5, 0.5, 1.0 ]
					}
,
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
						"visualizepatchpoints" : 0,
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
					"patching_rect" : [ 50.0, 330.0, 99.0, 22.0 ],
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
					"patching_rect" : [ 130.0, 300.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 50.0, 120.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 50.0, 420.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 130.0, 370.0, 50.0, 10.0 ],
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
					"patching_rect" : [ 90.0, 390.0, 50.0, 10.0 ],
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
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 420.0, 67.0, 22.0 ],
					"text" : "universal 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 590.0, 340.0, 20.0, 20.0 ],
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
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
					"bordercolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"hint" : "",
					"id" : "obj-51",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 0.0, 5.0, 5.0 ],
					"proportion" : 0.39,
					"rounded" : 16,
					"shape" : 1
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
					"items" : [ "(Mod", "Out", "B)", ",", "None", ",", "A::Freq", ",", "A::Res", ",", "A::Morph", ",", "A::Ctrl", ",", "A::Pitch", ",", "A::Form", ",", "A::Drive", ",", "A::Env", ",", "A::Gain", ",", "A::Mix", ",", "B::LFOAmount", ",", "B::LFORate", ",", "B::LFOMorph", ",", "B::LFOSteps", ",", "B::LFOSmooth", ",", "B::LFOPhase", ",", "B::LFOSpin", ",", "B::LFOOffset", ",", "C::SCIntern", ",", "C::SCExtern", ",", "C::SCFreq", ",", "C::SCRes" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 740.0, 280.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out B)", "None", "A::Freq", "A::Res", "A::Morph", "A::Ctrl", "A::Pitch", "A::Form", "A::Drive", "A::Env", "A::Gain", "A::Mix", "B::LFOAmount", "B::LFORate", "B::LFOMorph", "B::LFOSteps", "B::LFOSmooth", "B::LFOPhase", "B::LFOSpin", "B::LFOOffset", "C::SCIntern", "C::SCExtern", "C::SCFreq", "C::SCRes" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutB",
							"parameter_mmax" : 23,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModOutB",
							"parameter_type" : 2
						}

					}
,
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
					"items" : [ "(Mod", "Out", "A)", ",", "None", ",", "A::Freq", ",", "A::Res", ",", "A::Morph", ",", "A::Ctrl", ",", "A::Pitch", ",", "A::Form", ",", "A::Drive", ",", "A::Env", ",", "A::Gain", ",", "A::Mix", ",", "B::LFOAmount", ",", "B::LFORate", ",", "B::LFOMorph", ",", "B::LFOSteps", ",", "B::LFOSmooth", ",", "B::LFOPhase", ",", "B::LFOSpin", ",", "B::LFOOffset", ",", "C::SCIntern", ",", "C::SCExtern", ",", "C::SCFreq", ",", "C::SCRes" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 650.0, 280.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out A)", "None", "A::Freq", "A::Res", "A::Morph", "A::Ctrl", "A::Pitch", "A::Form", "A::Drive", "A::Env", "A::Gain", "A::Mix", "B::LFOAmount", "B::LFORate", "B::LFOMorph", "B::LFOSteps", "B::LFOSmooth", "B::LFOPhase", "B::LFOSpin", "B::LFOOffset", "C::SCIntern", "C::SCExtern", "C::SCFreq", "C::SCRes" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutA",
							"parameter_mmax" : 23,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModOutA",
							"parameter_type" : 2
						}

					}
,
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
					"items" : [ "(Mod", "In", "B)", ",", "None", ",", "A::Freq", ",", "A::Res", ",", "A::Morph", ",", "A::Ctrl", ",", "A::Pitch", ",", "A::Form", ",", "A::Drive", ",", "A::Env", ",", "A::Gain", ",", "A::Mix", ",", "B::LFOAmount", ",", "B::LFORate", ",", "B::LFOMorph", ",", "B::LFOSteps", ",", "B::LFOSmooth", ",", "B::LFOPhase", ",", "B::LFOSpin", ",", "B::LFOOffset", ",", "C::SCIntern", ",", "C::SCExtern", ",", "C::SCFreq", ",", "C::SCRes" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 750.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 116.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In B)", "None", "A::Freq", "A::Res", "A::Morph", "A::Ctrl", "A::Pitch", "A::Form", "A::Drive", "A::Env", "A::Gain", "A::Mix", "B::LFOAmount", "B::LFORate", "B::LFOMorph", "B::LFOSteps", "B::LFOSmooth", "B::LFOPhase", "B::LFOSpin", "B::LFOOffset", "C::SCIntern", "C::SCExtern", "C::SCFreq", "C::SCRes" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInB",
							"parameter_mmax" : 23,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModInB",
							"parameter_type" : 2
						}

					}
,
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
					"items" : [ "(Mod", "In", "A)", ",", "None", ",", "A::Freq", ",", "A::Res", ",", "A::Morph", ",", "A::Ctrl", ",", "A::Pitch", ",", "A::Form", ",", "A::Drive", ",", "A::Env", ",", "A::Gain", ",", "A::Mix", ",", "B::LFOAmount", ",", "B::LFORate", ",", "B::LFOMorph", ",", "B::LFOSteps", ",", "B::LFOSmooth", ",", "B::LFOPhase", ",", "B::LFOSpin", ",", "B::LFOOffset", ",", "C::SCIntern", ",", "C::SCExtern", ",", "C::SCFreq", ",", "C::SCRes" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 670.0, 140.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 79.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In A)", "None", "A::Freq", "A::Res", "A::Morph", "A::Ctrl", "A::Pitch", "A::Form", "A::Drive", "A::Env", "A::Gain", "A::Mix", "B::LFOAmount", "B::LFORate", "B::LFOMorph", "B::LFOSteps", "B::LFOSmooth", "B::LFOPhase", "B::LFOSpin", "B::LFOOffset", "C::SCIntern", "C::SCExtern", "C::SCFreq", "C::SCRes" ],
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInA",
							"parameter_mmax" : 23,
							"parameter_modmode" : 0,
							"parameter_order" : -1,
							"parameter_shortname" : "ModInA",
							"parameter_type" : 2
						}

					}
,
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
					"patching_rect" : [ 960.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.0, 117.0, 8.0, 8.0 ],
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
					"patching_rect" : [ 970.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 106.0, 117.0, 8.0, 8.0 ],
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
					"patching_rect" : [ 950.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, -1.0, 8.0, 8.0 ],
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
					"patching_rect" : [ 940.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.0, -1.0, 8.0, 8.0 ],
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
					"patching_rect" : [ 450.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 470.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 82.0, 0.0, 5.0, 5.0 ],
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
					"patching_rect" : [ 480.0, 420.0, 10.0, 10.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 0.0, 5.0, 5.0 ],
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
					"patching_rect" : [ 490.0, 420.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 450.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 470.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 480.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 490.0, 430.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 420.0, 10.0, 20.0 ],
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
					"patching_rect" : [ 400.0, 420.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 370.0, 420.0, 20.0, 20.0 ],
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-111", 1 ]
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
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-19", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-28", 1 ]
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
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-42", 0 ]
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
					"destination" : [ "obj-10", 2 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
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
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
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
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-55", 0 ]
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
					"destination" : [ "obj-111", 2 ],
					"source" : [ "obj-57", 0 ]
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
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 1 ]
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
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
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
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-77", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-77", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-77", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-77", 6 ]
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
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-9", 0 ]
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
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 2 ],
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
			"obj-154" : [ "Abl.AutoFilter", "Abl.AutoFilter", 0 ],
			"obj-167" : [ "ModOutB", "ModOutB", -1 ],
			"obj-45" : [ "ModInALed", "ModInALed", 0 ],
			"obj-47" : [ "ModInBLed", "ModInBLed", 0 ],
			"obj-49" : [ "ModInA", "ModInA", -1 ],
			"obj-50" : [ "ModInB", "ModInB", -1 ],
			"obj-52" : [ "ModOutA", "ModOutA", -1 ],
			"obj-59" : [ "ModOutALed", "ModOutALed", 0 ],
			"obj-60" : [ "ModOutBLed", "ModOutBLed", 0 ],
			"obj-83::obj-116" : [ "Type", "Type", 0 ],
			"obj-83::obj-124" : [ "Gain", "Gain", 0 ],
			"obj-83::obj-190" : [ "Drive", "Drive", 0 ],
			"obj-83::obj-195" : [ "Softclip", "Softclip", 0 ],
			"obj-83::obj-196" : [ "Mix", "Mix", 0 ],
			"obj-83::obj-204" : [ "Oversample", "Oversample", 0 ],
			"obj-83::obj-210" : [ "Env", "Env", 0 ],
			"obj-83::obj-214" : [ "Att", "Att", 0 ],
			"obj-83::obj-216" : [ "Rel", "Rel", 0 ],
			"obj-83::obj-218" : [ "Hold", "Hold", 0 ],
			"obj-83::obj-34" : [ "Freq", "Freq", 0 ],
			"obj-83::obj-54" : [ "Circuit", "Circuit", 0 ],
			"obj-83::obj-65" : [ "Pitch", "Pitch", 0 ],
			"obj-83::obj-78" : [ "Morph", "Morph", 0 ],
			"obj-83::obj-81" : [ "Slope", "Slope", 0 ],
			"obj-83::obj-82" : [ "MorphSlope", "Slope", 0 ],
			"obj-83::obj-83" : [ "Ctrl", "Ctrl", 0 ],
			"obj-83::obj-86" : [ "Res", "Res", 0 ],
			"obj-83::obj-87" : [ "Form", "Form", 0 ],
			"obj-90::obj-250" : [ "LFOAmount", "LFO", 0 ],
			"obj-90::obj-254" : [ "LFORate", "Rate", 0 ],
			"obj-90::obj-255" : [ "LFOWave", "Wave", 0 ],
			"obj-90::obj-259" : [ "LFOMorph", "Morph", 0 ],
			"obj-90::obj-263" : [ "LFOPhase", "Phase", 0 ],
			"obj-90::obj-269" : [ "LFOOffset", "Offset", 0 ],
			"obj-90::obj-273" : [ "LFOSmooth", "Smooth", 0 ],
			"obj-90::obj-280" : [ "LFOQuantize", "Quantize", 0 ],
			"obj-90::obj-292" : [ "LFOSteps", "Steps", 0 ],
			"obj-90::obj-3" : [ "LFOMode", "Mode", 0 ],
			"obj-90::obj-55" : [ "LFOSpin", "Spin", 0 ],
			"obj-92::obj-309" : [ "SCIntern", "Intern", 0 ],
			"obj-92::obj-310" : [ "SCExternal", "External", 0 ],
			"obj-92::obj-311" : [ "SCMono", "Mono", 0 ],
			"obj-92::obj-318" : [ "SCSolo", "Solo", 0 ],
			"obj-92::obj-323" : [ "SCExtern", "Extern", 0 ],
			"obj-92::obj-325" : [ "SCFreq", "Freq", 0 ],
			"obj-92::obj-327" : [ "SCEQ", "EQ", 0 ],
			"obj-92::obj-329" : [ "SCRes", "Res", 0 ],
			"obj-92::obj-330" : [ "SCType", "Type", 0 ],
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
				"name" : "Abl.AutoFilter.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Abl.Flanger_20250803.maxsnap",
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
, 			{
				"name" : "phi_alt.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "spin.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
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
						"Att" : 1.0,
						"Circuit" : 0.0,
						"Ctrl" : 0.0,
						"Drive" : 0.0,
						"Env" : 0.0,
						"Form" : 0.0,
						"Freq" : 16240.546081543296168,
						"Gain" : 0.0,
						"Hold" : 1.0,
						"LFOAmount" : 0.0,
						"LFOMode" : 0.0,
						"LFOMorph" : 0.0,
						"LFOOffset" : 0.0,
						"LFOPhase" : 0.0,
						"LFOQuantize" : 0.0,
						"LFORate" : 14.880826461708255,
						"LFOSmooth" : 0.0,
						"LFOSpin" : 0.0,
						"LFOSteps" : 8.0,
						"LFOWave" : 0.0,
						"Mix" : 1.0,
						"Morph" : 0.0,
						"MorphSlope" : 2.0,
						"Oversample" : 0.0,
						"Pitch" : 0.0,
						"Rel" : 1310.370697104448254,
						"Res" : 0.0,
						"SCEQ" : 0.0,
						"SCExtern" : 0.0,
						"SCExternal" : 0.0,
						"SCFreq" : 3931.269215503195483,
						"SCIntern" : 0.0,
						"SCMono" : 0.0,
						"SCRes" : 4.496243350018656,
						"SCSolo" : 0.0,
						"SCType" : 0.0,
						"Slope" : 1.0,
						"Softclip" : 0.0,
						"Type" : 0.0,
						"View" : 2.0,
						"blob" : 						{
							"Abl.AutoFilter" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.AutoFilter",
										"slots" : 										{
											"1" : 											{
												"id" : 1,
												"name" : "Default",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Envelope+",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Envelope-",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ -1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Drive",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "High-pass",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 1.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Morph",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 4.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Ctrl",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.33 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ -10.472440944881871 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 5.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Resamp",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.496062992125986 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.496062992125984 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 7.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Notch+LP",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.984251968503938 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 8.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Pitch&Form",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 0 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.496062992125986 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 499.999999999999943 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.5 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.5 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 9.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"11" : 											{
												"id" : 11,
												"name" : "LFO",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.5 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"12" : 											{
												"id" : 12,
												"name" : "Stereo",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.5 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"13" : 											{
												"id" : 13,
												"name" : "Square",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.527559055118111 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 1.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 5.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 7.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"14" : 											{
												"id" : 14,
												"name" : "Vibe",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.0 ],
													"A::Drive" : [ 0.0 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.0 ],
													"A::Freq" : [ 9999.999999999998181 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 1.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.0 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.0 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 0.0 ],
													"A::Type" : [ 0.0 ],
													"B::LFOAmount" : [ 0.527559055118111 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 45.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 5.999999999999999 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 64.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 0.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 0.0 ],
													"C::SCFreq" : [ 200.000000000000028 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 0.0 ],
													"C::SCRes" : [ 0.7 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 0.0 ]
												}

											}
,
											"15" : 											{
												"id" : 15,
												"name" : "Spinning",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.251968503937007 ],
													"A::Env" : [ 0.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 2653.090163612970173 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 2.0 ],
													"B::LFOAmount" : [ 0.496062992125984 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 180.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 0.252417976229005 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 15000.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
												}

											}
,
											"16" : 											{
												"id" : 16,
												"name" : "Sidechain",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 2 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.118110236220472 ],
													"A::Env" : [ 1.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 49.852900613215532 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 8.0 ],
													"B::LFOAmount" : [ 0.0 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 0.0 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 1.0 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 30.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
												}

											}
,
											"17" : 											{
												"id" : 17,
												"name" : "Sidechain+LFO",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ "None" ],
													"ModInB" : [ "None" ],
													"ModOutA" : [ "None" ],
													"ModOutB" : [ "None" ],
													"View" : [ 1 ],
													"A::Att" : [ 1.0 ],
													"A::Circuit" : [ 0.0 ],
													"A::Ctrl" : [ 0.1496062992126 ],
													"A::Drive" : [ 0.118110236220472 ],
													"A::Env" : [ -1.0 ],
													"A::Form" : [ 0.480314960629922 ],
													"A::Freq" : [ 2653.090163612970173 ],
													"A::Gain" : [ 0.0 ],
													"A::Hold" : [ 0.0 ],
													"A::Mix" : [ 1.0 ],
													"A::Morph" : [ 0.354330708661417 ],
													"A::MorphSlope" : [ 2.0 ],
													"A::Oversample" : [ 0.0 ],
													"A::Pitch" : [ 0.0 ],
													"A::Rel" : [ 249.999999999999943 ],
													"A::Res" : [ 0.503937007874016 ],
													"A::Slope" : [ 1.0 ],
													"A::Softclip" : [ 1.0 ],
													"A::Type" : [ 1.0 ],
													"B::LFOAmount" : [ 0.385826771653543 ],
													"B::LFOMode" : [ 0.0 ],
													"B::LFOMorph" : [ 0.0 ],
													"B::LFOOffset" : [ 0.0 ],
													"B::LFOPhase" : [ 62.362204724409438 ],
													"B::LFOQuantize" : [ 0.0 ],
													"B::LFORate" : [ 0.634293059501252 ],
													"B::LFOSmooth" : [ 0.0 ],
													"B::LFOSpin" : [ 0.0 ],
													"B::LFOSteps" : [ 8.0 ],
													"B::LFOWave" : [ 0.0 ],
													"C::SCEQ" : [ 1.0 ],
													"C::SCExtern" : [ 0.0 ],
													"C::SCExternal" : [ 1.0 ],
													"C::SCFreq" : [ 30.0 ],
													"C::SCIntern" : [ 0.0 ],
													"C::SCMono" : [ 1.0 ],
													"C::SCRes" : [ 12.0 ],
													"C::SCSolo" : [ 0.0 ],
													"C::SCType" : [ 5.0 ]
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
						"name" : "Abl.AutoFilter",
						"origin" : "Abl.AutoFilter~",
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
									"Att" : 1.0,
									"Circuit" : 0.0,
									"Ctrl" : 0.0,
									"Drive" : 0.0,
									"Env" : 0.0,
									"Form" : 0.0,
									"Freq" : 16240.546081543296168,
									"Gain" : 0.0,
									"Hold" : 1.0,
									"LFOAmount" : 0.0,
									"LFOMode" : 0.0,
									"LFOMorph" : 0.0,
									"LFOOffset" : 0.0,
									"LFOPhase" : 0.0,
									"LFOQuantize" : 0.0,
									"LFORate" : 14.880826461708255,
									"LFOSmooth" : 0.0,
									"LFOSpin" : 0.0,
									"LFOSteps" : 8.0,
									"LFOWave" : 0.0,
									"Mix" : 1.0,
									"Morph" : 0.0,
									"MorphSlope" : 2.0,
									"Oversample" : 0.0,
									"Pitch" : 0.0,
									"Rel" : 1310.370697104448254,
									"Res" : 0.0,
									"SCEQ" : 0.0,
									"SCExtern" : 0.0,
									"SCExternal" : 0.0,
									"SCFreq" : 3931.269215503195483,
									"SCIntern" : 0.0,
									"SCMono" : 0.0,
									"SCRes" : 4.496243350018656,
									"SCSolo" : 0.0,
									"SCType" : 0.0,
									"Slope" : 1.0,
									"Softclip" : 0.0,
									"Type" : 0.0,
									"View" : 2.0,
									"blob" : 									{
										"Abl.AutoFilter" : [ 											{
												"pattrstorage" : 												{
													"name" : "Abl.AutoFilter",
													"slots" : 													{
														"1" : 														{
															"id" : 1,
															"name" : "Default",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.0 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"2" : 														{
															"id" : 2,
															"name" : "Envelope+",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.5 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"3" : 														{
															"id" : 3,
															"name" : "Envelope-",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ -1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.5 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"4" : 														{
															"id" : 4,
															"name" : "Drive",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.33 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ -10.472440944881871 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.496062992125984 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"5" : 														{
															"id" : 5,
															"name" : "High-pass",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.33 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ -10.472440944881871 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.496062992125984 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 1.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"6" : 														{
															"id" : 6,
															"name" : "Morph",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.33 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ -10.472440944881871 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.5 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.496062992125984 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 4.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"7" : 														{
															"id" : 7,
															"name" : "Ctrl",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.33 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ -10.472440944881871 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.5 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.496062992125984 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 5.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"8" : 														{
															"id" : 8,
															"name" : "Resamp",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.496062992125986 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.5 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.496062992125984 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 7.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"9" : 														{
															"id" : 9,
															"name" : "Notch+LP",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.984251968503938 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.5 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.5 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 8.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"10" : 														{
															"id" : 10,
															"name" : "Pitch&Form",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 0 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.496062992125986 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 499.999999999999943 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.5 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.5 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 9.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"11" : 														{
															"id" : 11,
															"name" : "LFO",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.0 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.5 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"12" : 														{
															"id" : 12,
															"name" : "Stereo",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.0 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.5 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 180.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.999999999999999 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"13" : 														{
															"id" : 13,
															"name" : "Square",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.0 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.527559055118111 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 1.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 180.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 5.999999999999999 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 7.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"14" : 														{
															"id" : 14,
															"name" : "Vibe",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.0 ],
																"A::Drive" : [ 0.0 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.0 ],
																"A::Freq" : [ 9999.999999999998181 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 1.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.0 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.0 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 0.0 ],
																"A::Type" : [ 0.0 ],
																"B::LFOAmount" : [ 0.527559055118111 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 45.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 5.999999999999999 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 64.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 0.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 0.0 ],
																"C::SCFreq" : [ 200.000000000000028 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 0.0 ],
																"C::SCRes" : [ 0.7 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 0.0 ]
															}

														}
,
														"15" : 														{
															"id" : 15,
															"name" : "Spinning",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.1496062992126 ],
																"A::Drive" : [ 0.251968503937007 ],
																"A::Env" : [ 0.0 ],
																"A::Form" : [ 0.480314960629922 ],
																"A::Freq" : [ 2653.090163612970173 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 0.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.354330708661417 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.503937007874016 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 1.0 ],
																"A::Type" : [ 2.0 ],
																"B::LFOAmount" : [ 0.496062992125984 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 180.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 0.252417976229005 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 1.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 1.0 ],
																"C::SCFreq" : [ 15000.0 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 1.0 ],
																"C::SCRes" : [ 12.0 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 5.0 ]
															}

														}
,
														"16" : 														{
															"id" : 16,
															"name" : "Sidechain",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 2 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.1496062992126 ],
																"A::Drive" : [ 0.118110236220472 ],
																"A::Env" : [ 1.0 ],
																"A::Form" : [ 0.480314960629922 ],
																"A::Freq" : [ 49.852900613215532 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 0.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.354330708661417 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.503937007874016 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 1.0 ],
																"A::Type" : [ 8.0 ],
																"B::LFOAmount" : [ 0.0 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 0.0 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 1.0 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 1.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 1.0 ],
																"C::SCFreq" : [ 30.0 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 1.0 ],
																"C::SCRes" : [ 12.0 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 5.0 ]
															}

														}
,
														"17" : 														{
															"id" : 17,
															"name" : "Sidechain+LFO",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ "None" ],
																"ModInB" : [ "None" ],
																"ModOutA" : [ "None" ],
																"ModOutB" : [ "None" ],
																"View" : [ 1 ],
																"A::Att" : [ 1.0 ],
																"A::Circuit" : [ 0.0 ],
																"A::Ctrl" : [ 0.1496062992126 ],
																"A::Drive" : [ 0.118110236220472 ],
																"A::Env" : [ -1.0 ],
																"A::Form" : [ 0.480314960629922 ],
																"A::Freq" : [ 2653.090163612970173 ],
																"A::Gain" : [ 0.0 ],
																"A::Hold" : [ 0.0 ],
																"A::Mix" : [ 1.0 ],
																"A::Morph" : [ 0.354330708661417 ],
																"A::MorphSlope" : [ 2.0 ],
																"A::Oversample" : [ 0.0 ],
																"A::Pitch" : [ 0.0 ],
																"A::Rel" : [ 249.999999999999943 ],
																"A::Res" : [ 0.503937007874016 ],
																"A::Slope" : [ 1.0 ],
																"A::Softclip" : [ 1.0 ],
																"A::Type" : [ 1.0 ],
																"B::LFOAmount" : [ 0.385826771653543 ],
																"B::LFOMode" : [ 0.0 ],
																"B::LFOMorph" : [ 0.0 ],
																"B::LFOOffset" : [ 0.0 ],
																"B::LFOPhase" : [ 62.362204724409438 ],
																"B::LFOQuantize" : [ 0.0 ],
																"B::LFORate" : [ 0.634293059501252 ],
																"B::LFOSmooth" : [ 0.0 ],
																"B::LFOSpin" : [ 0.0 ],
																"B::LFOSteps" : [ 8.0 ],
																"B::LFOWave" : [ 0.0 ],
																"C::SCEQ" : [ 1.0 ],
																"C::SCExtern" : [ 0.0 ],
																"C::SCExternal" : [ 1.0 ],
																"C::SCFreq" : [ 30.0 ],
																"C::SCIntern" : [ 0.0 ],
																"C::SCMono" : [ 1.0 ],
																"C::SCRes" : [ 12.0 ],
																"C::SCSolo" : [ 0.0 ],
																"C::SCType" : [ 5.0 ]
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
							"name" : "Abl.AutoFilter",
							"filename" : "Abl.AutoFilter.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "bebfa9d219261b33186fc1e8e41e33e2"
						}

					}
, 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "Abl.Flanger",
						"origin" : "Abl.AutoFilter~",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"fileref" : 						{
							"name" : "Abl.Flanger",
							"filename" : "Abl.Flanger_20250803.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "b591976c0f9673a0582c20a61f6844e5"
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
