/*
	File: fn_saline.sqf
	Author: Johnny Tappia
	
	Description: Handles using the Saline Bag function for my custom medic script
*/
if(alive player) then 
{
life_blood = life_blood + 15;
hint "A medic has just used a Saline Bag on you.";
};
