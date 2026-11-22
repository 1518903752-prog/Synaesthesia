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
		"description" : "Modulation delay effect that lets you set the delay time on two independent delay lines, while giving you control over envelope and filter modulation - incorporating the algorithm from Ableton Live's native Echo device.",
		"digest" : "Ableton-based stereo delay module",
		"tags" : "Ableton stereo delay module echo",
		"subpatcher_template" : "Abl.EffectModules",
		"assistshowspatchername" : 0,
		"commentary" : "",
		"showcommentary" : 0,
		"integercoordinates" : 1,
		"title" : "Abl.Echo~",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 280.0, 42.0, 22.0 ],
					"text" : "mute~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 250.0, 60.0, 22.0 ],
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
					"patching_rect" : [ 970.0, 380.0, 93.0, 35.0 ],
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
					"patching_rect" : [ 1090.0, 440.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 1090.0, 410.0, 45.0, 22.0 ],
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
					"patching_rect" : [ 1090.0, 380.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 980.0, 220.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-40",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 980.0, 160.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 7.0, 17.0, 17.0 ],
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
					"patching_rect" : [ 890.0, 160.0, 79.0, 22.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
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
					"patching_rect" : [ 920.0, 190.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 260.0, 360.0, 66.0, 22.0 ],
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
					"patching_rect" : [ 260.0, 390.0, 77.0, 22.0 ],
					"text" : "Abl.FxColors"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 85.0, 29.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.0, 7.0, 29.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : ""
						}

					}
,
					"text" : "Echo",
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
					"patching_rect" : [ 700.0, 230.0, 73.0, 22.0 ],
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
					"patching_rect" : [ 800.0, 230.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
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
					"patching_rect" : [ 700.0, 180.0, 59.0, 22.0 ],
					"text" : "p ModIn~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
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
					"patching_rect" : [ 780.0, 180.0, 59.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 200.0, 50.0, 22.0 ],
					"text" : "p Dual~"
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
									"text" : "coll Abl.Echo"
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
					"patching_rect" : [ 920.0, 320.0, 47.0, 22.0 ],
					"text" : "p Copy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
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
					"patching_rect" : [ 1030.0, 140.0, 40.0, 22.0 ],
					"text" : "p"
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
					"patching_rect" : [ 200.0, 330.0, 18.0, 22.0 ],
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
					"patching_rect" : [ 1050.0, 170.0, 89.0, 22.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"annotation" : "Click to select a factory preset, and/or copy/paste the module state from one instance to another",
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"id" : "obj-5",
					"items" : [ "(Presets)", ",", "Default", ",", "Stereo", ",", "Detune", ",", "Noise", ",", "Wobble", ",", "Gate", ",", "Wide", ",", "Pingpong", ",", "Reverb", ",", "Long", ",", "-", ",", "(State)", ",", "Copy", ",", "Paste" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1030.0, 110.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 6.0, 15.0, 20.0 ],
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
									"patching_rect" : [ 90.0, 180.0, 125.0, 22.0 ],
									"text" : "help abl.device.echo~"
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
					"patching_rect" : [ 350.0, 390.0, 43.0, 22.0 ],
					"text" : "p Help"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Help: Click to open the Clue window, in which information will be displayed when the cursor passes over a parameter. Opt/Alt-click to open the help for the dsp object around which this module is built.",
					"bgcolor" : [ 0.125, 0.125, 0.125, 0.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 8.0,
					"id" : "obj-37",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 350.0, 360.0, 30.0, 20.0 ],
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
					"patching_rect" : [ 790.0, 340.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 760.0, 390.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Modulation output signal A [0. 1.] ",
					"id" : "obj-54",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 700.0, 430.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 790.0, 430.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
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
					"patching_rect" : [ 700.0, 340.0, 79.0, 22.0 ],
					"text" : "p ModOut~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 90.0, 33.0, 22.0 ],
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
					"id" : "obj-27",
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
						"rect" : [ 414.0, 100.0, 676.0, 318.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 250.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 500.0, 250.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 440.0, 190.0, 42.0, 22.0 ],
									"text" : "r #1D"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 570.0, 190.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 500.0, 190.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.0, 110.0, 91.0, 22.0 ],
									"text" : "drywetmode $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "When equal-loudness is enabled, a 50/50 mix will sound equally loud for most signals [0/1].",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "DryWet",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-22",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 350.0, 50.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Linear", "Equal Loudness" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "DryWet",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "DryWet",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "DryWet"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 80.0, 104.0, 22.0 ],
									"text" : "channel_mode $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the echo channel mode [0 2].",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "Channel",
									"hltcolor" : [ 0.269595890603871, 0.408853959740371, 0.595943257030903, 1.0 ],
									"hlttextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"id" : "obj-9",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdbgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 300.0, 50.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 25.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Stereo", "Pingpong", "Mid/side" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Channel",
											"parameter_mmax" : 2,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Channel",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Channel"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Sets the location in the processing chain where reverb is added. It can be pre- or post-delay or within the feedback loop [0/1].",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "Location",
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
									"patching_rect" : [ 130.0, 50.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 65.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Pre", "Post", "Feedback" ],
											"parameter_initial" : [ 1.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Location",
											"parameter_mmax" : 2,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Location",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Location"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the output gain in dB [-76. 12.]",
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
									"patching_rect" : [ 220.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 0.57,
											"parameter_initial" : [ 0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Output",
											"parameter_mmax" : 12.0,
											"parameter_mmin" : -76.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Output",
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
									"varname" : "Output"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Adjusts the balance between the processed and dry signals [0. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-16",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 260.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 0.0, 30.0, 36.0 ],
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
									"annotation" : "Sets the stereo width of the wet signal. 0 yields a mono signal whereas values from 1 to 2 create a widened stereo panorama [0. 2.].",
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
									"patching_rect" : [ 180.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 10.0, 0.0, 30.0, 36.0 ],
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
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Width",
											"parameter_mmax" : 2.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Width",
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
									"varname" : "Width"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 230.0, 250.0, 142.0, 22.0 ],
									"restore" : 									{
										"Channel" : [ 0.0 ],
										"Decay" : [ 0.5 ],
										"DryWet" : [ 0.0 ],
										"Location" : [ 1.0 ],
										"Mix" : [ 0.5 ],
										"Output" : [ 0.000000000000001 ],
										"Reverb" : [ 0.0 ],
										"Width" : [ 1.0 ]
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
									"patching_rect" : [ 180.0, 240.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 140.0, 44.0, 22.0 ],
									"text" : "mix $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 110.0, 59.0, 22.0 ],
									"text" : "output $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 80.0, 53.0, 22.0 ],
									"text" : "width $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 140.0, 107.0, 22.0 ],
									"text" : "reverb_location $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 110.0, 98.0, 22.0 ],
									"text" : "reverb_decay $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 80.0, 59.0, 22.0 ],
									"text" : "reverb $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 400.0, 250.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 400.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the length of the reverb tail [0. 1.].",
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
									"patching_rect" : [ 90.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.0, 40.0, 30.0, 36.0 ],
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
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of reverb [0. 1.].",
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
									"patching_rect" : [ 50.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Reverb",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Reverb",
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
									"varname" : "Reverb"
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
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
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
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-26", 1 ]
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
									"destination" : [ "obj-5", 0 ],
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
									"destination" : [ "obj-20", 0 ],
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
					"patching_rect" : [ 540.0, 120.0, 130.0, 80.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 33.0, 125.0, 80.0 ],
					"varname" : "D",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-9",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 5.25, 68.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[9]"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-8",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 590.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 93.0, 5.0, 24.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[8]"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-6",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 93.0, 24.0, 10.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}
,
					"varname" : "Line[7]"
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
						"rect" : [ 59.0, 104.0, 328.0, 553.0 ],
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
									"id" : "obj-9",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 430.0, 170.0, 87.0 ],
									"text" : "Aliases can be used interchangeably with path names within the pattrstorage object, and are useful for referring to long paths by simpler, shorter names."
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
									"patching_rect" : [ 40.0, 430.0, 67.0, 22.0 ],
									"text" : "alias $1 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"linecount" : 21,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 90.0, 192.0, 290.0 ],
									"text" : "A::Clip Clip, A::DelL DelL, A::DelR DelR, A::Feed Feed, A::Filter Filter, A::HpFq HpFq, A::HpRs HpRs, A::Input Input, A::Invert Invert, A::Link Link, A::LpFq LpFq, A::LpRs LpRs, A::Repitch Repitch, B::Display Display, B::MDel MDel, B::MEnv MEnv, B::MFilt MFilt, B::MFreq MFreq, B::MMult MMult, B::MPha MPha, B::MWave MWave, C::DRel DRel, C::DThr DThr, C::Duck Duck, C::GRel GRel, C::GThr GThr, C::Gate Gate, C::NAmt NAmt, C::NMor NMor, C::Noise Noise, C::WAmt WAmt, C::WMor WMor, C::Wobble Wobble, D::Channel Channel, D::Decay Decay, D::DryWet DryWet, D::Location Location, D::Mix Mix, D::Output Output, D::Reverb Reverb, D::Width Width"
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
									"patching_rect" : [ 40.0, 480.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 1080.0, 200.0, 57.0, 22.0 ],
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
					"patching_rect" : [ 260.0, 250.0, 19.0, 22.0 ],
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
					"patching_rect" : [ 430.0, 390.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 400.0, 90.0, 33.0, 22.0 ],
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
						"rect" : [ 393.0, 127.0, 805.0, 352.0 ],
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
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 690.0, 280.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 620.0, 280.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 550.0, 230.0, 42.0, 22.0 ],
									"text" : "r #1C"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 690.0, 230.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 620.0, 230.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 140.0, 54.0, 22.0 ],
									"text" : "noise $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
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
										"rect" : [ 59.0, 104.0, 204.0, 218.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "Abl.EffectModules",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 160.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 100.0, 160.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.0, 90.0, 71.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-108",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"order" : 0,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Abl.EffectModules",
												"default" : 												{
													"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
													"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
													"bgfillcolor" : 													{
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
									"patching_rect" : [ 200.0, 80.0, 29.5, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 140.0, 51.0, 22.0 ],
									"text" : "duck $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
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
										"rect" : [ 59.0, 104.0, 204.0, 218.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "Abl.EffectModules",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 160.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 100.0, 160.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-95",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.0, 90.0, 71.0, 35.0 ],
													"text" : "active $1, outputvalue"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-108",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"order" : 0,
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Abl.EffectModules",
												"default" : 												{
													"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
													"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
													"bgfillcolor" : 													{
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
									"patching_rect" : [ 40.0, 80.0, 29.5, 22.0 ],
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 140.0, 49.0, 22.0 ],
									"text" : "gate $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "When enabled, the wet signal is proportionally reduced as long as there is an input signal [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Ducking",
									"id" : "obj-32",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 200.0, 50.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 77.0, 27.0, 10.0, 10.0 ],
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
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Ducking",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_order" : 1,
											"parameter_shortname" : "Ducking",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Ducking"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Enables the gate at input. It mutes the signal components below its threshold [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Gate",
									"id" : "obj-34",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 50.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 27.0, 10.0, 10.0 ],
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
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Gate",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_order" : 1,
											"parameter_shortname" : "Gate",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 260.0, 110.0, 47.0, 22.0 ],
									"text" : "* 0.001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 100.0, 110.0, 47.0, 22.0 ],
									"text" : "* 0.001"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Morph between different types of noise [0. 1.].",
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
									"patching_rect" : [ 460.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "NMor",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "NMor",
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
									"varname" : "NMor"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Morph between different types of wobble modulation [0. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-3",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 540.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "WMor",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "WMor",
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
									"varname" : "WMor"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of wobble added to the signal [0. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-16",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 500.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "WAmt",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "WAmt",
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
									"varname" : "WAmt"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of noise added to the signal [0. 1.].",
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
									"patching_rect" : [ 420.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "NAmt",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "NAmt",
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
									"varname" : "NAmt"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 350.0, 280.0, 142.0, 22.0 ],
									"restore" : 									{
										"DRel" : [ 100.0 ],
										"DThr" : [ 0.0 ],
										"Ducking" : [ 0.0 ],
										"GRel" : [ 5.0 ],
										"GThr" : [ 0.0 ],
										"Gate" : [ 0.0 ],
										"NAmt" : [ 0.0 ],
										"NMor" : [ 0.0 ],
										"WAmt" : [ 0.0 ],
										"WMor" : [ 0.0 ]
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
									"patching_rect" : [ 300.0, 270.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.0, 110.0, 63.0, 22.0 ],
									"text" : "wobble $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.0, 140.0, 95.0, 22.0 ],
									"text" : "noise_morph $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 110.0, 54.0, 22.0 ],
									"text" : "noise $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 170.0, 107.0, 22.0 ],
									"text" : "duck_threshold $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 260.0, 140.0, 97.0, 22.0 ],
									"text" : "duck_release $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 170.0, 105.0, 22.0 ],
									"text" : "gate_threshold $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 140.0, 95.0, 22.0 ],
									"text" : "gate_release $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 140.0, 104.0, 22.0 ],
									"text" : "wobble_morph $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 510.0, 280.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 510.0, 230.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Ducking begins to affect the output signal when the input level exceeds this threshold (in dB) [-60. 0.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-53",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 300.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 62.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "DThr",
											"parameter_mmax" : 0.0,
											"parameter_mmin" : -60.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "DThr",
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
									"varname" : "DThr"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Set how long it takes (in milliseconds) for ducking to stop after the input signal drops below the threshold [20. 1500.].",
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
									"patching_rect" : [ 260.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 2.0,
											"parameter_initial" : [ 100 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "DRel",
											"parameter_mmax" : 1500.0,
											"parameter_mmin" : 20.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "DRel",
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
									"varname" : "DRel"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the threshold level (in dB) that incoming audio signals must exceed in order to open the gate [-60. 0.].",
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
									"patching_rect" : [ 140.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 0.0, 30.0, 36.0 ],
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
											"parameter_longname" : "GThr",
											"parameter_mmax" : 0.0,
											"parameter_mmin" : -60.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "GThr",
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
									"varname" : "GThr"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets how long (in milliseconds) it takes for the gate to close after the signal has dropped below the threshold [5. 3000.].",
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
									"patching_rect" : [ 100.0, 60.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 32.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 2.0,
											"parameter_initial" : [ 5.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "GRel",
											"parameter_mmax" : 3000.0,
											"parameter_mmin" : 5.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "GRel",
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
									"varname" : "GRel"
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
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-110", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-110", 1 ]
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
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-26", 0 ]
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
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"order" : 0,
									"source" : [ "obj-43", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-43", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-47", 0 ]
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
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
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
									"destination" : [ "obj-26", 0 ],
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
					"patching_rect" : [ 400.0, 120.0, 130.0, 80.0 ],
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
					"patching_rect" : [ 260.0, 90.0, 33.0, 22.0 ],
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
						"rect" : [ 342.0, 100.0, 706.0, 345.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 590.0, 280.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.0, 280.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 220.0, 41.0, 22.0 ],
									"text" : "r #1B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 590.0, 220.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 520.0, 220.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 90.0, 78.0, 22.0 ],
									"text" : "mod_mult $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Scales the delay time modulation depth by a factor of four. With short delay times, this produces deep flanging sounds [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "MMult",
									"id" : "obj-33",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 340.0, 60.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 67.0, 10.0, 10.0 ],
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
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MMult",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "MMult",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "MMult"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 180.0, 104.0, 22.0 ],
									"text" : "mod_envelope $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 150.0, 84.0, 22.0 ],
									"text" : "mod_delay $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 120.0, 88.0, 22.0 ],
									"text" : "mod_phase $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 90.0, 76.0, 22.0 ],
									"text" : "mod_freq $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 150.0, 67.0, 22.0 ],
									"text" : "pictures $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"items" : [ "sine.svg", ",", "updown.svg", ",", "up.svg", ",", "down.svg", ",", "square.svg", ",", "random.svg" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 90.0, 99.0, 22.0 ],
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 120.0, 107.0, 22.0 ],
									"text" : "mod_waveform $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"activebgoncolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 0.0 ],
									"activetextcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activetextoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"automation" : "none",
									"automationon" : "none",
									"bgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
									"bgoncolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"id" : "obj-39",
									"ignoreclick" : 1,
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"labeltextcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"lcdbgcolor" : [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ],
									"lcdcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 90.0, 180.0, 30.0, 20.0 ],
									"pictures" : [ "sine.svg", "<none>" ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 10.0, 34.0, 28.0 ],
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
											"parameter_enum" : [ "none", "none" ],
											"parameter_invisible" : 2,
											"parameter_linknames" : 1,
											"parameter_longname" : "Display",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Display",
											"parameter_type" : 2
										}

									}
,
									"text" : " ",
									"textcolor" : [ 0.221327066888467, 0.221327006361825, 0.221327022178404, 1.0 ],
									"textoffcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"texton" : " ",
									"usepicture" : 1,
									"usesvgviewbox" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Display"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.125, 0.125, 0.125, 1.0 ],
									"annotation" : "Choose from one of the six different modulation waveforms including sine, triangle, sawtooth up, sawtooth down, square and noise [0 5].",
									"bordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"focusbordercolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 0.0 ],
									"hint" : "MWave",
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
									"patching_rect" : [ 50.0, 60.0, 40.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 30.0, -1.0, 15.0, 15.0 ],
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
											"parameter_enum" : [ "Sine", "Triangle", "Saw up", "Saw down", "Square", "Random" ],
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MWave",
											"parameter_mmax" : 5,
											"parameter_modmode" : 0,
											"parameter_shortname" : "MWave",
											"parameter_type" : 2
										}

									}
,
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"tricolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "MWave"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"id" : "obj-43",
									"maxclass" : "live.comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 40.0, 31.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, -3.0, 31.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : ""
										}

									}
,
									"text" : "Wave",
									"textcolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"textjustification" : 0
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Blend between the modulation oscillator and an envelope follower [0. 1.].",
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
									"patching_rect" : [ 290.0, 40.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 80.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "MEnv",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "MEnv",
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
									"varname" : "MEnv"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 220.0, 280.0, 142.0, 22.0 ],
									"restore" : 									{
										"Display" : [ 0.0 ],
										"MDel" : [ 0.0 ],
										"MEnv" : [ 0.0 ],
										"MFreq" : [ 2.0 ],
										"MMult" : [ 0.0 ],
										"MPha" : [ 90.0 ],
										"MWave" : [ 0.0 ]
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
									"patching_rect" : [ 170.0, 270.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 410.0, 280.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 410.0, 220.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This adjusts the amount of modulation that is applied to the delay time [0. 1.].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-53",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 250.0, 40.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 20.0, 40.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 2.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MDel",
											"parameter_mmax" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "MDel",
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
									"varname" : "MDel"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This adjusts the amount of offset in degrees between the waveforms for the left and right channel. At 180°, the channels are perfectly out of phase [0. 180.].",
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
									"patching_rect" : [ 210.0, 40.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 90.0, 0.0, 30.0, 36.0 ],
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
											"parameter_initial" : [ 90 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MPha",
											"parameter_mmax" : 180.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "MPha",
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
									"varname" : "MPha"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This sets the frequency of the modulation oscillator in Hz [0.01 40.]",
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
									"patching_rect" : [ 170.0, 40.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 50.0, 0.0, 30.0, 36.0 ],
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
											"parameter_initial" : [ 2 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "MFreq",
											"parameter_mmax" : 40.0,
											"parameter_mmin" : 0.01,
											"parameter_modmode" : 2,
											"parameter_shortname" : "MFreq",
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
									"varname" : "MFreq"
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
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-116", 0 ]
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
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-53", 0 ]
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
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
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
					"patching_rect" : [ 260.0, 120.0, 130.0, 80.0 ],
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
					"patching_rect" : [ 120.0, 90.0, 33.0, 22.0 ],
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
						"rect" : [ 358.0, 100.0, 564.0, 341.0 ],
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
									"id" : "obj-4",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 40.0, 20.0, 10.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 61.0, 24.0, 13.0, 5.0 ],
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
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "When enabled, the delay time of the right channel is set in accordance with the left channel and vice-versa.",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Link",
									"id" : "obj-58",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 170.0, 50.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 53.0, 19.5, 10.0, 10.0 ],
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
											"parameter_initial" : [ 1 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "Link",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_order" : -1,
											"parameter_shortname" : "Link",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Link"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 220.0, 50.0, 22.0 ],
									"text" : "s #1B2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 220.0, 50.0, 22.0 ],
									"text" : "s #1A2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 170.0, 41.0, 22.0 ],
									"text" : "r #1A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 450.0, 170.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "B"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 380.0, 170.0, 49.0, 22.0 ],
									"text" : "pvar 2",
									"varname" : "A"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 170.0, 43.0, 22.0 ],
									"text" : "clip $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "Applies the input gain to the dry signal as well, allowing to distort it for an authentic hardware feel [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Clip",
									"id" : "obj-17",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 140.0, 140.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.0, 66.0, 10.0, 10.0 ],
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
											"parameter_longname" : "Clip",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Clip",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Clip"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 140.0, 61.0, 22.0 ],
									"text" : "repitch $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "This causes a pitch variation when changing the delay time, similar to the behavior of hardware delay units. When disabled, changing the delay time creates a crossfade between the new and old delay times [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Repitch",
									"id" : "obj-7",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 170.0, 110.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 86.0, 26.0, 10.0, 10.0 ],
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
											"parameter_longname" : "Repitch",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Repitch",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Repitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 110.0, 65.0, 22.0 ],
									"text" : "fbinvert $1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"activebgoncolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"annotation" : "This inverts the feedback signal before adding it back to the input. This can change the sound significantly for short delay times [0/1].",
									"bgcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.6 ],
									"bgoncolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
									"hint" : "Invert",
									"id" : "obj-23",
									"inactivelcdcolor" : [ 0.325, 0.325, 0.325, 1.0 ],
									"lcdcolor" : [ 0.931948395395052, 0.771744459193783, 0.523883756405412, 1.0 ],
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 240.0, 50.0, 20.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 66.0, 10.0, 10.0 ],
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
											"parameter_longname" : "Invert",
											"parameter_mmax" : 1,
											"parameter_modmode" : 0,
											"parameter_shortname" : "Invert",
											"parameter_type" : 2
										}

									}
,
									"valuepopup" : 1,
									"valuepopuplabel" : 2,
									"varname" : "Invert"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "" ],
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
										"rect" : [ 59.0, 104.0, 254.0, 301.0 ],
										"gridonopen" : 2,
										"gridsize" : [ 10.0, 10.0 ],
										"gridsnaponopen" : 2,
										"objectsnaponopen" : 0,
										"subpatcher_template" : "Abl.EffectModules",
										"assistshowspatchername" : 0,
										"commentary" : "",
										"showcommentary" : 0,
										"integercoordinates" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-8",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 140.0, 230.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 140.0, 80.0, 59.0, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-5",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.0, 230.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 150.0, 32.0, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 180.0, 93.0, 22.0 ],
													"text" : "vexpr $f1*0.001"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 150.0, 69.0, 22.0 ],
													"text" : "pak 0. 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-69",
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
													"id" : "obj-70",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-71",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 230.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"order" : 2,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 3,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"order" : 0,
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 1,
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"order" : 0,
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"order" : 1,
													"source" : [ "obj-70", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "Abl.EffectModules",
												"default" : 												{
													"accentcolor" : [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
													"bgcolor" : [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
													"bgfillcolor" : 													{
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
									"patching_rect" : [ 90.0, 80.0, 99.0, 22.0 ],
									"text" : "p Sync"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 110.0, 71.0, 22.0 ],
									"text" : "delay $1 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 270.0, 270.0, 142.0, 22.0 ],
									"restore" : 									{
										"Clip" : [ 0.0 ],
										"DelL" : [ 374.999999999999943 ],
										"DelR" : [ 375.0 ],
										"Feed" : [ 0.5 ],
										"Input" : [ 0.0 ],
										"Invert" : [ 0.0 ],
										"Link" : [ 1.0 ],
										"Repitch" : [ 0.0 ]
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
									"patching_rect" : [ 200.0, 260.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 80.0, 74.0, 22.0 ],
									"text" : "feedback $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 170.0, 51.0, 22.0 ],
									"text" : "input $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 270.0, 220.0, 67.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 170.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "Sets the amount of each channel's output that is fed back to its input [0. 1.5].",
									"appearance" : 1,
									"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
									"dialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"fgdialcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"fontname" : "Ableton Sans Light",
									"id" : "obj-53",
									"maxclass" : "live.dial",
									"needlecolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"panelcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"parameter_enable" : 1,
									"patching_rect" : [ 200.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 72.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Feed",
											"parameter_mmax" : 1.5,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Feed",
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
									"varname" : "Feed"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This sets the delay time of the right channel in milliseconds [1. 2500.].",
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
									"patching_rect" : [ 130.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 72.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 2.0,
											"parameter_initial" : [ 375 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "DelR",
											"parameter_mmax" : 2500.0,
											"parameter_mmin" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "DelR",
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
									"varname" : "DelR"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This sets the delay time of the left channel in milliseconds [1. 2500.].",
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
									"patching_rect" : [ 90.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 0.0, 30.0, 36.0 ],
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
											"parameter_exponent" : 2.0,
											"parameter_initial" : [ 375 ],
											"parameter_initial_enable" : 1,
											"parameter_linknames" : 1,
											"parameter_longname" : "DelL",
											"parameter_mmax" : 2500.0,
											"parameter_mmin" : 1.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "DelL",
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
									"varname" : "DelL"
								}

							}
, 							{
								"box" : 								{
									"activedialcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 1.0 ],
									"activefgdialcolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 1.0 ],
									"activeneedlecolor" : [ 0.9, 0.9, 0.9, 1.0 ],
									"annotation" : "This sets the input gain in dB [-40. 40.].",
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
									"patching_rect" : [ 50.0, 30.0, 30.0, 36.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 40.0, 30.0, 36.0 ],
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
											"parameter_longname" : "Input",
											"parameter_mmax" : 40.0,
											"parameter_mmin" : -40.0,
											"parameter_modmode" : 2,
											"parameter_shortname" : "Input",
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
									"varname" : "Input"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 290.0, 50.0, 20.0, 10.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 42.0, 24.0, 13.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}
,
									"varname" : "Line[2]"
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
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-20", 0 ]
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
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-27", 0 ]
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
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 2 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-72", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-95", 0 ]
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
					"patching_rect" : [ 120.0, 120.0, 130.0, 80.0 ],
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
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
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
						"rect" : [ 70.0, 138.0, 664.0, 404.0 ],
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
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 140.0, 45.0, 22.0 ],
									"text" : "1 1 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 300.0, 30.0, 30.0 ],
									"varname" : "Line[10]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.0, 210.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 300.0, 30.0, 30.0 ],
									"varname" : "Line[8]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 530.0, 300.0, 30.0, 30.0 ],
									"varname" : "Line[9]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 190.0, 80.0, 62.0 ],
									"text" : "A hidden $1, B hidden $2, C hidden $3, D hidden $4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 260.0, 133.0, 22.0 ],
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
									"patching_rect" : [ 140.0, 140.0, 45.0, 22.0 ],
									"text" : "1 1 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 140.0, 45.0, 22.0 ],
									"text" : "1 0 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 140.0, 45.0, 22.0 ],
									"text" : "0 1 1 1"
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
									"patching_rect" : [ 90.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 520.0, 30.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 210.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 330.0, 210.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 250.0, 210.0, 55.0, 22.0 ],
									"text" : "hidden 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 250.0, 80.0, 79.0, 22.0 ],
									"text" : "sel 0 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 520.0, 80.0, 29.0, 22.0 ],
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
									"patching_rect" : [ 530.0, 210.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 410.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 370.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 330.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 290.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 250.0, 300.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 450.0, 300.0, 30.0, 30.0 ],
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
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
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
									"destination" : [ "obj-1", 0 ],
									"order" : 2,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 8,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 7,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 6,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 5,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 4,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 3,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
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
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 3 ]
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
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 3,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 2,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
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
					"patching_rect" : [ 430.0, 330.0, 199.0, 22.0 ],
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
					"patching_rect" : [ 530.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 5.0, 20.0 ],
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
					"patching_rect" : [ 510.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 69.0, 5.0, 48.0 ],
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
					"hidden" : 1,
					"id" : "obj-29",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 69.0, 24.0, 10.0 ],
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
					"id" : "obj-23",
					"linecolor" : [ 0.458595350062755, 0.458595237564901, 0.458595266962388, 0.33 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 45.0, 5.0, 72.0 ],
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
					"patching_rect" : [ 450.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 45.0, 24.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 280.0, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 24.25, 21.0, 92.75 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "A", "B", "C", "D" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "View",
							"parameter_mmax" : 3,
							"parameter_modmode" : 0,
							"parameter_shortname" : "View",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 9.0,
					"tabcolor" : [ 0.9, 0.9, 0.9, 0.5 ],
					"tabs" : [ "A", "B", "C", "D" ],
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
					"patching_rect" : [ 780.0, 110.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 700.0, 110.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 920.0, 430.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 920.0, 110.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"alias" : 					{
						"C::DRel" : "DRel",
						"C::Gate" : "Gate",
						"D::Width" : "Width",
						"B::MDel" : "MDel",
						"A::Clip" : "Clip",
						"D::Output" : "Output",
						"D::Location" : "Location",
						"D::Decay" : "Decay",
						"C::GRel" : "GRel",
						"A::Invert" : "Invert",
						"C::WAmt" : "WAmt",
						"B::MPha" : "MPha",
						"D::Mix" : "Mix",
						"A::DelL" : "DelL",
						"D::Channel" : "Channel",
						"B::MFreq" : "MFreq",
						"C::DThr" : "DThr",
						"C::NAmt" : "NAmt",
						"B::MEnv" : "MEnv",
						"A::Link" : "Link",
						"D::Reverb" : "Reverb",
						"B::Display" : "Display",
						"C::GThr" : "GThr",
						"C::WMor" : "WMor",
						"B::MWave" : "MWave",
						"A::Input" : "Input",
						"A::DelR" : "DelR",
						"D::DryWet" : "DryWet",
						"A::Repitch" : "Repitch",
						"A::Feed" : "Feed",
						"C::NMor" : "NMor",
						"B::MMult" : "MMult",
						"C::Duck" : "Duck"
					}
,
					"id" : "obj-154",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.0, 260.0, 190.0, 49.0 ],
					"priority" : 					{
						"A::Link" : -1
					}
,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.Echo",
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
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 375.0 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 1.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.0 ],
													"B::MEnv" : [ 0.0 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Stereo",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 345.170601423705534 ],
													"A::DelR" : [ 438.377316589627583 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.0 ],
													"B::MEnv" : [ 0.0 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Detune",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Noise",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "Wobble",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.401574803149606 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Gate",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 3000.0 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 1.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.401574803149606 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Wide",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.102362204724409 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Pingpong",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.173228346456693 ],
													"C::WMor" : [ 0.818897637795276 ],
													"D::Channel" : [ 1.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 0.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Reverb",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.173228346456693 ],
													"C::WMor" : [ 0.818897637795276 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.653543307086615 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Long",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 1.0 ],
													"A::DelL" : [ 31.939272822343316 ],
													"A::DelR" : [ 276.019945828651146 ],
													"A::Feed" : [ 0.901574803149605 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 1.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.00750201500403 ],
													"B::MEnv" : [ 0.653543307086613 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 1.0 ],
													"B::MPha" : [ 180.0 ],
													"B::MWave" : [ 5.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 332.557815115629751 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.377952755905511 ],
													"C::WMor" : [ 1.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.897637795275591 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 0.0 ],
													"D::Mix" : [ 0.389763779527559 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.259842519685041 ],
													"D::Width" : [ 2.0 ]
												}

											}

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "Abl.Echo",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Abl.Echo",
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
					"text" : "pattrstorage Abl.Echo @autorestore 0 @changemode 1 @outputmode 2 @savemode 0",
					"varname" : "Abl.Echo"
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
						"rect" : [ 59.0, 104.0, 197.0, 302.0 ],
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
									"patching_rect" : [ 130.0, 190.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 200.0, 390.0, 50.0, 22.0 ],
					"text" : "p Reset"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Resets all settings to default values",
					"bgcolor" : [ 0.125, 0.125, 0.125, 0.0 ],
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 8.0,
					"id" : "obj-14",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 360.0, 30.0, 20.0 ],
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
					"patching_rect" : [ 50.0, 26.0, 97.0, 27.0 ],
					"text" : "Abl.Echo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 23.0, 600.0, 33.0 ],
					"text" : "Modulation delay effect that lets you set the delay time on two independent delay lines, while giving you control over envelope and filter modulation - incorporating the algorithm from Ableton Live's native Echo device."
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
						"rect" : [ 102.0, 225.0, 193.0, 317.0 ],
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
									"patching_rect" : [ 40.0, 205.0, 60.0, 22.0 ],
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
									"patching_rect" : [ 40.0, 170.0, 99.0, 22.0 ],
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
									"patching_rect" : [ 40.0, 130.0, 99.0, 22.0 ],
									"text" : "abl.device.echo~"
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
									"patching_rect" : [ 40.0, 80.0, 99.0, 35.0 ],
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
									"patching_rect" : [ 90.0, 30.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 40.0, 250.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 80.0, 250.0, 56.0, 22.0 ],
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
					"patching_rect" : [ 50.0, 340.0, 79.0, 22.0 ],
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
					"patching_rect" : [ 110.0, 310.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 50.0, 110.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 50.0, 430.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 110.0, 380.0, 50.0, 10.0 ],
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
					"patching_rect" : [ 80.0, 400.0, 50.0, 10.0 ],
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
					"patching_rect" : [ 200.0, 440.0, 67.0, 22.0 ],
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
					"patching_rect" : [ 550.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 26.0, 6.0, 44.0 ],
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
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation output signal B [0. 1.]. Click to select which parameter controls this outlet. ",
					"id" : "obj-167",
					"items" : [ "(Mod", "Out", "B)", ",", "None", ",", "A::Input", ",", "A::DelL", ",", "A::DelR", ",", "A::Feed", ",", "B::MFreq", ",", "B::MPha", ",", "B::MDel", ",", "B::MEnv", ",", "C::GThr", ",", "C::GRel", ",", "C::DThr", ",", "C::DRel", ",", "C::NAmt", ",", "C::NMor", ",", "C::WAmt", ",", "C::WMor", ",", "D::Reverb", ",", "D::Decay", ",", "D::Width", ",", "D::Mix", ",", "D::Output" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 790.0, 300.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out B)", "None", "A::Input", "A::DelL", "A::DelR", "A::Feed", "B::MFreq", "B::MPha", "B::MDel", "B::MEnv", "C::GThr", "C::GRel", "C::DThr", "C::DRel", "C::NAmt", "C::NMor", "C::WAmt", "C::WMor", "D::Reverb", "D::Decay", "D::Width", "D::Mix", "D::Output" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutB",
							"parameter_mmax" : 22,
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
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation output signal A [0. 1.]. Click to select which parameter controls this outlet. ",
					"id" : "obj-52",
					"items" : [ "(Mod", "Out", "A)", ",", "None", ",", "A::Input", ",", "A::DelL", ",", "A::DelR", ",", "A::Feed", ",", "B::MFreq", ",", "B::MPha", ",", "B::MDel", ",", "B::MEnv", ",", "C::GThr", ",", "C::GRel", ",", "C::DThr", ",", "C::DRel", ",", "C::NAmt", ",", "C::NMor", ",", "C::WAmt", ",", "C::WMor", ",", "D::Reverb", ",", "D::Decay", ",", "D::Width", ",", "D::Mix", ",", "D::Output" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 700.0, 300.0, 50.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 110.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod Out A)", "None", "A::Input", "A::DelL", "A::DelR", "A::Feed", "B::MFreq", "B::MPha", "B::MDel", "B::MEnv", "C::GThr", "C::GRel", "C::DThr", "C::DRel", "C::NAmt", "C::NMor", "C::WAmt", "C::WMor", "D::Reverb", "D::Decay", "D::Width", "D::Mix", "D::Output" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModOutA",
							"parameter_mmax" : 22,
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
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation input signal B [0. 1.]. Click to select which parameter to control from this inlet.",
					"id" : "obj-50",
					"items" : [ "(Mod", "In", "B)", ",", "None", ",", "A::Input", ",", "A::DelL", ",", "A::DelR", ",", "A::Feed", ",", "B::MFreq", ",", "B::MPha", ",", "B::MDel", ",", "B::MEnv", ",", "C::GThr", ",", "C::GRel", ",", "C::DThr", ",", "C::DRel", ",", "C::NAmt", ",", "C::NMor", ",", "C::WAmt", ",", "C::WMor", ",", "D::Reverb", ",", "D::Decay", ",", "D::Width", ",", "D::Mix", ",", "D::Output" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 800.0, 150.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 104.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In B)", "None", "A::Input", "A::DelL", "A::DelR", "A::Feed", "B::MFreq", "B::MPha", "B::MDel", "B::MEnv", "C::GThr", "C::GRel", "C::DThr", "C::DRel", "C::NAmt", "C::NMor", "C::WAmt", "C::WMor", "D::Reverb", "D::Decay", "D::Width", "D::Mix", "D::Output" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInB",
							"parameter_mmax" : 22,
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
					"bgcolor" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color1" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 0.0 ],
					"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontname" : "Ableton Sans Medium",
					"fontsize" : 9.5,
					"hint" : "Modulation input signal A [0. 1.]. Click to select which parameter to control from this inlet.",
					"id" : "obj-49",
					"items" : [ "(Mod", "In", "A)", ",", "None", ",", "A::Input", ",", "A::DelL", ",", "A::DelR", ",", "A::Feed", ",", "B::MFreq", ",", "B::MPha", ",", "B::MDel", ",", "B::MEnv", ",", "C::GThr", ",", "C::GRel", ",", "C::DThr", ",", "C::DRel", ",", "C::NAmt", ",", "C::NMor", ",", "C::WAmt", ",", "C::WMor", ",", "D::Reverb", ",", "D::Decay", ",", "D::Width", ",", "D::Mix", ",", "D::Output" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 720.0, 150.0, 59.0, 20.0 ],
					"pattrmode" : 1,
					"presentation" : 1,
					"presentation_rect" : [ 54.0, -7.0, 10.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "(Mod In A)", "None", "A::Input", "A::DelL", "A::DelR", "A::Feed", "B::MFreq", "B::MPha", "B::MDel", "B::MEnv", "C::GThr", "C::GRel", "C::DThr", "C::DRel", "C::NAmt", "C::NMor", "C::WAmt", "C::WMor", "D::Reverb", "D::Decay", "D::Width", "D::Mix", "D::Output" ],
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "ModInA",
							"parameter_mmax" : 22,
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
					"patching_rect" : [ 990.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 1000.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 980.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 970.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 410.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 420.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 440.0, 440.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 410.0, 450.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 420.0, 450.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 430.0, 450.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 440.0, 450.0, 10.0, 10.0 ],
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
					"patching_rect" : [ 390.0, 440.0, 10.0, 20.0 ],
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
					"patching_rect" : [ 360.0, 440.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 4.0, 6.0, 160.0, 112.0 ],
					"proportion" : 0.5,
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
					"patching_rect" : [ 330.0, 440.0, 20.0, 20.0 ],
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
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
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
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-28", 2 ]
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
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 2 ],
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
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 2 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-55", 2 ]
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
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 1 ],
					"source" : [ "obj-64", 0 ]
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
					"destination" : [ "obj-154", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-70", 1 ]
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-77", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-77", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-77", 9 ]
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
			"obj-154" : [ "Abl.Echo", "Abl.Echo", 0 ],
			"obj-167" : [ "ModOutB", "ModOutB", -1 ],
			"obj-27::obj-116" : [ "Location", "Location", 0 ],
			"obj-27::obj-16" : [ "Mix", "Mix", 0 ],
			"obj-27::obj-18" : [ "Width", "Width", 0 ],
			"obj-27::obj-19" : [ "Output", "Output", 0 ],
			"obj-27::obj-22" : [ "DryWet", "DryWet", 0 ],
			"obj-27::obj-6" : [ "Reverb", "Reverb", 0 ],
			"obj-27::obj-8" : [ "Decay", "Decay", 0 ],
			"obj-27::obj-9" : [ "Channel", "Channel", 0 ],
			"obj-45" : [ "ModInALed", "ModInALed", 0 ],
			"obj-47" : [ "ModInBLed", "ModInBLed", 0 ],
			"obj-49" : [ "ModInA", "ModInA", -1 ],
			"obj-50" : [ "ModInB", "ModInB", -1 ],
			"obj-52" : [ "ModOutA", "ModOutA", -1 ],
			"obj-59" : [ "ModOutALed", "ModOutALed", 0 ],
			"obj-60" : [ "ModOutBLed", "ModOutBLed", 0 ],
			"obj-83::obj-17" : [ "Clip", "Clip", 0 ],
			"obj-83::obj-23" : [ "Invert", "Invert", 0 ],
			"obj-83::obj-53" : [ "Feed", "Feed", 0 ],
			"obj-83::obj-58" : [ "Link", "Link", -1 ],
			"obj-83::obj-6" : [ "Input", "Input", 0 ],
			"obj-83::obj-7" : [ "Repitch", "Repitch", 0 ],
			"obj-83::obj-8" : [ "DelL", "DelL", 0 ],
			"obj-83::obj-9" : [ "DelR", "DelR", 0 ],
			"obj-90::obj-116" : [ "MWave", "MWave", 0 ],
			"obj-90::obj-18" : [ "MEnv", "MEnv", 0 ],
			"obj-90::obj-33" : [ "MMult", "MMult", 0 ],
			"obj-90::obj-39" : [ "Display", "Display", 0 ],
			"obj-90::obj-53" : [ "MDel", "MDel", 0 ],
			"obj-90::obj-8" : [ "MFreq", "MFreq", 0 ],
			"obj-90::obj-9" : [ "MPha", "MPha", 0 ],
			"obj-92::obj-16" : [ "WAmt", "WAmt", 0 ],
			"obj-92::obj-18" : [ "NAmt", "NAmt", 0 ],
			"obj-92::obj-19" : [ "NMor", "NMor", 0 ],
			"obj-92::obj-3" : [ "WMor", "WMor", 0 ],
			"obj-92::obj-32" : [ "Ducking", "Ducking", 1 ],
			"obj-92::obj-34" : [ "Gate", "Gate", 1 ],
			"obj-92::obj-53" : [ "DThr", "DThr", 0 ],
			"obj-92::obj-6" : [ "GRel", "GRel", 0 ],
			"obj-92::obj-8" : [ "GThr", "GThr", 0 ],
			"obj-92::obj-9" : [ "DRel", "DRel", 0 ],
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
				"name" : "sine.svg",
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
						"Link" : 1.0,
						"ModInA" : 1.0,
						"ModInB" : 1.0,
						"ModOutA" : 1.0,
						"ModOutB" : 1.0,
						"Active" : 1.0,
						"Channel" : 0.0,
						"Clip" : 0.0,
						"DRel" : 364.093010681705096,
						"DThr" : 0.0,
						"Decay" : 0.5,
						"DelL" : 967.76057015167919,
						"DelR" : 967.76057015167919,
						"DryWet" : 0.0,
						"Feed" : 0.5,
						"GRel" : 5.0,
						"GThr" : 0.0,
						"Input" : 0.0,
						"Invert" : 0.0,
						"Location" : 1.0,
						"MDel" : 0.0,
						"MEnv" : 0.0,
						"MFreq" : 14.719072713838022,
						"MMult" : 0.0,
						"MPha" : 90.0,
						"MWave" : 0.0,
						"Mix" : 0.5,
						"NAmt" : 0.0,
						"NMor" : 0.0,
						"Output" : -7.957144340674513,
						"Repitch" : 0.0,
						"Reverb" : 0.0,
						"View" : 0.0,
						"WAmt" : 0.0,
						"WMor" : 0.0,
						"Width" : 1.0,
						"Ducking" : 0.0,
						"Gate" : 0.0,
						"blob" : 						{
							"Abl.Echo" : [ 								{
									"pattrstorage" : 									{
										"name" : "Abl.Echo",
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
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 375.0 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 1.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.0 ],
													"B::MEnv" : [ 0.0 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"2" : 											{
												"id" : 2,
												"name" : "Stereo",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 0.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 420.0 ],
													"A::DelR" : [ 455.0 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.0 ],
													"B::MEnv" : [ 0.0 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"3" : 											{
												"id" : 3,
												"name" : "Detune",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 1.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.0 ],
													"C::NMor" : [ 0.0 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"4" : 											{
												"id" : 4,
												"name" : "Noise",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.0 ],
													"C::WMor" : [ 0.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"5" : 											{
												"id" : 5,
												"name" : "Wobble",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 5.0 ],
													"C::GThr" : [ 0.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.401574803149606 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"6" : 											{
												"id" : 6,
												"name" : "Gate",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 2.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 3000.0 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 1.0 ],
													"C::NAmt" : [ 0.173228346456693 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.401574803149606 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 1.0 ]
												}

											}
,
											"7" : 											{
												"id" : 7,
												"name" : "Wide",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.070866141732283 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.102362204724409 ],
													"C::WMor" : [ 0.661417322834646 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"8" : 											{
												"id" : 8,
												"name" : "Pingpong",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.102362204724409 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.173228346456693 ],
													"C::WMor" : [ 0.818897637795276 ],
													"D::Channel" : [ 1.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 0.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.0 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"9" : 											{
												"id" : 9,
												"name" : "Reverb",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 0.0 ],
													"A::DelL" : [ 374.999999999999943 ],
													"A::DelR" : [ 390.379514217777 ],
													"A::Feed" : [ 0.5 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 0.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.013950027900056 ],
													"B::MEnv" : [ 0.173228346456693 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 0.0 ],
													"B::MPha" : [ 90.0 ],
													"B::MWave" : [ 0.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 72.034224068448154 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 0.0 ],
													"C::NAmt" : [ 0.102362204724409 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.173228346456693 ],
													"C::WMor" : [ 0.818897637795276 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.5 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 1.0 ],
													"D::Mix" : [ 0.5 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.653543307086615 ],
													"D::Width" : [ 2.0 ]
												}

											}
,
											"10" : 											{
												"id" : 10,
												"name" : "Long",
												"data" : 												{
													"Active" : [ 1.0 ],
													"ModInA" : [ 1 ],
													"ModInB" : [ 1 ],
													"ModOutA" : [ 1 ],
													"ModOutB" : [ 1 ],
													"View" : [ 3.0 ],
													"A::Clip" : [ 1.0 ],
													"A::DelL" : [ 31.939272822343316 ],
													"A::DelR" : [ 276.019945828651146 ],
													"A::Feed" : [ 0.901574803149605 ],
													"A::Input" : [ 0.0 ],
													"A::Invert" : [ 1.0 ],
													"A::Link" : [ 0.0 ],
													"A::Repitch" : [ 0.0 ],
													"B::Display" : [ 0.0 ],
													"B::MDel" : [ 0.00750201500403 ],
													"B::MEnv" : [ 0.653543307086613 ],
													"B::MFreq" : [ 2.0 ],
													"B::MMult" : [ 1.0 ],
													"B::MPha" : [ 180.0 ],
													"B::MWave" : [ 5.0 ],
													"C::DRel" : [ 100.0 ],
													"C::DThr" : [ 0.0 ],
													"C::Duck" : [ 0.0 ],
													"C::GRel" : [ 332.557815115629751 ],
													"C::GThr" : [ -5.0 ],
													"C::Gate" : [ 1.0 ],
													"C::NAmt" : [ 0.133858267716535 ],
													"C::NMor" : [ 0.511811023622048 ],
													"C::WAmt" : [ 0.377952755905511 ],
													"C::WMor" : [ 1.0 ],
													"D::Channel" : [ 0.0 ],
													"D::Decay" : [ 0.897637795275591 ],
													"D::DryWet" : [ 0.0 ],
													"D::Location" : [ 0.0 ],
													"D::Mix" : [ 0.389763779527559 ],
													"D::Output" : [ 0.000000000000001 ],
													"D::Reverb" : [ 0.259842519685041 ],
													"D::Width" : [ 2.0 ]
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
						"name" : "Abl.Echo",
						"origin" : "Abl.Echo~",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Link" : 1.0,
									"ModInA" : 1.0,
									"ModInB" : 1.0,
									"ModOutA" : 1.0,
									"ModOutB" : 1.0,
									"Active" : 1.0,
									"Channel" : 0.0,
									"Clip" : 0.0,
									"DRel" : 364.093010681705096,
									"DThr" : 0.0,
									"Decay" : 0.5,
									"DelL" : 967.76057015167919,
									"DelR" : 967.76057015167919,
									"DryWet" : 0.0,
									"Feed" : 0.5,
									"GRel" : 5.0,
									"GThr" : 0.0,
									"Input" : 0.0,
									"Invert" : 0.0,
									"Location" : 1.0,
									"MDel" : 0.0,
									"MEnv" : 0.0,
									"MFreq" : 14.719072713838022,
									"MMult" : 0.0,
									"MPha" : 90.0,
									"MWave" : 0.0,
									"Mix" : 0.5,
									"NAmt" : 0.0,
									"NMor" : 0.0,
									"Output" : -7.957144340674513,
									"Repitch" : 0.0,
									"Reverb" : 0.0,
									"View" : 0.0,
									"WAmt" : 0.0,
									"WMor" : 0.0,
									"Width" : 1.0,
									"Ducking" : 0.0,
									"Gate" : 0.0,
									"blob" : 									{
										"Abl.Echo" : [ 											{
												"pattrstorage" : 												{
													"name" : "Abl.Echo",
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
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 375.0 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 1.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.0 ],
																"B::MEnv" : [ 0.0 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 5.0 ],
																"C::GThr" : [ 0.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.0 ],
																"C::NMor" : [ 0.0 ],
																"C::WAmt" : [ 0.0 ],
																"C::WMor" : [ 0.0 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"2" : 														{
															"id" : 2,
															"name" : "Stereo",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 0.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 420.0 ],
																"A::DelR" : [ 455.0 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.0 ],
																"B::MEnv" : [ 0.0 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 5.0 ],
																"C::GThr" : [ 0.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.0 ],
																"C::NMor" : [ 0.0 ],
																"C::WAmt" : [ 0.0 ],
																"C::WMor" : [ 0.0 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"3" : 														{
															"id" : 3,
															"name" : "Detune",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 1.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 5.0 ],
																"C::GThr" : [ 0.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.0 ],
																"C::NMor" : [ 0.0 ],
																"C::WAmt" : [ 0.0 ],
																"C::WMor" : [ 0.0 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"4" : 														{
															"id" : 4,
															"name" : "Noise",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 2.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 5.0 ],
																"C::GThr" : [ 0.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.173228346456693 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.0 ],
																"C::WMor" : [ 0.0 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"5" : 														{
															"id" : 5,
															"name" : "Wobble",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 2.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 5.0 ],
																"C::GThr" : [ 0.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.173228346456693 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.401574803149606 ],
																"C::WMor" : [ 0.661417322834646 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"6" : 														{
															"id" : 6,
															"name" : "Gate",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 2.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 3000.0 ],
																"C::GThr" : [ -5.0 ],
																"C::Gate" : [ 1.0 ],
																"C::NAmt" : [ 0.173228346456693 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.401574803149606 ],
																"C::WMor" : [ 0.661417322834646 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 1.0 ]
															}

														}
,
														"7" : 														{
															"id" : 7,
															"name" : "Wide",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 3.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 72.034224068448154 ],
																"C::GThr" : [ -5.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.070866141732283 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.102362204724409 ],
																"C::WMor" : [ 0.661417322834646 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 2.0 ]
															}

														}
,
														"8" : 														{
															"id" : 8,
															"name" : "Pingpong",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 3.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 72.034224068448154 ],
																"C::GThr" : [ -5.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.102362204724409 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.173228346456693 ],
																"C::WMor" : [ 0.818897637795276 ],
																"D::Channel" : [ 1.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 0.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.0 ],
																"D::Width" : [ 2.0 ]
															}

														}
,
														"9" : 														{
															"id" : 9,
															"name" : "Reverb",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 3.0 ],
																"A::Clip" : [ 0.0 ],
																"A::DelL" : [ 374.999999999999943 ],
																"A::DelR" : [ 390.379514217777 ],
																"A::Feed" : [ 0.5 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 0.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.013950027900056 ],
																"B::MEnv" : [ 0.173228346456693 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 0.0 ],
																"B::MPha" : [ 90.0 ],
																"B::MWave" : [ 0.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 72.034224068448154 ],
																"C::GThr" : [ -5.0 ],
																"C::Gate" : [ 0.0 ],
																"C::NAmt" : [ 0.102362204724409 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.173228346456693 ],
																"C::WMor" : [ 0.818897637795276 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.5 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 1.0 ],
																"D::Mix" : [ 0.5 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.653543307086615 ],
																"D::Width" : [ 2.0 ]
															}

														}
,
														"10" : 														{
															"id" : 10,
															"name" : "Long",
															"data" : 															{
																"Active" : [ 1.0 ],
																"ModInA" : [ 1 ],
																"ModInB" : [ 1 ],
																"ModOutA" : [ 1 ],
																"ModOutB" : [ 1 ],
																"View" : [ 3.0 ],
																"A::Clip" : [ 1.0 ],
																"A::DelL" : [ 31.939272822343316 ],
																"A::DelR" : [ 276.019945828651146 ],
																"A::Feed" : [ 0.901574803149605 ],
																"A::Input" : [ 0.0 ],
																"A::Invert" : [ 1.0 ],
																"A::Link" : [ 0.0 ],
																"A::Repitch" : [ 0.0 ],
																"B::Display" : [ 0.0 ],
																"B::MDel" : [ 0.00750201500403 ],
																"B::MEnv" : [ 0.653543307086613 ],
																"B::MFreq" : [ 2.0 ],
																"B::MMult" : [ 1.0 ],
																"B::MPha" : [ 180.0 ],
																"B::MWave" : [ 5.0 ],
																"C::DRel" : [ 100.0 ],
																"C::DThr" : [ 0.0 ],
																"C::Duck" : [ 0.0 ],
																"C::GRel" : [ 332.557815115629751 ],
																"C::GThr" : [ -5.0 ],
																"C::Gate" : [ 1.0 ],
																"C::NAmt" : [ 0.133858267716535 ],
																"C::NMor" : [ 0.511811023622048 ],
																"C::WAmt" : [ 0.377952755905511 ],
																"C::WMor" : [ 1.0 ],
																"D::Channel" : [ 0.0 ],
																"D::Decay" : [ 0.897637795275591 ],
																"D::DryWet" : [ 0.0 ],
																"D::Location" : [ 0.0 ],
																"D::Mix" : [ 0.389763779527559 ],
																"D::Output" : [ 0.000000000000001 ],
																"D::Reverb" : [ 0.259842519685041 ],
																"D::Width" : [ 2.0 ]
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
							"name" : "Abl.Echo",
							"filename" : "Abl.Echo.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "e4f282b45ac4aa84d28e9de762d5a11b"
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
