// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more IMG_INFOrmation

///@param soundid
///@param priority
///@param volume
function play_sfx(arguemnt0,arguemnt1,arguemnt2)
{
var sfx__ = audio_play_sound(arguemnt0,arguemnt1,false)
audio_sound_gain(sfx__,arguemnt2*global.master_volume*global.sfx_volume,0)

return sfx__;
}