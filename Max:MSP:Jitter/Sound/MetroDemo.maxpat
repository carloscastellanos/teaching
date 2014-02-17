{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 32.0, 100.0, 601.0, 612.0 ],
		"bglocked" : 0,
		"defrect" : [ 32.0, 100.0, 601.0, 612.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Version2",
					"numinlets" : 0,
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"bgcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"patching_rect" : [ 467.0, 574.0, 92.0, 25.0 ],
					"id" : "obj-17",
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Charcoal CY",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 660.0, 85.0, 636.0, 580.0 ],
						"bglocked" : 0,
						"defrect" : [ 660.0, 85.0, 636.0, 580.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 238.0, 521.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-2",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 309.0, 282.0, 46.0, 31.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-4",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 451.0, 268.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-5",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1 * 12 + 1",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 1,
									"patching_rect" : [ 475.0, 200.0, 129.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 399.0, 335.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-7",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"patching_rect" : [ 261.0, 358.0, 33.0, 31.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"numinlets" : 2,
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"patching_rect" : [ 335.0, 415.0, 58.0, 31.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-9",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 12",
									"numinlets" : 2,
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"patching_rect" : [ 126.0, 293.0, 84.0, 31.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-10",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 249.0, 400.0, 50.0, 23.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-11",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 147.0, 463.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 181.0, 490.0, 36.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 431.0, 27.0, 27.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 329.0, 71.0, 49.0, 19.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-15",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.5",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 329.0, 92.0, 32.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-16",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr 60. / $f1 * 1000.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 329.0, 50.0, 115.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0",
									"numinlets" : 2,
									"fontsize" : 14.0,
									"numoutlets" : 1,
									"patching_rect" : [ 382.0, 293.0, 75.0, 25.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-18",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 475.0, 174.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-19",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 13",
									"numinlets" : 2,
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"patching_rect" : [ 382.0, 231.0, 112.0, 31.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-20",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 382.0, 267.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-21",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 433.0, 432.0, 50.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-22",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 510.0, 429.0, 57.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-23",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numinlets" : 3,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 335.0, 507.0, 162.0, 31.0 ],
									"id" : "obj-24",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 122 500",
									"numinlets" : 3,
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"patching_rect" : [ 335.0, 462.0, 180.0, 31.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-25",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 280.0, 33.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-26",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 10.",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 280.0, 32.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-27",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 20.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 19.0, 242.0, 88.0, 33.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-28",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"min" : 200.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 13.0, 48.0, 220.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"size" : 2801.0,
									"orientation" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"textcolor" : [ 0.72549, 0.976471, 0.803922, 1.0 ],
									"numinlets" : 1,
									"fontface" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.062745, 0.058824, 0.058824, 1.0 ],
									"patching_rect" : [ 329.0, 16.0, 89.0, 31.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-30",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"textcolor" : [ 0.596078, 0.894118, 0.921569, 1.0 ],
									"numinlets" : 1,
									"fontface" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"bgcolor" : [ 0.752941, 0.341176, 0.427451, 1.0 ],
									"patching_rect" : [ 329.0, 129.0, 85.0, 25.0 ],
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-32",
									"minimum" : 5,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 268.0, 119.0, 42.0, 42.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "led",
									"numinlets" : 1,
									"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
									"blinktime" : 100,
									"numoutlets" : 1,
									"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
									"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
									"patching_rect" : [ 330.0, 230.0, 17.0, 17.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 1000",
									"numinlets" : 2,
									"fontsize" : 14.0,
									"numoutlets" : 1,
									"patching_rect" : [ 330.0, 182.0, 100.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-35",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "BPM",
									"numinlets" : 1,
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"patching_rect" : [ 267.0, 20.0, 51.0, 25.0 ],
									"id" : "obj-36",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "milliseconds",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patching_rect" : [ 342.0, 155.0, 71.0, 19.0 ],
									"id" : "obj-37",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ON/OFF",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 126.0, 76.0, 27.0 ],
									"id" : "obj-38",
									"fontname" : "Courier New"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 1 3 5 7 9 11",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 7,
									"patching_rect" : [ 126.0, 332.0, 122.0, 19.0 ],
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"id" : "obj-39",
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lowest note",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"patching_rect" : [ 503.0, 269.0, 100.0, 23.0 ],
									"id" : "obj-40",
									"fontname" : "Geneva"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [ 505.5, 499.5, 416.0, 499.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 173.0, 420.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 391.5, 366.0, 383.5, 366.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 190.5, 551.0, 302.0, 551.0, 302.0, 221.0, 391.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 270.5, 394.0, 344.5, 394.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 277.5, 176.0, 339.5, 176.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 63.5, 305.0, 116.0, 305.0, 116.0, 11.0, 338.5, 11.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 190.5, 513.0, 247.5, 513.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 6 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 353.0, 270.5, 353.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 6 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 374.0, 258.5, 374.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 188.5, 471.0, 207.5, 471.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 156.0, 481.0, 190.5, 481.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 184.0, 429.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 3 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 187.0, 428.0, 188.5, 428.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 4 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 5 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 391.5, 326.0, 215.0, 326.0, 215.0, 279.0, 135.5, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 276.0, 63.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 128.0, 479.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 502.0, 33.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 161.0, 443.0, 27.0, 27.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 261.0, 90.0, 49.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-4",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.5",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 261.0, 111.0, 32.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-5",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr 60. / $f1 * 1000.",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 261.0, 69.0, 115.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 312.0, 377.0, 50.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-7",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 12",
					"numinlets" : 2,
					"fontsize" : 14.0,
					"numoutlets" : 1,
					"patching_rect" : [ 312.0, 342.0, 53.0, 25.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-8",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 420.0, 242.0, 50.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-9",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "random 13",
					"numinlets" : 2,
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"patching_rect" : [ 312.0, 272.0, 127.0, 31.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-10",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 312.0, 312.0, 50.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-11",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 346.0, 410.0, 50.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-12",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 429.0, 410.0, 57.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numinlets" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 263.0, 488.0, 162.0, 31.0 ],
					"id" : "obj-14",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 120 500",
					"numinlets" : 3,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"patching_rect" : [ 263.0, 443.0, 185.0, 31.0 ],
					"outlettype" : [ "float", "float" ],
					"id" : "obj-15",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 53.0, 300.0, 33.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-16",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 18.0, 261.0, 88.0, 33.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-18",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"min" : 200.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 18.0, 33.0, 48.0, 220.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"size" : 2801.0,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"textcolor" : [ 0.72549, 0.976471, 0.803922, 1.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.062745, 0.058824, 0.058824, 1.0 ],
					"patching_rect" : [ 261.0, 35.0, 89.0, 31.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-20",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"textcolor" : [ 0.596078, 0.894118, 0.921569, 1.0 ],
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"bgcolor" : [ 0.752941, 0.341176, 0.427451, 1.0 ],
					"patching_rect" : [ 261.0, 148.0, 85.0, 25.0 ],
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-22",
					"minimum" : 5,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 216.0, 149.0, 42.0, 42.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"numinlets" : 1,
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"blinktime" : 100,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"patching_rect" : [ 263.0, 243.0, 17.0, 17.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 1000",
					"numinlets" : 2,
					"fontsize" : 14.0,
					"numoutlets" : 1,
					"patching_rect" : [ 263.0, 210.0, 100.0, 25.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-25",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "BPM",
					"numinlets" : 1,
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 39.0, 51.0, 25.0 ],
					"id" : "obj-26",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "milliseconds",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 174.0, 71.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ON/OFF",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 155.0, 77.0, 27.0 ],
					"id" : "obj-28",
					"fontname" : "Courier New"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 1 4 6 9 11 13 16 18 21 23",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 11,
					"patching_rect" : [ 95.0, 381.0, 161.0, 19.0 ],
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"id" : "obj-29",
					"fontname" : "Geneva"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 27.5, 296.0, 62.5, 296.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 321.5, 368.0, 104.5, 368.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 7 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 6 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 5 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 4 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 3 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 440.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 166.0, 441.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 8 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 9 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 137.0, 497.0, 172.5, 497.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 483.0, 186.5, 483.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 324.0, 115.0, 324.0, 115.0, 30.0, 270.5, 30.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.5, 542.0, 255.0, 542.0, 255.0, 262.0, 321.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [ 270.5, 192.0, 353.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 438.5, 480.5, 344.0, 480.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 10 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 246.5, 421.0, 272.5, 421.0 ]
				}

			}
 ]
	}

}
