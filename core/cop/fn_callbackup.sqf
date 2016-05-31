 /*Script file made by: DelicousPez with help from Johnny Tappia
 Description: Lets a officer request backup by pressing F3 */


if (!alive player) exitWith {};
if(!("ItemGPS" in (assignedItems  player))) exitWith {hint "Since you dont have a GPS, you can't click a panic button."};
if(life_panic) exitWith {hint "You have recently used your Panic Button"};
[format["%1 has activated their panic button at %2",name player, mapGridPosition player],"hint",west,false] call BIS_fnc_MP;
life_panic = true;
sleep 300;
hint format ["%1 You can now use your Panic Button again.",name player];
life_panic = false;
