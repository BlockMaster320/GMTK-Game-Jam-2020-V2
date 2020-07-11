#macro TL_SIZE 16
#macro guiW 256
#macro guiH 144
hsp = 0
vsp = 0
spd = 4
moveDir = 0
tilemap = layer_tilemap_get_id("tlWalls")
hit = false

//KEYBOARD INPUT CONTROL SETUP//
//Crate Keyboard Key Array
keyLetters = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P",	//9
			  "A", "S", "D", "F", "G", "H", "J", "K", "L", //18
			  "Z", "X", "C", "V", "B", "N", "M"];	//25
keyArray[array_length_1d(keyLetters) - 1] = 0;

for (var _i = 0; _i < array_length_1d(keyLetters); _i ++)
{
	var _keyLetter = keyLetters[_i];
	var _isActive = true;
	var _positionIndex = _i;
	
	var _keyInfo = [_keyLetter, _isActive, _positionIndex];
	keyArray[_i] = _keyInfo;
}

//Set Key Change Variables
lastKeyInfo = keyArray[14];
lastKeyInput = 0;	//0 - right; 1 - left; 2 - up; 3 - down; 4 - ability1; 5 - ability2; 6 - ability3;
keyChange = false;

//Set Key Input Variables
keyRight = keyArray[14];
keyLeft = keyArray[12];
keyUp = keyArray[3];
keyDown = keyArray[13];
keyAbility1 = keyArray[17];
keyAbility2 = keyArray[8];
keyAbility3 = keyArray[9];

//Set Global Pause Variable
global.pause = false;