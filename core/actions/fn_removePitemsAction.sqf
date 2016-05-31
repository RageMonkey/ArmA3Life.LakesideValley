/*
	File: fn_removeWeaponAction.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Desc:
	Search for weapons
*/

private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
hint "Removing Radio and GPS...";
sleep 2;
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Cannot search that person."};
[[player],"life_fnc_removePitems",_unit,false] spawn life_fnc_MP;