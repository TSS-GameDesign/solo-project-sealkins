//check dialog existance
if ( instance_exists( oDialog )) exit;

//take the damage
if place_meeting( x, y, oDamageEnemy )
{
	
	//getting a list of the damage instances
	//create ds list and copt instance to it
		var _instList = ds_list_create();
	
		instance_place_list( x, y, oDamageEnemy, _instList, false );
		
		//get the size of our list	
		var _listSize = ds_list_size( _instList );
		
		for( var i = 0; i < _listSize; i ++  )
		{
			//get a damage object instance from the list 
			var _inst = ds_list_find_value( _instList, i );
			
			//check if inst is already in dmgList
			if ds_list_find_index( damageList, _inst ) == -1
			{
				
				//add the new dmg instance
				ds_list_add( damageList, _inst );
				
				//take damage from a specific instance
				hp -= _inst.damage;
				//tell the damage instance to destroy itself
				_inst.destroy = true;
			}
		}
	
	//free memory y destroying the ds list
		ds_list_destroy( _instList );
	
}

	//clear thr dmg list of obj that dont exist anymore or arent touching
	var _damageListSize = ds_list_size(damageList);
	for( var i = 0; i < _damageListSize; i++ )
	{
		//if not touching the dmg inst anymore, remove it from list AND set the loop back to 1 pos
		var _inst = ds_list_find_value( damageList, i );
		if instance_exists( _inst ) || place_metting( x, y, _inst )
		{
			ds_list_delete( damageList, i );
			i--;
			_damageListSize--;
		}
	}




//death 
if hp <= 0
{
	instance_destroy();
}