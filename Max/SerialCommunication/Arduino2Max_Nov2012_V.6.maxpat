{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 0.0, 64.0, 1323.0, 802.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 64.0, 1323.0, 802.0 ],
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
					"maxclass" : "comment",
					"text" : "How to use Arduino2Max: see the readme.txt file!",
					"linecount" : 2,
					"patching_rect" : [ 978.0, 320.0, 169.0, 31.0 ],
					"id" : "obj-3",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r portinfo",
					"patching_rect" : [ 651.0, 148.0, 54.0, 17.0 ],
					"id" : "obj-5",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 651.0, 192.0, 149.0, 17.0 ],
					"id" : "obj-6",
					"textcolor" : [ 0.047059, 0.0, 0.839216, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "Bluetooth-PDA-Sync", ",", "Bluetooth-Modem", ",", "Bluetooth-Modem", ",", "Bluetooth-Modem", ",", "Bluetooth-Modem", ",", 5, ",", 6, ",", 7 ],
					"labelclick" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Credits: Copyleft by Daniel Jolliffe Based on the Thomas Ouellet Fredricks' Simple Message System Thanks to Seejay James for the USB pulldown menu! V.6 November 2012",
					"linecount" : 6,
					"patching_rect" : [ 968.0, 157.0, 191.0, 79.0 ],
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arduino2Max",
					"patching_rect" : [ 631.0, 66.0, 141.0, 31.0 ],
					"id" : "obj-8",
					"fontsize" : 20.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 214.0, 43.0, 965.0, 86.0 ],
					"id" : "obj-9",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.968627, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "To read a digital pin on the Arduino, make a receive object as shown at right.",
					"linecount" : 4,
					"patching_rect" : [ 230.0, 474.0, 121.0, 52.0 ],
					"id" : "obj-10",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "To read an analog pin on the Arudino, make a receive object as shown at right.",
					"linecount" : 4,
					"patching_rect" : [ 230.0, 322.0, 121.0, 52.0 ],
					"id" : "obj-11",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Copy the block at right into your patch. (it does the work of reading the Arduino's pins) Connect the programmed Arduino, and then click \"start\". Click on help for more info.",
					"linecount" : 8,
					"patching_rect" : [ 230.0, 144.0, 115.0, 98.0 ],
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a4",
					"patching_rect" : [ 602.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-13",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a5",
					"patching_rect" : [ 647.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-14",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a3",
					"patching_rect" : [ 559.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-15",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a2",
					"patching_rect" : [ 515.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-16",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a1",
					"patching_rect" : [ 471.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r a0",
					"patching_rect" : [ 426.0, 307.0, 29.0, 17.0 ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d12",
					"patching_rect" : [ 796.0, 462.0, 35.0, 17.0 ],
					"id" : "obj-19",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d13",
					"patching_rect" : [ 839.0, 462.0, 35.0, 17.0 ],
					"id" : "obj-20",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d11",
					"patching_rect" : [ 753.0, 462.0, 35.0, 17.0 ],
					"id" : "obj-21",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d10",
					"patching_rect" : [ 711.0, 462.0, 35.0, 17.0 ],
					"id" : "obj-22",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d9",
					"patching_rect" : [ 674.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-23",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d8",
					"patching_rect" : [ 638.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-24",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d6",
					"patching_rect" : [ 567.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-25",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d7",
					"patching_rect" : [ 602.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-26",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d5",
					"patching_rect" : [ 531.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-27",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d4",
					"patching_rect" : [ 496.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-28",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d3",
					"patching_rect" : [ 462.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-29",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r d2",
					"patching_rect" : [ 429.0, 462.0, 29.0, 17.0 ],
					"id" : "obj-30",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reading the Arduino's digital pins",
					"patching_rect" : [ 449.0, 547.0, 223.0, 21.0 ],
					"id" : "obj-31",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 429.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-32",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 839.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-33",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 796.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-34",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 753.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-35",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 711.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-36",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-37",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 638.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-38",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 602.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-39",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 567.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-40",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 531.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-41",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 496.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-42",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"patching_rect" : [ 462.0, 521.0, 17.0, 17.0 ],
					"id" : "obj-43",
					"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 426.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-44",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 471.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-45",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 515.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-46",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 559.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-47",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 602.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-48",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 647.0, 368.0, 40.0, 18.0 ],
					"id" : "obj-49",
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 423.0, 172.0, 50.0, 50.0 ],
					"id" : "obj-50",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start",
					"patching_rect" : [ 430.0, 149.0, 40.0, 20.0 ],
					"id" : "obj-51",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reading the Arduino's analog pins",
					"patching_rect" : [ 444.0, 395.0, 225.0, 21.0 ],
					"id" : "obj-52",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p arduinoSerialreader",
					"patching_rect" : [ 423.0, 238.0, 247.0, 17.0 ],
					"id" : "obj-53",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 18.0, 44.0, 1370.0, 856.0 ],
						"bglocked" : 0,
						"defrect" : [ 18.0, 44.0, 1370.0, 856.0 ],
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
									"maxclass" : "newobj",
									"text" : "r help",
									"patching_rect" : [ 976.0, 191.0, 36.0, 17.0 ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s portselect",
									"patching_rect" : [ 1173.0, 205.0, 64.0, 17.0 ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r portselect",
									"patching_rect" : [ 35.0, 276.0, 64.0, 17.0 ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s portinfo",
									"patching_rect" : [ 229.0, 447.0, 54.0, 17.0 ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sorter",
									"patching_rect" : [ 229.0, 412.0, 50.0, 17.0 ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 13.0, 88.0, 471.0, 388.0 ],
										"bglocked" : 0,
										"defrect" : [ 13.0, 88.0, 471.0, 388.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 24.0, 246.0, 20.0, 20.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 24.0, 32.0, 20.0, 20.0 ],
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 7",
													"patching_rect" : [ 304.0, 196.0, 127.0, 20.0 ],
													"id" : "obj-3",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 6",
													"patching_rect" : [ 264.0, 170.0, 127.0, 20.0 ],
													"id" : "obj-4",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 5",
													"patching_rect" : [ 224.0, 145.0, 127.0, 20.0 ],
													"id" : "obj-5",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 4",
													"patching_rect" : [ 184.0, 119.0, 127.0, 20.0 ],
													"id" : "obj-6",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 3",
													"patching_rect" : [ 143.0, 197.0, 127.0, 20.0 ],
													"id" : "obj-7",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 2",
													"patching_rect" : [ 104.0, 171.0, 127.0, 20.0 ],
													"id" : "obj-8",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 1",
													"patching_rect" : [ 64.0, 146.0, 127.0, 20.0 ],
													"id" : "obj-9",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend setitem 0",
													"patching_rect" : [ 24.0, 120.0, 127.0, 20.0 ],
													"id" : "obj-10",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s s s s s s s s",
													"patching_rect" : [ 24.0, 89.0, 293.0, 20.0 ],
													"id" : "obj-11",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 8,
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route port",
													"patching_rect" : [ 24.0, 59.0, 93.0, 20.0 ],
													"id" : "obj-12",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Manages serial name data. Each port name (up to 8, in this case) replaces an item in the drop-down menu of the parent patch (items in drop-down are numbered 0 - 7).",
													"linecount" : 4,
													"frgb" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"patching_rect" : [ 167.0, 235.0, 258.0, 62.0 ],
													"id" : "obj-13",
													"textcolor" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 3 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 4 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 5 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 6 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 7 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend port",
									"patching_rect" : [ 35.0, 307.0, 91.0, 17.0 ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 350.0, 244.0, 27.0, 27.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Set the sample rate: between every 15ms and every 100ms.",
									"patching_rect" : [ 394.0, 162.0, 284.0, 17.0 ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 350.0, 177.0, 35.0, 17.0 ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 350.0, 120.0, 169.0, 38.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"orientation" : 1,
									"size" : 86.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"min" : 15.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 275.0, 244.0, 48.0, 17.0 ],
									"id" : "obj-11",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 4",
									"patching_rect" : [ 208.0, 267.0, 43.0, 17.0 ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 1234.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-13",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 1169.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-14",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 1104.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 1039.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 974.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-17",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 909.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-18",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 844.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-19",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 779.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-20",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 714.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-21",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 649.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-22",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 584.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-23",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 519.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-24",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 454.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-25",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 389.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-26",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 324.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-27",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 259.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-28",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 194.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-29",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 129.0, 582.0, 35.0, 17.0 ],
									"id" : "obj-30",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Serial Port Settings",
									"patching_rect" : [ 395.0, 86.0, 237.0, 27.0 ],
									"id" : "obj-31",
									"fontsize" : 18.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 976.0, 242.0, 47.0, 17.0 ],
									"id" : "obj-32",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"patching_rect" : [ 976.0, 221.0, 30.0, 15.0 ],
									"id" : "obj-33",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p arduino2max_help",
									"patching_rect" : [ 976.0, 264.0, 100.0, 17.0 ],
									"id" : "obj-34",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 483.0, 171.0, 717.0, 593.0 ],
										"bglocked" : 0,
										"defrect" : [ 483.0, 171.0, 717.0, 593.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "start",
													"patching_rect" : [ 254.0, 165.0, 48.0, 18.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "settings",
													"patching_rect" : [ 412.0, 162.0, 56.0, 18.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 339.0, 190.0, 23.0, 23.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "help",
													"patching_rect" : [ 335.0, 163.0, 35.0, 18.0 ],
													"id" : "obj-4",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Arduino2Max uses an Arduino board programmed with the Arduino code that watches the Arduino's input pins and makes the pin data available through receive objects anywere in your patch.",
													"linecount" : 2,
													"patching_rect" : [ 33.0, 79.0, 496.0, 29.0 ],
													"id" : "obj-5",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "digital pins",
													"patching_rect" : [ 549.0, 309.0, 61.0, 17.0 ],
													"id" : "obj-6",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "analog pins",
													"patching_rect" : [ 80.0, 309.0, 71.0, 17.0 ],
													"id" : "obj-7",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 425.0, 190.0, 23.0, 23.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"patching_rect" : [ 253.0, 192.0, 21.0, 21.0 ],
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p arduinoreader",
													"patching_rect" : [ 253.0, 254.0, 183.0, 17.0 ],
													"id" : "obj-10",
													"fontsize" : 9.0,
													"numinlets" : 3,
													"numoutlets" : 0,
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ -8.0, 44.0, 1295.0, 686.0 ],
														"bglocked" : 0,
														"defrect" : [ -8.0, 44.0, 1295.0, 686.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 666.0, 67.0, 15.0, 15.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : "inlet to open help patch"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 1136.0, 64.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : "inlet for patcher control"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 73.0, 39.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : "1 or 0 to start/stop serial reads"
																}

															}
 ],
														"lines" : [  ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"globalpatchername" : "",
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "A few notes: - Unused inputs will fluctuate between values. This is normal, as unconected pins do this on their own.",
													"patching_rect" : [ 35.0, 417.0, 585.0, 18.0 ],
													"id" : "obj-11",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Once you have the above patch, you can get Arduino's analog and digital values anywere in your own patcher by making a \"receive a#\" or \"receive d#\" object, where # is the input pin you want to read.",
													"linecount" : 3,
													"patching_rect" : [ 189.0, 343.0, 319.0, 38.0 ],
													"id" : "obj-12",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r d3",
													"patching_rect" : [ 600.0, 336.0, 29.0, 17.0 ],
													"id" : "obj-13",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r d2",
													"patching_rect" : [ 544.0, 336.0, 29.0, 17.0 ],
													"id" : "obj-14",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r a1",
													"patching_rect" : [ 124.0, 336.0, 29.0, 17.0 ],
													"id" : "obj-15",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r a0",
													"patching_rect" : [ 67.0, 336.0, 29.0, 17.0 ],
													"id" : "obj-16",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "led",
													"patching_rect" : [ 544.0, 364.0, 17.0, 17.0 ],
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 1,
													"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "led",
													"oncolor" : [ 1.0, 1.0, 0.0, 1.0 ],
													"patching_rect" : [ 600.0, 364.0, 17.0, 17.0 ],
													"id" : "obj-18",
													"offcolor" : [ 1.0, 0.666667, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"patching_rect" : [ 67.0, 364.0, 40.0, 18.0 ],
													"id" : "obj-19",
													"fontsize" : 10.0,
													"triscale" : 0.9,
													"numinlets" : 1,
													"numoutlets" : 2,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"bgcolor" : [ 1.0, 0.741176, 0.611765, 1.0 ],
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"patching_rect" : [ 124.0, 364.0, 40.0, 18.0 ],
													"id" : "obj-20",
													"fontsize" : 10.0,
													"triscale" : 0.9,
													"numinlets" : 1,
													"numoutlets" : 2,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- Arduino2Max runs flawlessly on a 1.83 GHz Macbook Pro;\ryour mileage may vary.",
													"linecount" : 2,
													"patching_rect" : [ 35.0, 462.0, 655.0, 29.0 ],
													"id" : "obj-21",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- Patch adapted from Thomas Ouellet Fredericks' \"Simple Message Sytem\" example. Serial writes are possible, but not implemented here: see the S.M.S. code. Thanks to Seejay James one the MAX list for the pull-down menu code!",
													"linecount" : 2,
													"patching_rect" : [ 36.0, 491.0, 636.0, 29.0 ],
													"id" : "obj-22",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- You may have to change your serial port to suit the port in use. Click on the yellow button to see the guts of the serial read and to make changes to how the patch talks to the serial port.",
													"linecount" : 2,
													"patching_rect" : [ 35.0, 433.0, 643.0, 29.0 ],
													"id" : "obj-23",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "At minimum, you need the \"arduinoreader\" patcher at the right, which does the work of reading the pins. The toggle turns serial reads from the Arduino on and off.",
													"linecount" : 7,
													"patching_rect" : [ 97.0, 175.0, 122.0, 79.0 ],
													"id" : "obj-24",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The right-hand yellow button opens the patch so that you can adjust settings, like how often to read from the Arduino and which port to use.",
													"linecount" : 7,
													"patching_rect" : [ 495.0, 179.0, 104.0, 79.0 ],
													"id" : "obj-25",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Arduino2Max",
													"frgb" : [ 0.082353, 0.219608, 0.035294, 1.0 ],
													"patching_rect" : [ 33.0, 33.0, 163.0, 27.0 ],
													"id" : "obj-26",
													"textcolor" : [ 0.082353, 0.219608, 0.035294, 1.0 ],
													"fontsize" : 18.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Read the 6 analog and 12 digital input pins of the Arduino into MAX.",
													"patching_rect" : [ 218.0, 39.0, 334.0, 18.0 ],
													"id" : "obj-27",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 18.0, 29.0, 670.0, 101.0 ],
													"id" : "obj-28",
													"rounded" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"bgcolor" : [ 1.0, 0.968627, 0.811765, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 594.0, 21.0, 15.0, 15.0 ],
													"id" : "obj-29",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"hidden" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 18.0, 412.0, 671.0, 114.0 ],
													"id" : "obj-30",
													"rounded" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"bgcolor" : [ 1.0, 0.968627, 0.811765, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 43.0, 332.0, 128.0, 57.0 ],
													"id" : "obj-31",
													"rounded" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 245.0, 154.0, 227.0, 129.0 ],
													"id" : "obj-32",
													"rounded" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 515.0, 329.0, 139.0, 57.0 ],
													"id" : "obj-33",
													"rounded" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 262.5, 224.0, 262.5, 224.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 2 ],
													"hidden" : 0,
													"midpoints" : [ 434.5, 226.0, 426.5, 226.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r onoff",
									"patching_rect" : [ 61.0, 137.0, 41.0, 17.0 ],
									"id" : "obj-35",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 1173.0, 146.0, 15.0, 15.0 ],
									"id" : "obj-36",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : "inlet for patcher control"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "help and patcher control stuff.",
									"patching_rect" : [ 978.0, 289.0, 168.0, 17.0 ],
									"id" : "obj-37",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 129.0, 120.0, 15.0, 15.0 ],
									"id" : "obj-38",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : "1 or 0 to start/stop serial reads"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Print a list of serial ports to the max window",
									"patching_rect" : [ 397.0, 251.0, 243.0, 17.0 ],
									"id" : "obj-39",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 208.0, 299.0, 15.0, 15.0 ],
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p convert",
									"patching_rect" : [ 129.0, 290.0, 53.0, 17.0 ],
									"id" : "obj-41",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 289.0, 44.0, 838.0, 659.0 ],
										"bglocked" : 0,
										"defrect" : [ 289.0, 44.0, 838.0, 659.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 99.0, 316.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spell",
													"patching_rect" : [ 107.0, 210.0, 31.0, 17.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "13",
													"patching_rect" : [ 90.0, 241.0, 20.0, 15.0 ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"patching_rect" : [ 90.0, 127.0, 27.0, 17.0 ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 70.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 235.0, 98.0, 235.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 286.0, 108.0, 286.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 116.5, 286.0, 108.0, 286.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d12",
									"patching_rect" : [ 1169.0, 697.0, 35.0, 17.0 ],
									"id" : "obj-42",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d13",
									"patching_rect" : [ 1234.0, 697.0, 35.0, 17.0 ],
									"id" : "obj-43",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d11",
									"patching_rect" : [ 1104.0, 697.0, 35.0, 17.0 ],
									"id" : "obj-44",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d10",
									"patching_rect" : [ 1039.0, 697.0, 35.0, 17.0 ],
									"id" : "obj-45",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d9",
									"patching_rect" : [ 974.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-46",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d8",
									"patching_rect" : [ 909.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-47",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d6",
									"patching_rect" : [ 779.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-48",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d7",
									"patching_rect" : [ 844.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-49",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d5",
									"patching_rect" : [ 714.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-50",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d4",
									"patching_rect" : [ 649.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-51",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d3",
									"patching_rect" : [ 584.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-52",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s d2",
									"patching_rect" : [ 519.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-53",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a4",
									"patching_rect" : [ 389.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-54",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a5",
									"patching_rect" : [ 454.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-55",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a3",
									"patching_rect" : [ 324.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-56",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a2",
									"patching_rect" : [ 259.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-57",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a1",
									"patching_rect" : [ 194.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-58",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s a0",
									"patching_rect" : [ 129.0, 697.0, 29.0, 17.0 ],
									"id" : "obj-59",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p convertback",
									"patching_rect" : [ 129.0, 412.0, 73.0, 17.0 ],
									"id" : "obj-60",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 582.0, 197.0, 281.0, 423.0 ],
										"bglocked" : 0,
										"defrect" : [ 582.0, 197.0, 281.0, 423.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "fromsymbol",
													"patching_rect" : [ 137.0, 226.0, 64.0, 17.0 ],
													"id" : "obj-1",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "itoa",
													"patching_rect" : [ 137.0, 182.0, 40.0, 17.0 ],
													"id" : "obj-2",
													"fontsize" : 9.0,
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 78",
													"patching_rect" : [ 137.0, 148.0, 61.0, 17.0 ],
													"id" : "obj-3",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 10 13",
													"patching_rect" : [ 137.0, 84.0, 53.0, 17.0 ],
													"id" : "obj-4",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 137.0, 298.0, 26.0, 26.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "out"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 137.0, 37.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : "in"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 180.5, 124.0, 146.5, 124.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 163.5, 124.0, 146.5, 124.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route list",
									"patching_rect" : [ 129.0, 470.0, 52.0, 17.0 ],
									"id" : "obj-61",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 1234.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-62",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 1169.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-63",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 1104.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-64",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 1039.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-65",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 974.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-66",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 909.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-67",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 844.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-68",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 779.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-69",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 714.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-70",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 649.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-71",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 584.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-72",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 519.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-73",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 454.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-74",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 389.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-75",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 324.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-76",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 259.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-77",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 194.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-78",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change 0",
									"patching_rect" : [ 129.0, 611.0, 49.0, 17.0 ],
									"id" : "obj-79",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i i i i i i i i i i i i i i i i i",
									"patching_rect" : [ 129.0, 528.0, 1131.0, 17.0 ],
									"id" : "obj-80",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 18,
									"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "r",
									"patching_rect" : [ 129.0, 240.0, 16.0, 15.0 ],
									"id" : "obj-81",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 129.0, 157.0, 15.0, 15.0 ],
									"id" : "obj-82",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 15",
									"patching_rect" : [ 129.0, 204.0, 52.0, 17.0 ],
									"id" : "obj-83",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "serial a 115200 8 1 0",
									"patching_rect" : [ 129.0, 365.0, 110.0, 17.0 ],
									"id" : "obj-84",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "print",
									"patching_rect" : [ 350.0, 301.0, 32.0, 15.0 ],
									"id" : "obj-85",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 327.0, 76.0, 398.0, 255.0 ],
									"id" : "obj-86",
									"rounded" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.619608, 0.87451, 0.996078, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.5, 155.0, 138.0, 155.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [ 217.0, 333.0, 138.5, 333.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 341.0, 138.5, 341.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 138.5, 678.0, 138.5, 678.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-83", 1 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 199.0, 171.5, 199.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 203.5, 680.0, 203.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 138.5, 232.0, 217.5, 232.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 2 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.5, 680.0, 268.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 3 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 333.5, 680.0, 333.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 359.5, 167.0, 359.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [ 284.5, 281.0, 359.5, 281.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 4 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 398.5, 680.0, 398.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 5 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 463.5, 680.0, 463.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 6 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [ 528.5, 680.0, 528.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 7 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 593.5, 680.0, 593.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 8 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 658.5, 680.0, 658.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 9 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 723.5, 680.0, 723.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 10 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 792.617676, 570.0, 788.5, 570.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [ 788.5, 604.0, 788.5, 604.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 788.5, 680.0, 788.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 11 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 853.5, 680.0, 853.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 12 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 918.5, 680.0, 918.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 13 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 983.5, 680.0, 983.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 14 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1048.5, 680.0, 1048.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 15 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1113.5, 680.0, 1113.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 16 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1178.5, 680.0, 1178.5, 680.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 17 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1243.5, 680.0, 1243.5, 680.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 413.0, 449.0, 479.0, 137.0 ],
					"id" : "obj-54",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 409.0, 295.0, 300.0, 128.0 ],
					"id" : "obj-55",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 407.0, 139.0, 487.0, 129.0 ],
					"id" : "obj-56",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.509804, 0.854902, 0.909804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 953.0, 136.0, 226.0, 408.0 ],
					"id" : "obj-57",
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.913725, 0.92549, 0.568627, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 432.5, 215.0, 432.5, 215.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 576.5, 491.0, 576.5, 491.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 848.5, 495.0, 848.5, 495.0 ]
				}

			}
 ]
	}

}
