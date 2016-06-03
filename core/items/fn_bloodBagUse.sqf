/*
	File: fn_bloodBag.sqf
	Author: Johnny Tappia
	
	Description: Handles use of the blood bag item for my custom medic script
*/
private["_target","_var"];
_target = cursorTarget;
if (side player == west) exitWith {hint "You must be a EMS to use this item"};
if (side player == civ) exitWith {hint "You must be a EMS to use this item"};
switch (true) do
	{
		case (player distance (getMarkerPos "hospital_marker") < 30): {_var = "1";};
		case (player distance (getMarkerPos "hospital_2") < 75): {_var = "1";};
		case (player distance (getMarkerPos "hospital_3") < 40) : {_var = "1";};
		default {_var = "";};
	};
if(_var == "") then 
	{
		hint "You must be at a hospital to use this item.";
	}
else
	{
		life_action_inUse = true;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
		sleep 6;
		[[],"life_fnc_bloodBag",_target,false] call BIS_fnc_MP;
		hint "You have just used a Blood Bag on the patient";
		life_action_inUse = false;
	};