//variables for movement
	moveDir = 0;
	moveSpd = 1.5;
	xspd = 0;
	yspd = 0;

//sprite control
	centerYOffset = -10;
	centerY = y + centerYOffset; //set in step event

	weaponOffsetDist = 4;
	aimDir = 0; 

	face = 3;
	sprite[0] = sWalkRight;
	sprite[1] = sWalkBack;
	sprite[2] = sWalkLeft;
	sprite[3] = sWalkFront;
	
//weapn info
	shootTimer = 0;
	shootCooldown = 9;
	bulletObj = oWaterBullet;
	weaponLength = sprite_get_bbox_right( sWaterGun );