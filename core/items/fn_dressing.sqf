/*
	File: fn_dressing.sqf
	Author: Johnny Tappia
	
	Description: Handles the function for the dressing item for my custom medic script
*/
if(alive player) then 
	{
		player setVariable ["woundedPlayer",false,false];
		hint "A medic has applied a dressing to your wound."
	};