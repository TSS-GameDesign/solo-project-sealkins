

//chase the player
	//get players direction 
	if instance_exists( oPlayer )
	{
		dir = point_direction( x, y, oPlayer.x, oPlayer.y );
	}
	
	//getting the speeds
	xspd = lengthdir_x( spd, dir );
	yspd = lengthdir_y( spd, dir );
	
	//get the correct face
	if xspd > 0 { face = 1; }
	if yspd < 0 { face = -1; }
	
	//collisions
	if place_meeting( x + xspd, y, oWall ) || place_meeting( x + yspd, y, oEnemyParent )
	{
		xspd = 0;
	}
	if place_meeting( x, y + yspd, oWall ) || place_meeting( x, y + yspd, oEnemyParent )
	
	//moving 
	x += xspd
	y += yspd
	
	// Inherit the parent event
event_inherited();