#include <macro.h>
/*
	File: fn_adminDeleteVehicle.sqf
	Author: [midgetgrimm]
	
	Description:
	deletevehicle
*/
if(__GETC__(life_adminlevel) < 5) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

private["_target"];
_target = cursorTarget;
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint "You cannot delete people";};
deleteVehicle _target;
closeDialog 0; 
hint "Object Deleted";