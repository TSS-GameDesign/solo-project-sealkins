//movemnt
var hsp = lengthdir_x( spd, dir );
var vsp = lengthdir_y( spd, dir );

x += hsp;
y += vsp;

//sprites
if (spd) 
{
	sprite_index = sWalkRight;
	
	//flip
	image_xscale = sogn( hsp );
	if (image_xscale == 0 ) image_xscale = 1;
}
else
{
	sprite_index = sWalkRightIdle;
}