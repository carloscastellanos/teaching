{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 1143.0, 133.0, 640.0, 497.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "jit.fpsgui",
					"mode" : 4,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 486.0, 135.0, 80.0, 35.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 362.0, 131.0, 80.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 284.0, 142.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "jit.rgb2luma"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 327.0, 367.0, 164.0, 123.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 454.0, 190.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 454.0, 220.0, 121.0, 22.0 ],
					"style" : "",
					"text" : "jit.noise 4 char 40 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 327.0, 324.0, 81.0, 22.0 ],
					"style" : "",
					"text" : "jit.alphablend"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 25.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "countdown.mov",
								"filekind" : "moviefile",
								"loop" : 1,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u125000586" ],
									"dim" : [ 1, 1 ],
									"duration" : [ 0 ],
									"vol" : [ 1.0 ],
									"fps" : [ 0.0 ],
									"loopend" : [ 0 ],
									"moviefile" : [ "" ],
									"unique" : [ 0 ],
									"usedstrect" : [ 0 ],
									"time_secs" : [ 0.0 ],
									"cache_size" : [ 0.1 ],
									"drawto" : [ "" ],
									"position" : [ 0.0 ],
									"loopstart" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"framecount" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"colormode" : [ "argb" ],
									"timescale" : [ 600 ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "viddll" ],
									"autostart" : [ 1 ],
									"time" : [ 0 ],
									"adapt" : [ 1 ],
									"texture_name" : [ "u322000584" ],
									"interp" : [ 0 ],
									"automatic" : [ 0 ],
									"rate" : [ 1.0 ],
									"framereport" : [ 0 ],
									"loopreport" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"output_texture" : [ 0 ]
								}

							}
, 							{
								"filename" : "dozer.mov",
								"filekind" : "moviefile",
								"loop" : 1,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u125000586" ],
									"dim" : [ 1, 1 ],
									"duration" : [ 0 ],
									"vol" : [ 1.0 ],
									"fps" : [ 0.0 ],
									"loopend" : [ 0 ],
									"moviefile" : [ "" ],
									"unique" : [ 0 ],
									"usedstrect" : [ 0 ],
									"time_secs" : [ 0.0 ],
									"cache_size" : [ 0.1 ],
									"drawto" : [ "" ],
									"position" : [ 0.0 ],
									"loopstart" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"framecount" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"colormode" : [ "argb" ],
									"timescale" : [ 600 ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "viddll" ],
									"autostart" : [ 1 ],
									"time" : [ 0 ],
									"adapt" : [ 1 ],
									"texture_name" : [ "u322000584" ],
									"interp" : [ 0 ],
									"automatic" : [ 0 ],
									"rate" : [ 1.0 ],
									"framereport" : [ 0 ],
									"loopreport" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"output_texture" : [ 0 ]
								}

							}
, 							{
								"filename" : "bball.mov",
								"filekind" : "moviefile",
								"loop" : 1,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u125000586" ],
									"dim" : [ 1, 1 ],
									"duration" : [ 0 ],
									"vol" : [ 1.0 ],
									"fps" : [ 0.0 ],
									"loopend" : [ 0 ],
									"moviefile" : [ "" ],
									"unique" : [ 0 ],
									"usedstrect" : [ 0 ],
									"time_secs" : [ 0.0 ],
									"cache_size" : [ 0.1 ],
									"drawto" : [ "" ],
									"position" : [ 0.0 ],
									"loopstart" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"framecount" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"colormode" : [ "argb" ],
									"timescale" : [ 600 ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "viddll" ],
									"autostart" : [ 1 ],
									"time" : [ 0 ],
									"adapt" : [ 1 ],
									"texture_name" : [ "u322000584" ],
									"interp" : [ 0 ],
									"automatic" : [ 0 ],
									"rate" : [ 1.0 ],
									"framereport" : [ 0 ],
									"loopreport" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"output_texture" : [ 0 ]
								}

							}
, 							{
								"filename" : "/Users/ccastellanos/Documents/Max 7/Library/video fx/Sequence 01_1.mov",
								"filekind" : "moviefile",
								"loop" : 1,
								"content_state" : 								{
									"outputmode" : [ 1 ],
									"out_name" : [ "u125000586" ],
									"dim" : [ 1, 1 ],
									"duration" : [ 0 ],
									"vol" : [ 1.0 ],
									"fps" : [ 0.0 ],
									"loopend" : [ 0 ],
									"moviefile" : [ "" ],
									"unique" : [ 0 ],
									"usedstrect" : [ 0 ],
									"time_secs" : [ 0.0 ],
									"cache_size" : [ 0.1 ],
									"drawto" : [ "" ],
									"position" : [ 0.0 ],
									"loopstart" : [ 0 ],
									"srcrect" : [ 0, 0, 1, 1 ],
									"framecount" : [ 0 ],
									"looppoints" : [ 0, 0 ],
									"colormode" : [ "argb" ],
									"timescale" : [ 600 ],
									"usesrcrect" : [ 0 ],
									"engine" : [ "viddll" ],
									"autostart" : [ 1 ],
									"time" : [ 0 ],
									"adapt" : [ 1 ],
									"texture_name" : [ "u322000584" ],
									"interp" : [ 0 ],
									"automatic" : [ 0 ],
									"rate" : [ 1.0 ],
									"framereport" : [ 0 ],
									"loopreport" : [ 0 ],
									"dstrect" : [ 0, 0, 1, 1 ],
									"output_texture" : [ 0 ]
								}

							}
 ]
					}
,
					"id" : "obj-14",
					"maxclass" : "jit.playlist",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "", "dictionary" ],
					"patching_rect" : [ 284.0, 5.0, 301.0, 104.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 120.0, 281.0, 80.0, 60.0 ],
					"presentation_rect" : [ 117.0, 255.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 120.0, 236.0, 183.0, 22.0 ],
					"style" : "",
					"text" : "jit.op @op !pass pass pass pass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 35.0, 236.0, 80.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 35.0, 169.0, 47.0, 22.0 ],
					"style" : "",
					"text" : "jit.grab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 153.0, 135.0, 39.0, 22.0 ],
					"presentation_rect" : [ 195.0, 152.0, 0.0, 0.0 ],
					"style" : "",
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.0, 135.0, 37.0, 22.0 ],
					"style" : "",
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 112.0, 91.0, 46.0, 22.0 ],
					"style" : "",
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 35.0, 56.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 35.0, 91.0, 65.0, 22.0 ],
					"style" : "",
					"text" : "qmetro 33"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 2,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "countdown.mov",
				"bootpath" : "C74:/media/jitter",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "dozer.mov",
				"bootpath" : "C74:/media/jitter",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "bball.mov",
				"bootpath" : "C74:/media/jitter",
				"type" : "MooV",
				"implicit" : 1
			}
, 			{
				"name" : "Sequence 01_1.mov",
				"bootpath" : "~/Documents/Max 7/Library/video fx",
				"patcherrelativepath" : ".",
				"type" : "MooV",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
