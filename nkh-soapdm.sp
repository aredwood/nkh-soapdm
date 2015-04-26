#pragma semicolon 1

#include <sourcemod>
#include <morecolors>

public Plugin:myinfo = {
	name = "nKH! detergent",
	author = "da_apple",
	description = "cleans shit",
	url = "http://steamcommunity.com/groups/nokidshere",
	version="1.0"
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


	*/
new healthArray[MAXPLAYERS + 1];

public OnPluginStart(){
	HookEvent("player_hurt",Event_player_hurt);
	HookEvent("player_death",Event_player_death);
	RegConsoleCmd("soapstats",soapstats_menu);
}
//When player loads in, wipe stats.
public OnClientPutInServer(client){
	for(new i = 0; i <= 8;i++){
		statistics[client][i] = 0;
	}
}
//When player disconnects, wipe stats.
public OnClientDisconnect(client){
	for(new i = 0; i <= 8;i++){
		statistics[client][i] = 0;
	}
}

public OnGameFrame()
{
	for(new tmp = 1; tmp <= MaxClients; tmp++){
		if(IsClientInGame(tmp)){
			healthArray[tmp] = GetClientHealth(tmp);
		}
	}
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
}
public Action:Event_player_death(Handle:event,String:name[],bool:Broadcast){
	new victim = GetClientOfUserId(GetEventInt(event,"userid"));
	new killer = GetClientOfUserId(GetEventInt(event,"attacker"));
	new assister = GetEventInt(event,"assister");

	statistics[victim][4] = statistics[victim][4] + 1;
	statistics[killer][2] = statistics[killer][2] + 1;
	if(assister > 0){
		statistics[assister][3] = statistics[assister][3] + 1;
	}
}

public soapstats_menuHandler(Handle:menu,MenuAction:action,argOne,argTwo){
	//We don't really need to handle actions, it's fine it this stays empty.
}
showMenu(client){
	new Handle:menu = CreateMenu(soapstats_menuHandler);
	SetMenuTitle(menu,"nKH! Statistics");
	//Damage
	/*new String:damagePrint[16];
	Format(damagePrint,sizeof(damagePrint),"DMG: %i",statistics[client][0]);
	AddMenuItem(menu,"",damagePrint);

	new String:lineOne[32];
	Format(lineOne,sizeof(lineOne),"DMG: %i      DT: %i",statistics[client][0],statistics[client][1]);
	AddMenuItem(menu,"",lineOne,);
	//DamageTaken
	new String:damageTakenPrint[16];
	Format(damageTakenPrint,sizeof(damageTakenPrint),"DT: %i",statistics[client][1]);
	AddMenuItem(menu,"",damageTakenPrint);
	//Kills
	new String:killsPrint[16];
	Format(killsPrint,sizeof(killsPrint),"K: %i",statistics[client][2]);
	AddMenuItem(menu,"",killsPrint);
	//Assists
	new String:assistsPrint[16];
	Format(assistsPrint,sizeof(assistsPrint),"A: %i",statistics[client][3]);
	AddMenuItem(menu,"",assistsPrint);
	//Deaths
	new String:deathPrint[16];
	Format(deathPrint,sizeof(deathPrint),"D: %i",statistics[client][4]);
	AddMenuItem(menu,"",deathPrint);
	//KD
	new String:KDPrint[16];
	Format(KDPrint,sizeof(KDPrint),"KD: %.2f",(float(statistics[client][2]) / float(statistics[client][4])));
	AddMenuItem(menu,"",KDPrint);*/
	new String:blockOne[128] = "Your stats \n";
		//first line
		new String:damageLine[32];
		Format(damageLine,sizeof(damageLine),"    DMG: %i     DT: %i\n",statistics[client][0],statistics[client][1]);
		StrCat(blockOne,sizeof(blockOne),damageLine);

		//second line
		new String:killDeathLine[32];
		Format(killDeathLine,sizeof(killDeathLine),"    K: %i        D: %i\n",statistics[client][2],statistics[client][4]);
		StrCat(blockOne,sizeof(blockOne),killDeathLine);

		//third line
		new String:assistsKDLine[32];
		Format(assistsKDLine,sizeof(assistsKDLine),"    A: %i       KD: %.2f\n",statistics[client][3],(float(statistics[client][2]) / float(statistics[client][4])));
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