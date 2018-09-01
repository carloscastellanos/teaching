{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 323.0, 79.0, 666.0, 630.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-101",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.5, 78.0, 130.0, 23.0 ],
					"style" : "",
					"text" : "selection 1 0.25 0.26"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-23",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.0, 96.5, 50.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.0, 124.5, 80.0, 23.0 ],
					"style" : "",
					"text" : "pitchshift $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 27.5, 24.0, 24.0 ],
					"presentation_rect" : [ 490.0, 75.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 57.5, 92.0, 23.0 ],
					"style" : "",
					"text" : "timestretch $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 141.0, -156.0, 123.0, 23.0 ],
					"style" : "",
					"text" : "selection 2 0.25 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 108.0, 53.0, 22.0 ],
					"style" : "",
					"text" : "speed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 306.0, 108.0, 53.0, 22.0 ],
					"style" : "",
					"text" : "speed 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.25, 108.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "speed 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.25, 467.0, 249.0, 94.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 216.875, 295.0, 24.0, 115.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 127.875, 295.0, 24.0, 115.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.25, 470.75, 334.0, 49.0 ],
					"style" : "",
					"text" : "1 \"/Users/carlos/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2/1_r7.aif\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.25, 331.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 257.25, 331.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.25, 383.75, 334.0, 49.0 ],
					"style" : "",
					"text" : "1 \"/Users/carlos/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2/1_r7.aif\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 257.25, 272.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "route start done"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 159.0, 115.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 159.0, 78.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "- 48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 159.0, 43.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 159.0, 11.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.220612, 0.046955, 0.311558, 1.0 ],
					"color" : [ 0.745619, 0.293768, 0.190145, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 159.0, 295.0, 51.75, 51.75 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 29.666666,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "/Users/carlos/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2/1_r7.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.25, 0.26 ],
								"loop" : 1,
								"content_state" : 								{
									"basictuning" : [ 440 ],
									"originallength" : [ 0.0, "ticks" ],
									"quality" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"timestretch" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"slurtime" : [ 0.0 ],
									"mode" : [ "basic" ],
									"formant" : [ 1.0 ],
									"play" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"speed" : [ 1 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ]
								}

							}
, 							{
								"filename" : "/Users/carlos/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2/2_tri_part.aif",
								"filekind" : "audiofile",
								"selection" : [ 0.25, 0.5 ],
								"loop" : 1,
								"content_state" : 								{
									"basictuning" : [ 440 ],
									"originallength" : [ 0.0, "ticks" ],
									"quality" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"timestretch" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"slurtime" : [ 0.0 ],
									"mode" : [ "basic" ],
									"formant" : [ 1.0 ],
									"play" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"speed" : [ 1 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ]
								}

							}
, 							{
								"filename" : "epno.aiff",
								"filekind" : "audiofile",
								"loop" : 1,
								"content_state" : 								{
									"basictuning" : [ 440 ],
									"originallength" : [ 0.0, "ticks" ],
									"quality" : [ "basic" ],
									"pitchcorrection" : [ 0 ],
									"timestretch" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"pitchshift" : [ 1.0 ],
									"slurtime" : [ 0.0 ],
									"mode" : [ "basic" ],
									"formant" : [ 1.0 ],
									"play" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"speed" : [ 1 ],
									"formantcorrection" : [ 0 ],
									"originaltempo" : [ 120.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-68",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 159.0, 162.0, 150.0, 92.0 ],
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 379.5, 146.0, 168.5, 146.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 33.0, 146.0, 168.5, 146.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 443.5, 154.0, 168.5, 154.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 449.5, 92.0, 523.0, 92.0, 523.0, 158.0, 168.5, 158.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 168.5, 267.0, 14.75, 267.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 266.75, 300.875, 581.75, 300.875 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 304.75, 312.0, 329.75, 312.0 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 304.75, 313.875, 581.75, 313.875 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 242.75, 146.0, 168.5, 146.0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 315.5, 146.0, 168.5, 146.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "1_r7.aif",
				"bootpath" : "~/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "2_tri_part.aif",
				"bootpath" : "~/Documents/Max 7/Packages/CNMAT-MMJ-Depot/examples/repertoire/Ron_Smith/Guitar_pieces_v2",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "epno.aiff",
				"bootpath" : "C74:/docs/tutorial-patchers/msp-tut",
				"type" : "AIFF",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
