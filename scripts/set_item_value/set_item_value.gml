// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param sprite_index
///@param image_index
///@param angle
///@param number
///@param inv_x
///@param inv_y
///@param target
function set_item_value(argument0,argument1,argument2,argument3,argument4,argument5,argument6)
{
var item_name__ = "unknown"
var item_maximum_stacks__ = 1;
var xsize__ = 1;
var ysize__ = 1;
var bg_col__ = 0;
var short_name__ = -4;
	if argument0 = spr_drink
	{
		if argument1 = 0
		{
		item_name__ = "Coke"
		}
		if argument1 = 1
		{
		item_name__ = "Grape soda"
		}
		if argument1 = 2
		{
		item_name__ = "Orange soda"
		}
		if argument1 = 3
		{
		item_name__ = "Bottled water"
		ysize__ = 2;
		}
		if argument1 = 4
		{
		item_name__ = "Green tea"
		}
		if argument1 = 5
		{
		item_name__ = "Condensed milk"
		short_name__ = "CondMilk"
		}
		if argument1 = 6
		{
		item_name__ = "Milk carton"
		short_name__ = "Milk"
		ysize__ = 2;
		}
		if argument1 = 7
		{
		item_name__ = "Grape juice"
		}
		if argument1 = 8
		{
		item_name__ = "Orange juice"
		}
		if argument1 = 9
		{
		item_name__ = "Energy drink"
		}
		if argument1 = 10
		{
		item_name__ = "Honey jar"
		short_name__ = "Honey"
		ysize__ = 2;
		bg_col__ = 1
		}
		if argument1 = 11
		{
		item_name__ = "Suspicious water"
		short_name__ = "Sus Water"
		ysize__ = 2;
		bg_col__ = 1
		}
		if argument1 = 12
		{
		item_name__ = "Ion drink"
		}
	}
	
	if argument0 = spr_comp
	{
		if argument1 = 0
		{
		item_name__ = "Bolt"
		}
		if argument1 = 1
		{
		item_name__ = "Screw nuts"
		short_name__ = "Nuts"
		}
		if argument1 = 2
		{
		item_name__ = "Crude oil"
		xsize__ = 2;
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 3
		{
		item_name__ = "Refined oil"
		xsize__ = 2;
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 4
		{
		item_name__ = "RAM"
		bg_col__ = 1;
		}
		if argument1 = 5
		{
		item_name__ = "CPU"
		bg_col__ = 1;
		}
		if argument1 = 6
		{
		item_name__ = "Printed circuit board"
		bg_col__ = 1;
		short_name__ = "PCB"
		}
		if argument1 = 7
		{
		item_name__ = "Wires"
		xsize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 8
		{
		item_name__ = "Graphics card"
		xsize__ = 2;
		bg_col__ = 2;
		short_name__ = "GPU"
		}
		if argument1 = 9
		{
		item_name__ = "SSD"
		bg_col__ = 2;
		}
		if argument1 = 10
		{
		item_name__ = "Sewing kit"
		short_name__ = "Sewing"
		}
		if argument1 = 11
		{
		item_name__ = "Clothes"
		xsize__ = 2;
		}
		if argument1 = 12
		{
		item_name__ = "Soap"
		}
		if argument1 = 13
		{
		item_name__ = "Plastic lump"
		short_name__ = "Plastic"
		}
		if argument1 = 14
		{
		item_name__ = "Skull statue"
		xsize__ = 2;
		ysize__ = 2;
		bg_col__ = 1;
		short_name__ = "Skull"
		}
		if argument1 = 15
		{
		item_name__ = "Star statue"
		xsize__ = 2;
		ysize__ = 2;
		bg_col__ = 1;
		short_name__ = "Star"
		}
		if argument1 = 16
		{
		item_name__ = "Cards"
		bg_col__ = 2;
		}
		if argument1 = 17
		{
		item_name__ = "Paint"
		xsize__ = 2;
		ysize__ = 2;
		}
		if argument1 = 18
		{
		item_name__ = "Red paint"
		xsize__ = 2;
		ysize__ = 2;
		}
		if argument1 = 19
		{
		item_name__ = "Metal bar"
		xsize__ = 2;
		}
		if argument1 = 20
		{
		item_name__ = "High quality metal bar"
		xsize__ = 2;
		bg_col__ = 1;
		short_name__ = "HQM"
		}
		if argument1 = 21
		{
		item_name__ = "High quality gold bar"
		xsize__ = 2;
		bg_col__ = 1;
		short_name__ = "HQG"
		}
		if argument1 = 22
		{
		item_name__ = "Syringe"
		}
		if argument1 = 23
		{
		item_name__ = "Metal rod"
		ysize__ = 2;
		}
		if argument1 = 24
		{
		item_name__ = "Wooden stick"
		ysize__ = 2;
		short_name__ = "Wood"
		}
		if argument1 = 25
		{
		item_name__ = "Empty bottle"
		ysize__ = 2;
		short_name__ = "Bottle"
		}
		if argument1 = 26
		{
		item_name__ = "Cross necklace"
		bg_col__ = 0;
		short_name__ = "Cross"
		}
		if argument1 = 27
		{
		item_name__ = "Golden cross necklace"
		bg_col__ = 2;
		short_name__ = "GCross"
		}
		if argument1 = 28
		{
		item_name__ = "Power supply"
		xsize__ = 2;
		ysize__ = 2;
		bg_col__ = 1;
		short_name__ = "PSU"
		}
		if argument1 = 29
		{
		item_name__ = "Golden skull"
		bg_col__ = 2;
		}
	}
	
	if argument0 = spr_healings
	{
		if argument1 = 0
		{
		item_name__ = "Bandage"
		}
		if argument1 = 1
		{
		item_name__ = "Handmade splint"
		short_name__ = "HSplint"
		}
		if argument1 = 2
		{
		item_name__ = "Splint"
		}
		if argument1 = 3
		{
		item_name__ = "Anti-Radiation pills"
		bg_col__ = 1;
		short_name__ = "Anti-Rad"
		}
		if argument1 = 4
		{
		item_name__ = "Anti-Poison pills"
		bg_col__ = 1;
		short_name__ = "Anti-Poi"
		}
		if argument1 = 5
		{
		item_name__ = "Painkiller"
		bg_col__ = 1;
		}
	}
	
	if argument0 = spr_foods
	{
		if argument1 = 0
		{
		item_name__ = "Solid chocolate"
		short_name__ = "Chocolate"
		}
		if argument1 = 1
		{
		item_name__ = "Cereal bar"
		short_name__ = "Cereal"
		}
		if argument1 = 2
		{
		item_name__ = "Chocolate bar"
		short_name__ = "Chocolate"
		}
		if argument1 = 3
		{
		item_name__ = "Salted potato chips"
		short_name__ = "Chips"
		ysize__ = 2;
		}
		if argument1 = 4
		{
		item_name__ = "Onion flavored potato chips"
		short_name__ = "Chips"
		}
		if argument1 = 5
		{
		item_name__ = "Sausage"
		}
		if argument1 = 6
		{
		item_name__ = "Can of beef stew"
		short_name__ = "Beef"
		}
		if argument1 = 7
		{
		item_name__ = "Can of salmon"
		short_name__ = "Salmon"
		}
		if argument1 = 8
		{
		item_name__ = "Can of tuna"
		short_name__ = "Tuna"
		}
		if argument1 = 9
		{
		item_name__ = "Canned vegetables"
		short_name__ = "Veges"
		}
		if argument1 = 10
		{
		item_name__ = "Large can of tuna"
		short_name__ = "L-Tuna"
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 11
		{
		item_name__ = "Large canned chicken"
		short_name__ = "L-Chicken"
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 12
		{
		item_name__ = "Large can of beef stew"
		short_name__ = "L-Beef"
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 13
		{
		item_name__ = "Large canned vegetables"
		short_name__ = "L-Veges"
		ysize__ = 2;
		bg_col__ = 1;
		}
		if argument1 = 14
		{
		item_name__ = "Sugar cubes"
		short_name__ = "Sugar"
		bg_col__ = 1;
		}
	}
	
	if argument0 = spr_stackables
	{
		if argument1 = 0
		{
		item_name__ = "Golden coin"
		short_name__ = "Coin"
		item_maximum_stacks__ = 500;
		bg_col__ = 2;
		}
		if argument1 = 1
		{
		item_name__ = "Bomb"
		item_maximum_stacks__ = 5;
		}
		if argument1 = 2
		{
		item_name__ = "Clip"
		item_maximum_stacks__ = 50;
		}
		if argument1 = 3
		{
		item_name__ = "Keycard"
		bg_col__ = 1;
		item_maximum_stacks__ = 5;
		}
		if argument1 = 4
		{
		item_name__ = "Key"
		item_maximum_stacks__ = 5;
		}
		if argument1 = 5
		{
		item_name__ = "Cherry bomb"
		item_maximum_stacks__ = 10;
		}
	}
	
	if argument0 = spr_backpack
	{
		if argument1 = 0
		{
		item_name__ = "Leather backpack"
		xsize__ = 3;
		ysize__ = 3;
		}
		if argument1 = 1
		{
		item_name__ = "Medical backpack"
		xsize__ = 4;
		ysize__ = 3;
		}
		if argument1 = 2
		{
		item_name__ = "Blue backpack"
		xsize__ = 4;
		ysize__ = 3;
		}
		if argument1 = 3
		{
		item_name__ = "Large leather backpack"
		xsize__ = 3;
		ysize__ = 4;
		}
		if argument1 = 4
		{
		item_name__ = "Purple backpack"
		xsize__ = 3;
		ysize__ = 4;
		}
		if argument1 = 5
		xsize__ = 3;
		ysize__ = 4;
		{
		item_name__ = "Large medical backpack"
		xsize__ = 3;
		ysize__ = 4;
		}
		if argument1 = 6
		{
		item_name__ = "Mechanic backpack"
		xsize__ = 3;
		ysize__ = 4;
		}
	}
	
	

give_item_inv(argument0,argument1,argument2,xsize__,ysize__,argument4,argument5,argument6,bg_col__,item_name__,argument3,item_maximum_stacks__,1,short_name__)
}