if (room_start( rmStart ))
{
	var anim = global.ctsAnims[ global.ctsType, global.ctsPos ];
	var actor = anim[0];
	var type = anim[1];
	var data = anim[2];
	
	//animate based on type
	switch (type) 
	{
		case atype.move:
		//get data
		var dist = data[0];
		var dir = data[1];
		
		//move actor
		actor.spd = actor.moveSpeed;
		actor.dir = dir;
		
		//add to movedist
		actor.movedDist += actor.spd;
		
		//end
		if (actor.movedDist >= dist)
		{
			global.ctsPos++;
			
			//reset movemt
			actor.spd = 0;
			actor.movedDit = 0;
		}
	break;
	}
	
	//endcutscene
	if (global.ctsPos >= array_length_2d( global.ctsAnims, global.ctsType ))
	{
		global.ctsPos = -1;
		global.ctsType = 1;
	}
}