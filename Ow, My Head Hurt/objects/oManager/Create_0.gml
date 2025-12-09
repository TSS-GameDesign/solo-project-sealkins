//var
global.ctsPos = -1;
global.ctsType = -1;

global.ctsAnims = [];

//cutscenes
enum cts
{
	test
}

//action types 
enum atype
{
	move
}

//cutscene: test
addAnim(cts.test, oWalkRightIdle, atype.move, [64, 0]);

//start
cutsceneStart( cts.test );