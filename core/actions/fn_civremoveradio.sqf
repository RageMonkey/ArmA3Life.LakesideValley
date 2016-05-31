/*
	File: fn_removeWeaponAction.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Desc:
	Search for weapons
*/

private["_target"];
_target = cursorTarget;
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
hint format ["Removing Radio and GPS"];
sleep 2;
[[],"life_fnc_removePitems",_target,false] spawn life_fnc_MP;