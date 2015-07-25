#pragma semicolon 1

#include <sourcemod>
#include <morecolors>

public Plugin:myinfo = {
	name = "nKH! DM Statistics",
	author = "da_apple",
	description = "11.4g of sugar, per 30g of fruit loops",
	url = "http://steamcommunity.com/groups/nokidshere",
	version="6.9"
}
/*
	Global Variables.
*/
new statistics[65][9];
	/*
		- 0 Damage
		- 1 Damage Taken
		- 2 Kills
		- 3 Assists
		- 4 Deaths
		- 5 Shots Fires
		- 6 Shots Hit
		- 7 Minutes
		//ADD KPD,DPM,SHR

	*/
new healthArray[MAXPLAYERS + 1];

public OnPluginStart(){
	HookEvent("player_hurt",Event_player_hurt);
	HookEvent("player_death",Event_player_death);
	RegConsoleCmd("soapstats",soapstats_menu);
	HookEvent("player_shoot",Event_player_shoot);
	HookEvent("teamplay_round_win",Event_teamplayer_round_win);
	CreateTimer(60.0,timeCounter,_,TIMER_REPEAT);
	//CreateTimer(5.0,calcTop,_,TIMER_REPEAT);
}
new minutes = 1;
public Action:timeCounter(Handle:timer){
	for(new i = 0; i < MAXPLAYERS; i++){
		statistics[i][7] += 1;
	}
}
//When player loads in, wipe stats.
public OnClientPutInServer(client){
	for(new i = 0; i < 9;i++){
		statistics[client][i] = 0;
	}
}
//When player disconnects, wipe stats.
public OnClientDisconnect(client){
	for(new i = 0; i < 9;i++){
		statistics[client][i] = 0;
	}
}
//Update health array every tick
public OnGameFrame(){
	for(new tmp = 1; tmp <= MaxClients; tmp++){
		if(IsClientInGame(tmp)){
			healthArray[tmp] = GetClientHealth(tmp);
		}
	}
}
public Action:Event_player_shoot(Handle:event,String:name[],bool:Broadcast){
	new shooter = GetClientOfUserId(GetEventInt(event,"userid"));
	statistics[shooter][5]++;
}
public Action:Event_player_hurt(Handle:event,String:name[],bool:Broadcast){
	new victim = GetClientOfUserId(GetEventInt(event,"userid"));
	new attacker = GetClientOfUserId(GetEventInt(event,"attacker"));
	new victim_health = GetClientHealth(victim);
	new damage;
	if(victim_health == 0){
		damage = healthArray[victim];
	}
	else{
		damage = healthArray[victim] - victim_health;
	}
	
	if(victim != 0){
		if(victim != attacker){
			statistics[victim][1] = statistics[victim][1] + damage;
			statistics[attacker][0] = statistics[attacker][0] + damage;
		}
	}
	statistics[victim][6]++;
}
public Action:Event_player_death(Handle:event,String:name[],bool:Broadcast){
	new victim = GetClientOfUserId(GetEventInt(event,"userid"));
	new killer = GetClientOfUserId(GetEventInt(event,"attacker"));
	new assister = GetEventInt(event,"assister");

	statistics[victim][4]++;
	statistics[killer][2]++;
	if(assister > 0){
		statistics[assister][3]++;
	}
}	

public soapstats_menuHandler(Handle:menu,MenuAction:action,argOne,argTwo){
	//We don't really need to handle actions, it's fine if this stays empty.
}
align(String:inputString[64]){
	new needed = 16 - StrContains(inputString,"-",false);
	switch(needed){
		case 1:
		{
			ReplaceString(inputString,sizeof(inputString),"-","  ",false);
		}
		case 2:
		{
			ReplaceString(inputString,sizeof(inputString),"-","   ",false);
		}
		case 3:
		{
			ReplaceString(inputString,sizeof(inputString),"-","    ",false);
		}
		case 4:
		{
			ReplaceString(inputString,sizeof(inputString),"-","     ",false);
		}
		case 5:
		{
			ReplaceString(inputString,sizeof(inputString),"-","      ",false);
		}
		case 6:
		{
			ReplaceString(inputString,sizeof(inputString),"-","       ",false);
		}
		case 7:
		{
			ReplaceString(inputString,sizeof(inputString),"-","        ",false);
		}
		case 8:
		{
			ReplaceString(inputString,sizeof(inputString),"-","         ",false);
		}
		case 9:
		{
			ReplaceString(inputString,sizeof(inputString),"-","          ",false);
		}
		case 10:
		{
			ReplaceString(inputString,sizeof(inputString),"-","            ",false);
		}
		case 11:
		{
			ReplaceString(inputString,sizeof(inputString),"-","             ",false);
		}
		case 12:
		{
			ReplaceString(inputString,sizeof(inputString),"-","              ",false);
		}
		case 13:
		{
			ReplaceString(inputString,sizeof(inputString),"-","               ",false);
		}
		case 14:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                ",false);
		}
		case 15:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                 ",false);
		}
		case 16:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                  ",false);
		}
		case 17:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                   ",false);
		}
		case 18:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                    ",false);
		}
		case 19:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                     ",false);
		}
		case 20:
		{
			ReplaceString(inputString,sizeof(inputString),"-","                      ",false);
		}
	}
	return true;
}
showMenu(client){
	new Handle:menu = CreateMenu(soapstats_menuHandler);
	SetMenuTitle(menu,"nKH! Statistics");





	new String:blockOne[256] = "Your stats \n";
		//first line
		new String:damageLine[64];
		Format(damageLine,sizeof(damageLine),"    DMG: %i -DMG Taken: %i\n",statistics[client][0],statistics[client][1]);
		align(damageLine);
		StrCat(blockOne,sizeof(blockOne),damageLine);

		//second line
		new String:damageCalcLine[64];
		if(statistics[client][4] > 0){
			Format(damageCalcLine,sizeof(damageCalcLine),"    DPM: %.2f -DPD: %.2f\n",(float(statistics[client][0]) / float(statistics[client][7])),(float(statistics[client][0]) / float(statistics[client][4])));
		}
		else{

			Format(damageCalcLine,sizeof(damageCalcLine),"    DPM: %.2f -DPD: 0.00\n",(float(statistics[client][0]) / float(statistics[client][7])));
		}
		align(damageCalcLine);
		StrCat(blockOne,sizeof(blockOne),damageCalcLine);

		//third  line
		new String:killDeathLine[64];
		Format(killDeathLine,sizeof(killDeathLine),"    Kills: %i -Assists: %i\n",statistics[client][2],statistics[client][3]);
		align(killDeathLine);
		StrCat(blockOne,sizeof(blockOne),killDeathLine);

		//fourth line
		new String:assistsKDLine[64];
		if(statistics[client][4] > 0){
			Format(assistsKDLine,sizeof(assistsKDLine),"    Deaths: %i -Kills/Death: %.2f\n",statistics[client][4],(float(statistics[client][2]) / float(statistics[client][4])));
		}
		else{
			Format(assistsKDLine,sizeof(assistsKDLine),"    Deaths: %i -Kills/Death: 0.00",statistics[client][4]);
		}
		
		align(assistsKDLine);
		StrCat(blockOne,sizeof(blockOne),assistsKDLine);

	AddMenuItem(menu,"",blockOne);

	SetMenuExitButton(menu,true);

	//Display
	DisplayMenu(menu,client,30);
}
public Action:soapstats_menu(client,args){
	showMenu(client);
	return Plugin_Handled;

}
public Action:Event_teamplayer_round_win(Handle:event,String:name[],bool:Broadcast){
	for(new i = 0; i <= MAXPLAYERS;i++){
		if(IsClientInGame(i)){
			showMenu(i);
		}
	}
}