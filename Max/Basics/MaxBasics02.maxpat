{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 4
		}
,
		"rect" : [ 186.0, 127.0, 444.0, 594.0 ],
		"bglocked" : 1,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Myriad Pro",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 159.0, 404.0, 77.0, 21.0 ],
					"text" : "random 1000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 159.0, 430.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 265.0, 223.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 265.0, 199.0, 48.0, 21.0 ],
					"text" : "* 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 12.0, 52.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 265.0, 148.0, 169.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 97.0, 430.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 16.0, 430.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 16.0, 404.0, 100.0, 21.0 ],
					"text" : "counter 0 0 59"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 265.0, 174.0, 50.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.0, 371.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.0, 271.0, 100.0, 21.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Myriad Pro",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.0, 107.0, 50.0, 19.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 35.0, 79.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 15.0, 309.0, 28.0 ],
					"text" : "Max Basics",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.407843, 0.305882, 0.227451, 1.0 ],
					"id" : "obj-17",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 4.0, 434.0, 39.0 ],
					"rounded" : 3
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"id" : "obj-45",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 472.0, 186.0, 47.0 ],
					"text" : "Helpful shortcuts:\nApple+E - Lock/unlock a patch\nAlt+click - Open object help file"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"id" : "obj-43",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.0, 405.0, 191.0, 47.0 ],
					"text" : "Use the toggle at the top to see what the 'counter' and 'random' objects do."
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 200.0, 103.0, 20.0 ],
					"text" : "Multiplies by two"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 176.0, 115.0, 20.0 ],
					"text" : "Press 'i' for integer"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 295.0, 87.0, 33.0 ],
					"text" : "Press 'n' for newobject"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"id" : "obj-36",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 271.0, 185.0, 73.0 ],
					"text" : "Objects such as 'metro' (metronome) allow you to add functionality to your patch. They perform the actions \nwithin your patch."
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"id" : "obj-28",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.0, 50.0, 177.0, 47.0 ],
					"text" : "Max has a variety of shortcut keys to make patching faster and easier your patching. "
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 106.0, 132.0, 20.0 ],
					"text" : "Press 'm' for message"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 80.0, 119.0, 20.0 ],
					"text" : "Press 'b' for button"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana Italic",
					"fontsize" : 11.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 53.0, 112.0, 20.0 ],
					"text" : "Press 't' for toggle"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 536.0, 425.0, 47.0 ],
					"text" : "This patch covers the basics of different types of objects and data in Max. For additional help, it is highly recommended that you view the Max tutorials under the 'Help' menu available in the menu bar.",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.407843, 0.305882, 0.227451, 1.0 ],
					"id" : "obj-19",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 530.0, 434.0, 58.0 ],
					"rounded" : 3
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"id" : "obj-29",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 47.0, 430.0, 84.0 ],
					"rounded" : 3
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 148.0, 186.0, 33.0 ],
					"text" : "Interface objects allow users to control aspects of your patch."
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"id" : "obj-31",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 144.0, 377.0, 105.0 ],
					"rounded" : 3
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"id" : "obj-37",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 266.0, 332.0, 81.0 ],
					"rounded" : 3
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.94902, 0.94902, 0.94902, 1.0 ],
					"id" : "obj-44",
					"ignoreclick" : 1,
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 366.0, 429.0, 92.0 ],
					"rounded" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 274.5, 258.0, 106.5, 258.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 25.5, 398.0, 168.5, 398.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}
