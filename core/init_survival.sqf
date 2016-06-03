[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};


//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 180;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "You are completely sober.";};
				case (life_intox == 0.08): {hint "You can now legally drive.";};
			};
		};
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 seems intoxicated.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_intox > 0.08} do 
		{
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [round ((1+(life_intox-.1))^10)];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.30};
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
		_obj setPosATL (getPosATL player);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player attachTo [_obj,[0,0,0]];
		[[0,format["%1 has passed out.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 100],false] spawn life_fnc_MP;
		while{life_intox > 0.30} do 
		{
			hint "Your intoxication level is above 0.30 and you are overdosing. Seek immediate treatment or find some stimulants! If you go above 0.40, you may die.";
			sleep 60;
		};
		detach player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "woundedPlayer")};
		life_max_health = .50;
		life_blood = 100;
		while{(player getVariable "woundedPlayer")} do {
			life_thirst =  50;
			life_hunger =  50;
			life_blood = life_blood - 1;
			if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
			sleep 9;
		};
		life_max_health = 1;
	};
};

[] spawn
{
	while{true} do 
	{
		if(life_blood > 90 && life_blood < 98) then
		{
			hint "You have recently been revived by a medic. You need to go to a hospital for further treatment otherwise you may die.";
			sleep 120;
		};
		if(life_blood < 70 && life_blood > 40) then
		{
			hint "You are starting to feel really faint. If you don't get more blood soon you may passout.";
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 30;
			"dynamicBlur" ppEffectEnable false; 
			sleep 60;
		};
		if (life_blood < 30 && life_blood > 0) then			{
			player playMoveNow "AcinPercMstpSnonWnonDnon_agony";
			sleep 3;
			0001 cutText["You have fainted. You need serious medical attention! If you wake up you need to find a medic right away.","BLACK FADED"];
			player playMoveNow "Incapacitated";
			_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
			_obj setPosATL (getPosATL player);
			player attachTo [_obj,[0,0,0]];
			sleep 15;
			player playMoveNow "amovppnemstpsraswrfldnon";
			detach player;
			deleteVehicle _obj;
			sleep 120;
		};
		if (life_blood < 0 && player getVariable "woundedPlayer") then
		{
			player playMoveNow "AcinPercMstpSnonWnonDnon_agony";
			sleep 3;
			player playMoveNow "Incapacitated";
			_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
			_obj setPosATL (getPosATL player);
			player attachTo [_obj,[0,0,0]];
			0002 cutText["You are about to die from blood loss!","BLACK FADED"];
			sleep 10;
			0003 cutText["You are about to die from blood loss!","BLACK FADED"];
			sleep 10;
			0004 cutText["You are about to die from blood loss!","BLACK FADED"];
			sleep 10;
			player playMoveNow "amovppnemstpsraswrfldnon";
			detach player;
			deleteVehicle _obj;
			if (life_blood < 0) then 
			{
				player setDamage 1;
				sleep 10;
				life_blood = 20;
				player setVariable["woundedPlayer",false,false];
			};
		};
	};
};