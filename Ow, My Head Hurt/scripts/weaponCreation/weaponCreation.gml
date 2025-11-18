//custructer template for weapons
function create_weapon( _sprite = sWaterGun, _weaponLength = 0, _bulletObj = oWaterBullet, _cooldown = 1, _bulletNum = 1, _spread = 0 ) constructor
{
	
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _bulletNum;
	spread = _spread;
	
}

//weapon inventory 
global.PlayerWeapons = array_create(0); 


//weapons

global.WeaponList = {
	
waterGun : new create_weapon(
	sWaterGun,
	sprite_get_bbox_right( sWaterGun ) - sprite_get_xoffset( sWaterGun ),
	oWaterBullet,
	30,
	1, 
	0 ),
	
remoteGun : new create_weapon(
	sRemoteGun,
	sprite_get_bbox_right( sRemoteGun ) - sprite_get_xoffset( sRemoteGun ),
	oLaser,
	40, 
	1, 
	0 ), 
	
toasterGun : new create_weapon(
	sToaster,
	sprite_get_bbox_right( sToaster ) - sprite_get_xoffset( sToaster ),
	oBread,
	16, 
	2, 
	40 ) 
	
}