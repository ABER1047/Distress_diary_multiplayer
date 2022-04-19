// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation
function inv_system_close_bp()
{
	if bp_ != noone
	{
	var aa = bp_
		for(var i = 0; i < (aa.max_width); i++)
		{
			for(var ii = 0; ii < (aa.max_height); ii++)
			{
			in_bp_item_spr[i,ii] = aa.in_bp_item_spr[i,ii];
			in_bp_item_img_ind[i,ii] = aa.in_bp_item_img_ind[i,ii];
			in_bp_item_xsize[i,ii] = aa.in_bp_item_xsize[i,ii];
			in_bp_item_ysize[i,ii] = aa.in_bp_item_ysize[i,ii];
			in_bp_item_oxsize[i,ii] = aa.in_bp_item_oxsize[i,ii];
			in_bp_item_oysize[i,ii] = aa.in_bp_item_oysize[i,ii];
			in_bp_item_angle[i,ii] = aa.in_bp_item_angle[i,ii];
			in_bp_item_color[i,ii] = aa.in_bp_item_color[i,ii];
			in_bp_item_name[i,ii] = aa.in_bp_item_name[i,ii];
			in_bp_item_stacks[i,ii] = aa.in_bp_item_stacks[i,ii];
			in_bp_item_max_stacks[i,ii] = aa.in_bp_item_max_stacks[i,ii];
			in_bp_item_sname[i,ii] = aa.in_bp_item_sname[i,ii];
			};
		};
	
	
	var checking_empty_n = 1
		for(var i = 0; i < (aa.max_width); i++)
		{
			for(var ii = 0; ii < (aa.max_height); ii++)
			{
				if in_bp_item_name[i,ii] != -4
				{
				checking_empty_n = 0
				break;
				break;
				}
			};
		};
	
	check_empty = checking_empty_n;

	

	instance_destroy(bp_);
	bp_ = noone;
	}
}