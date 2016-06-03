/*
	File: fn_saline.sqf
	Author: Johnny Tappia
	
	Description: Handles using the Saline Bag item for my custom medic script
*/
private["_target"];
_target = cursorTarget;
if (side player == west) exitWith {hint "You must be a EMS to use this item"};
if (side player == civ) exitWith {hint "You must be a EMS to use this item"};
if(player getVariable "salineUsed") exitWith {hint "You have recently used a Saline Bag and must wait to use another."};
if(alive player) then
	{
	life_action_inUse = true;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		[[],"life_fnc_saline",_target,false] call BIS_fnc_MP;
		life_action_inUse = false;
		player setVariable ["salineUsed",true, false];
		hint "You have just used a saline bag on the patient";
		sleep 300;
		player setVariable ["salineUsed",false, false];
	};