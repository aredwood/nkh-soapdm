#pragma semicolon 1

#include <sourcemod>
#include <tf2>
#include <tf2_stocks>
#include <morecolors>

public Plugin:myinfo = {
	name = "nKH! Extra 'SoapDM' features",
	author = "da_apple",
	description = "adds extra features to 'SoapDM'",
	url = "http://steamcommunity.com/groups/nokidshere",
	version="1.0"
}


public OnPluginStart(){
	RegConsoleCmd("fraglimit",fraglimit);
	RegConsoleCmd("soapstats",soapstats);
	soap_fraglimit = CreateConVar("soap_fraglimit","1200","fraglimit for soap dm");
	new maxClients = GetMaxClients();
	HookEvent("player_death",Event_player_death);					//Grab both killer and victim


	//Accuracy Calc
	HookEvent("player_shoot",Event_player_shoot);
		//accuracy  = player_hurt(attacker) / player_shoot
	HookEvent("player_hurt",Event_player_hurt;


}
/*
	Variables
*/

new Handle:soap_fraglimit = INVALID_HANDLE;
new totalFrags;
new statsToStore = 8;
new statArray[maxClients][statsToStore];
	//0	-	Kills
	//1 -	Deaths
	//2	-	KD

	//3	-	Shots Fired
	//4	-	Shots Hit

	//5	-	Accuracy

	//6	-	Damage
	//7	-	Damage taken
new victim;
new killer;
new baddiewiththepewpewpew;
new hurter;
new hurtee;

public OnClientPutInServer(client){
	for(new tmp = 0; tmp <= statsToStore;tmp++){
		statArray[client][tmp] = 0;
	}
	PrintToConsole(client,"[nKH!] Tracking your stats");
}
public OnClientDisconnect(client){
	for(new tmp = 0; tmp <= statsToStore;tmp++){
		statArray[client][tmp] = 0;
	}
}
public Action:Event_player_hurt(Handle:event,String:name[],bool:Broadcast){
	hurter = GetClientOfUserId(GetEventInt(event,"attacker"));
	//hurtee = GetClientOfUserId(GetEventInt(event,"userid"));

	statArray[hurter][4] = statArray[hurter][4] + 1;
}
public Action:Event_player_shoot(Handle:event,String:name[],bool:Broadcast){
	baddiewiththepewpewpew = GetClientOfUserId(GetEventInt(event,"userid"));
	statArray[baddiewiththepewpewpew][3] = statArray[baddiewiththepewpewpew][3] + 1;
}
public Action:Event_player_death(Handle:event,String:name[],bool:Broadcast){
	killer = GetClientOfUserId(GetEventInt(event,"attacker"));
	victim = GetClientOfUserId(GetEventInt(event,"userid"));

	statArray[killer][0] = statArray[killer][0] + 1;
	statArray[victim][1] = statArray[killer][1] + 1;
}
public Action:fraglimit(client,args){
	switch(GetCmdArgs()){
		case 0:
		{
			CReplyToCommand(client,"{strange}[nKH!] {white}Fraglimit is: {community}%i",GetConVarInt(soap_fraglimit));
			CReplyToCommand(client,"{strange}[nKH!] {white}No. of frags: {community}%i",totalFrags);

		}
		case 1:
		{
			//configure later
		}
		default:
		{
			CReplyToCommand(client,"{strange}[nKH!] {white}Incorrect argruments!");
		}
	}
	return Plugin_Handled;
}
public Action:soapstats(client,args){
	//draw menu
}