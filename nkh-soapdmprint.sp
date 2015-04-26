#include <sourcemod>
#include <morecolors>

public OnPluginStart(){
	HookEvent("player_death",Event_player_death);
}
new victim;
new attacker;
new assister;
public Action:Event_player_death(Handle:event,String:name[],bool:Broadcast){
	victim = GetClientOfUserId(GetEventInt(event,"userid"));
	attacker = GetClientOfUserId(GetEventInt(event,"attacker"));
	assister = GetEventInt(event,"assister");
	if(attacker != victim){
		CPrintToChat(victim,"{strange}[nKH!] {white}Your attacker had {community}%i{white} health remaining.",GetClientHealth(attacker));
	}
	
	if(assister > -1){
		CPrintToChat(victim,"{strange}[nKH!] {white}Their assister had {community}%i{white} health remaining.",GetClientHealth(GetClientOfUserId(assister)));
	}

}
public Plugin:myinfo = {
	name = "nKH! Health remaining",
	author = "da_apple",
	description = "\"wiggin\" request",
	url = "http://steamcommunity.com/groups/nokidshere",
	version="1.0"
}