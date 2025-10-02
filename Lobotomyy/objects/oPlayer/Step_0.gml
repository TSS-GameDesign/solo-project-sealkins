//input movement
var rightKey = keyboard_check( ord( "D" ) );
var leftKey = keyboard_check( ord( "A" ) );
var upKey = keyboard_check( ord( "W" ) );
var downKey = keyboard_check( ord( "S" ) );
var shootKey = mouse_check_button( mb_left );



//player movement
#region
	//get the direction
	var _horizKey = rightKey - leftKey; 
	var _vertKey = downKey - upKey;
	moveDir = point_direction( 0, 0, _horizKey, _vertKey);
	
	//get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance( 0, 0, _horizKey, _vertKey );
	_inputLevel = clamp( _inputLevel, 0, 1 );
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x( _spd, moveDir );
	yspd = lengthdir_y( _spd, moveDir );
	
	//colisions
	if place_meeting( x + xspd, y, oWall )
	{
		xspd = 0;
	}
	if place_meeting( x, y + yspd, oSolidWall )
	{
		yspd = 0;
	}
	
	
	//move the player
	x += xspd;
	y += yspd;
	
	//depth
	depth = -bbox_bottom;
	
#endregion

//player aiming
	centerY = y + centerYOffset;
	
	//aim
	aimDir = point_direction( x, centerY, mouse_x, mouse_y );
	
//sprite control
#region
	//make sure the player is facing the correct direction
	face = round( aimDir/90 );
	if face == 4 { face = 0; };
	
	//stop animate
	if xspd == 0 && yspd == 0
	{
		image_index = 0
	}
	
	//set the player sprite
	mask_index = sWalkFront;
	sprite_index = sprite[face];
#endregion

//shoot the weapon
if shootTimer > 0 { shootTimer -= 1; }
if shootKey && shootTimer <= 0 
{
	//reset the timer
	shootTimer = shootCooldown;
	
//shooting
	//create the bullet
	var _xOffset = lengthdir_x( weaponLength + weaponOffsetDist, aimDir );
	var _yOffset = lengthdir_y( weaponLength + weaponOffsetDist, aimDir );
	var _bulletInst = instance_create_depth( x + _xOffset, centerY + _yOffset, depth-100, bulletObj );

	//change bullet dir
	with( _bulletInst )
	{
		dir = other.aimDir;
	}

}