//custructer template for weapons
function create_weapon( _sprite = sWaterGun, _weaponLength = 0, _bulletObj = oWaterBullet, _cooldown = 1 ) constructor
{
	
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	
}

//weapon inventory 
global.PlayerWeapons = array_create(0); 


//weapons

global.WeaponList = {
	
waterGun : new create_weapon(
	sWaterGun,
	sprite_get_bbox_right( sWaterGun ) - sprite_get_xoffset( sWaterGun ),
	oWaterBullet,
	30 ),
	
remoteGun : new create_weapon(
	sRemoteGun,
	sprite_get_bbox_right( sRemoteGun ) - sprite_get_xoffset( sRemoteGun ),
	oLaser,
	40 )
	
}