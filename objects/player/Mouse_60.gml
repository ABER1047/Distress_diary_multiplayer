/// @description Insert description here
// You can write your code in this editor
sprite_seter --

if sprite_seter < 0
{
sprite_seter = 0
bp_sprite = noone
}
else
{
bp_sprite = asset_get_index("spr_original_bp"+string(sprite_seter))
}