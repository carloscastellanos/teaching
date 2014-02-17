{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 181.0, 44.0, 958.0, 673.0 ],
		"bglocked" : 0,
		"defrect" : [ 181.0, 44.0, 958.0, 673.0 ],
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
					"maxclass" : "levelmeter~",
					"presentation_rect" : [ 35.0, 543.0, 0.0, 0.0 ],
					"patching_rect" : [ 37.0, 542.0, 64.0, 32.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This patch is extrapolated from the MSP Tutorial \"04. Routing signals\", where ramping through the phase of a 0ƒ cosine wave (cycle~), triangle wave or sawtooth (phasor~) causes a glissando-like deviation around a center frequency..\n\nAdditionally, a live source input has been added, turning the patch into a variable carrier ring modulator ,which is inturn being fed through a comb filter (teeth~).  Check out the presets!!",
					"linecount" : 10,
					"fontsize" : 12.0,
					"patching_rect" : [ 626.0, 23.0, 319.0, 144.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"patching_rect" : [ 282.0, 99.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-106",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"fontsize" : 12.0,
					"patching_rect" : [ 217.0, 98.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-104",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"fontsize" : 12.0,
					"patching_rect" : [ 152.0, 97.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-103",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"maximum" : 1.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "phase mod input level",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 68.0, 497.0, 90.0, 34.0 ],
					"numinlets" : 1,
					"id" : "obj-102",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mic input level",
					"fontsize" : 12.0,
					"patching_rect" : [ 428.0, 427.0, 86.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-101",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "levelmeter~",
					"patching_rect" : [ 249.0, 442.0, 64.0, 32.0 ],
					"numinlets" : 1,
					"id" : "obj-100",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ramp val",
					"fontsize" : 9.0,
					"patching_rect" : [ 123.0, 393.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-99",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 260.0, 602.0, 45.0, 45.0 ],
					"numinlets" : 2,
					"id" : "obj-97",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~",
					"fontsize" : 10.348152,
					"patching_rect" : [ 319.0, 417.0, 46.941177, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-96",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.5",
					"fontsize" : 9.0,
					"patching_rect" : [ 297.0, 546.0, 41.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-21",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"fontsize" : 9.0,
					"patching_rect" : [ 251.0, 239.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-23",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontsize" : 9.0,
					"patching_rect" : [ 218.0, 239.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-24",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"fontsize" : 9.0,
					"patching_rect" : [ 234.0, 239.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-25",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate~ 3",
					"fontsize" : 9.0,
					"patching_rect" : [ 164.0, 266.0, 43.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"fontsize" : 10.0,
					"patching_rect" : [ 246.0, 293.0, 45.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~",
					"fontsize" : 10.0,
					"patching_rect" : [ 183.0, 293.0, 51.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-28",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 680.0, 589.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.5",
					"fontsize" : 9.0,
					"patching_rect" : [ 612.0, 613.0, 41.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "clip~ -1. 1.",
					"fontsize" : 9.0,
					"patching_rect" : [ 612.0, 588.0, 60.0, 17.0 ],
					"numinlets" : 3,
					"id" : "obj-31",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 880.0, 467.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 827.0, 467.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 774.0, 467.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-34",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "depth",
					"fontsize" : 9.0,
					"patching_rect" : [ 607.0, 451.0, 32.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delay",
					"fontsize" : 9.0,
					"patching_rect" : [ 722.0, 453.0, 32.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 667.0, 466.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 603.0, 467.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 9.0,
					"patching_rect" : [ 668.0, 511.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-39",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 721.0, 467.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"fontsize" : 9.0,
					"patching_rect" : [ 668.0, 488.0, 38.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-41",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~",
					"fontsize" : 9.0,
					"patching_rect" : [ 721.0, 493.0, 27.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rate",
					"fontsize" : 9.0,
					"patching_rect" : [ 671.0, 453.0, 27.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"fontsize" : 9.0,
					"patching_rect" : [ 778.0, 453.0, 26.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ff",
					"fontsize" : 9.0,
					"patching_rect" : [ 832.0, 453.0, 16.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fb",
					"fontsize" : 9.0,
					"patching_rect" : [ 884.0, 453.0, 17.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "teeth~ 100.",
					"fontsize" : 9.0,
					"patching_rect" : [ 612.0, 562.0, 155.0, 17.0 ],
					"numinlets" : 6,
					"id" : "obj-47",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 9.0,
					"patching_rect" : [ 586.0, 523.0, 32.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-48",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"fontsize" : 9.0,
					"patching_rect" : [ 641.0, 387.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-49",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• adc & center freq",
					"fontsize" : 9.0,
					"patching_rect" : [ 665.0, 389.0, 100.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-50",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• adc",
					"fontsize" : 9.0,
					"patching_rect" : [ 638.0, 347.0, 122.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-51",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• nothing",
					"fontsize" : 9.0,
					"patching_rect" : [ 621.0, 322.0, 100.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-52",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 9.0,
					"patching_rect" : [ 599.0, 321.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-53",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "selector~ 3 1",
					"fontsize" : 9.0,
					"patching_rect" : [ 636.0, 427.0, 245.0, 17.0 ],
					"numinlets" : 4,
					"id" : "obj-54",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontsize" : 9.0,
					"patching_rect" : [ 613.0, 345.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-55",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"fontsize" : 9.0,
					"patching_rect" : [ 627.0, 367.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-56",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 14.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.756863, 0.329412, 0.843137, 1.0 ],
					"patching_rect" : [ 155.0, 495.0, 45.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.5",
					"fontsize" : 9.0,
					"patching_rect" : [ 245.0, 545.0, 41.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-58",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"mode" : 2,
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"sig" : 0.0,
					"bgcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 212.0, 375.0, 102.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-59",
					"interval" : 400.0,
					"numoutlets" : 2,
					"ft1" : 5.0,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 424.0, 105.0, 16.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-60",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 424.0, 82.0, 46.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-61",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"patching_rect" : [ 424.0, 130.0, 87.0, 28.0 ],
					"margin" : 4,
					"numinlets" : 1,
					"id" : "obj-62",
					"bubblesize" : 8,
					"numoutlets" : 4,
					"spacing" : 2,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-83", "flonum", "float", 80.0, 5, "obj-80", "flonum", "float", 680.0, 5, "obj-78", "flonum", "float", 0.005, 5, "obj-76", "flonum", "float", 0.507, 5, "obj-73", "number", "int", 71, 5, "obj-68", "flonum", "float", 0.05, 5, "obj-63", "flonum", "float", 0.0, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.6, 5, "obj-40", "flonum", "float", 320.0, 5, "obj-38", "flonum", "float", 0.24, 5, "obj-37", "flonum", "float", 0.02, 5, "obj-34", "flonum", "float", 0.58, 5, "obj-33", "flonum", "float", 0.31, 5, "obj-32", "flonum", "float", 0.81, 5, "obj-29", "flonum", "float", 0.55, 5, "obj-103", "flonum", "float", 0.5, 5, "obj-104", "flonum", "float", 0.7, 5, "obj-106", "number", "int", 21 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-83", "flonum", "float", 1045.339966, 5, "obj-80", "flonum", "float", 1109.0, 5, "obj-78", "flonum", "float", 0.71, 5, "obj-76", "flonum", "float", 1.7, 5, "obj-73", "number", "int", 1899, 5, "obj-68", "flonum", "float", 1.26, 5, "obj-63", "flonum", "float", 7.7, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 2.63 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 1106.0, 5, "obj-78", "flonum", "float", 0.49, 5, "obj-76", "flonum", "float", 1.58, 5, "obj-73", "number", "int", 876, 5, "obj-68", "flonum", "float", 1.24, 5, "obj-63", "flonum", "float", 7.7, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 2.63 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 974.0, 5, "obj-78", "flonum", "float", 0.74, 5, "obj-76", "flonum", "float", 0.76, 5, "obj-73", "number", "int", 341, 5, "obj-68", "flonum", "float", 1.12, 5, "obj-63", "flonum", "float", 2.71, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 2.36 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 1106.0, 5, "obj-78", "flonum", "float", 0.91, 5, "obj-76", "flonum", "float", 1.01, 5, "obj-73", "number", "int", 846, 5, "obj-68", "flonum", "float", 1.24, 5, "obj-63", "flonum", "float", 7.7, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 2.63, 5, "obj-40", "flonum", "float", 10.0, 5, "obj-38", "flonum", "float", 1.1, 5, "obj-37", "flonum", "float", 1.43, 5, "obj-34", "flonum", "float", 0.79, 5, "obj-33", "flonum", "float", 0.99, 5, "obj-32", "flonum", "float", 0.09, 5, "obj-29", "flonum", "float", 0.55 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 2707.0, 5, "obj-78", "flonum", "float", 0.43, 5, "obj-76", "flonum", "float", 0.84, 5, "obj-73", "number", "int", 1388, 5, "obj-68", "flonum", "float", 2.67, 5, "obj-63", "flonum", "float", 4.5, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.87, 5, "obj-40", "flonum", "float", 28.41, 5, "obj-38", "flonum", "float", 1.22, 5, "obj-37", "flonum", "float", 23.0, 5, "obj-34", "flonum", "float", 1.11, 5, "obj-33", "flonum", "float", 2.07, 5, "obj-32", "flonum", "float", 0.36, 5, "obj-29", "flonum", "float", 0.55 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 787.0, 5, "obj-78", "flonum", "float", 0.74, 5, "obj-76", "flonum", "float", 0.78, 5, "obj-73", "number", "int", 2970, 5, "obj-68", "flonum", "float", 2.67, 5, "obj-63", "flonum", "float", 3.15, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.6, 5, "obj-40", "flonum", "float", 320.0, 5, "obj-38", "flonum", "float", 0.24, 5, "obj-37", "flonum", "float", 0.02, 5, "obj-34", "flonum", "float", 0.58, 5, "obj-33", "flonum", "float", 0.31, 5, "obj-32", "flonum", "float", 0.81, 5, "obj-29", "flonum", "float", 0.55 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 1205.0, 5, "obj-78", "flonum", "float", 0.53, 5, "obj-76", "flonum", "float", 1.65, 5, "obj-73", "number", "int", 2910, 5, "obj-68", "flonum", "float", 2.67, 5, "obj-63", "flonum", "float", 3.15, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.9, 5, "obj-40", "flonum", "float", 22.18, 5, "obj-38", "flonum", "float", 1.17, 5, "obj-37", "flonum", "float", 122.0, 5, "obj-34", "flonum", "float", 1.13, 5, "obj-33", "flonum", "float", 2.87, 5, "obj-32", "flonum", "float", 0.79, 5, "obj-29", "flonum", "float", 1.14 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-83", "flonum", "float", 887.059998, 5, "obj-80", "flonum", "float", 168.0, 5, "obj-78", "flonum", "float", 0.7, 5, "obj-76", "flonum", "float", 0.73, 5, "obj-73", "number", "int", 2301, 5, "obj-68", "flonum", "float", 2.67, 5, "obj-63", "flonum", "float", 3.15, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.6, 5, "obj-40", "flonum", "float", 12.59, 5, "obj-38", "flonum", "float", 16.870001, 5, "obj-37", "flonum", "float", 0.54, 5, "obj-34", "flonum", "float", 0.58, 5, "obj-33", "flonum", "float", 0.85, 5, "obj-32", "flonum", "float", 0.76, 5, "obj-29", "flonum", "float", 0.55 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-83", "flonum", "float", 95.0, 5, "obj-80", "flonum", "float", 246.0, 5, "obj-78", "flonum", "float", 0.27, 5, "obj-76", "flonum", "float", 1.19, 5, "obj-73", "number", "int", 4274, 5, "obj-68", "flonum", "float", 2.07, 5, "obj-63", "flonum", "float", 3.15, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.04, 5, "obj-40", "flonum", "float", 4.0, 5, "obj-38", "flonum", "float", 0.04, 5, "obj-37", "flonum", "float", 3.55, 5, "obj-34", "flonum", "float", 0.62, 5, "obj-33", "flonum", "float", 0.01, 5, "obj-32", "flonum", "float", 0.42, 5, "obj-29", "flonum", "float", 1.8 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-83", "flonum", "float", 114.0, 5, "obj-80", "flonum", "float", 181.0, 5, "obj-78", "flonum", "float", 0.43, 5, "obj-76", "flonum", "float", 0.67, 5, "obj-73", "number", "int", 801, 5, "obj-68", "flonum", "float", 2.67, 5, "obj-63", "flonum", "float", 3.15, 5, "obj-59", "number~", "list", 0.0, 5, "obj-57", "flonum", "float", 1.6, 5, "obj-40", "flonum", "float", 14.21, 5, "obj-38", "flonum", "float", 14.0, 5, "obj-37", "flonum", "float", 33.0, 5, "obj-34", "flonum", "float", 0.69, 5, "obj-33", "flonum", "float", 0.31, 5, "obj-32", "flonum", "float", 0.81, 5, "obj-29", "flonum", "float", 0.66 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 14.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.756863, 0.329412, 0.843137, 1.0 ],
					"patching_rect" : [ 378.0, 425.0, 46.0, 23.0 ],
					"numinlets" : 1,
					"id" : "obj-63",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.9",
					"fontsize" : 10.0,
					"patching_rect" : [ 319.0, 459.0, 50.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-64",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.75",
					"fontsize" : 10.0,
					"patching_rect" : [ 245.0, 491.0, 51.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-65",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "duration (domain)",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 281.0, 69.0, 55.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-66",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "phase end",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 219.0, 69.0, 31.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-67",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 127.0, 375.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-68",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "45",
					"fontsize" : 9.0,
					"patching_rect" : [ 187.0, 381.0, 20.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-69",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~ 0.15",
					"fontsize" : 10.0,
					"patching_rect" : [ 127.0, 415.0, 70.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-70",
					"numoutlets" : 2,
					"fontname" : "Courier",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~",
					"fontsize" : 9.0,
					"patching_rect" : [ 53.0, 339.0, 27.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-71",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0. 0. 0",
					"fontsize" : 9.0,
					"patching_rect" : [ 152.0, 187.0, 140.0, 17.0 ],
					"numinlets" : 3,
					"id" : "obj-72",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 282.0, 145.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-73",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 50",
					"fontsize" : 9.0,
					"patching_rect" : [ 282.0, 124.0, 29.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-74",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.5",
					"fontsize" : 9.0,
					"patching_rect" : [ 217.0, 145.0, 32.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-75",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 217.0, 167.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-76",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.01",
					"fontsize" : 9.0,
					"patching_rect" : [ 217.0, 124.0, 39.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-77",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 152.0, 145.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-78",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 0.01",
					"fontsize" : 9.0,
					"patching_rect" : [ 152.0, 124.0, 39.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-79",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 53.0, 306.0, 52.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-80",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 100",
					"fontsize" : 10.0,
					"patching_rect" : [ 53.0, 379.0, 69.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-81",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.15",
					"fontsize" : 10.0,
					"patching_rect" : [ 53.0, 443.0, 84.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-82",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 197.0, 322.0, 67.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-83",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 102.0, 76.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-84",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 341.0, 88.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-85",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1, $2 $3",
					"fontsize" : 10.0,
					"patching_rect" : [ 152.0, 213.0, 63.0, 14.0 ],
					"numinlets" : 2,
					"id" : "obj-86",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "triangle~",
					"fontsize" : 10.0,
					"patching_rect" : [ 119.0, 294.0, 63.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-87",
					"numoutlets" : 1,
					"fontname" : "Courier",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"fontsize" : 10.0,
					"patching_rect" : [ 152.0, 233.0, 39.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-88",
					"numoutlets" : 2,
					"fontname" : "Courier",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "phase start",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 154.0, 69.0, 36.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-89",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "line~ ramps through wave cycle from start to end",
					"linecount" : 4,
					"fontsize" : 9.0,
					"patching_rect" : [ 40.0, 210.0, 66.0, 48.0 ],
					"numinlets" : 1,
					"id" : "obj-90",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this depth factor is the amplitude of deviation from the center frequency",
					"linecount" : 4,
					"fontsize" : 9.0,
					"patching_rect" : [ 266.0, 322.0, 104.0, 48.0 ],
					"numinlets" : 1,
					"id" : "obj-91",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "center frequency",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 55.0, 281.0, 50.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-92",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• center freq",
					"fontsize" : 9.0,
					"patching_rect" : [ 654.0, 369.0, 100.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-93",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "select a wave cycle type: 1=triangle, 2=sawtooth, 3=sine",
					"linecount" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 274.0, 240.0, 125.0, 38.0 ],
					"numinlets" : 1,
					"id" : "obj-94",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-97", 1 ],
					"hidden" : 0,
					"midpoints" : [ 621.5, 639.0, 458.5, 639.0, 458.5, 592.0, 295.5, 592.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [ 621.5, 639.0, 445.5, 639.0, 445.5, 592.0, 269.5, 592.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 500.5, 46.5, 500.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [ 328.5, 438.0, 258.5, 438.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-97", 1 ],
					"hidden" : 0,
					"midpoints" : [ 306.5, 582.0, 295.5, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 581.5, 269.5, 581.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-54", 3 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 518.0, 421.0, 518.0, 421.0, 317.0, 871.5, 317.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-54", 2 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 410.0, 796.166687, 410.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-47", 5 ],
					"hidden" : 0,
					"midpoints" : [ 889.5, 551.0, 757.5, 551.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-47", 4 ],
					"hidden" : 0,
					"midpoints" : [ 836.5, 551.0, 730.299988, 551.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 0,
					"midpoints" : [ 328.5, 532.0, 569.0, 532.0, 569.0, 420.0, 720.833313, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-47", 3 ],
					"hidden" : 0,
					"midpoints" : [ 783.5, 551.0, 703.099976, 551.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [ 730.5, 536.0, 675.900024, 536.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 689.5, 608.0, 643.5, 608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [ 677.5, 545.0, 648.700012, 545.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [ 730.5, 536.0, 648.700012, 536.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 645.5, 542.0, 621.5, 542.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 453.0, 359.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 328.5, 484.0, 286.5, 484.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-72", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 531.0, 276.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 288.0, 255.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 479.0, 254.5, 479.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-72", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 128.5, 368.0, 221.5, 368.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 161.5, 263.0, 197.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-70", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.0, 364.0, 195.0, 364.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.5, 394.0, 178.0, 394.0, 178.0, 377.0, 195.0, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 185.5, 289.0, 192.5, 289.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 111.0, 207.0, 161.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 192.5, 327.0, 128.5, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 255.5, 318.0, 128.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 289.0, 128.5, 289.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 254.0, 122.0, 254.0, 122.0, 69.0, 111.0, 69.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [ 128.5, 370.0, 62.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 531.5, 328.5, 531.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
