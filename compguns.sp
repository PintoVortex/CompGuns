// []
// Pinto#0001 on discord for help and more
// https://github.com/PintoVortex?tab=repositories
// PINTO @VortexServices
// https://github.com/PintoVortex?tab=repositories
// Pinto#0001 on discord for help and more
// []

#pragma semicolon 1

#define DEBUG
#define PREFIX "\x01[\x09Anubis\x10Community\x01]"

#define PLUGIN_AUTHOR "Pinto"
#define PLUGIN_VERSION "1.0.0"

#include <sourcemod>
#include <sdktools>
#include <sdkhooks>
#include <cstrike>
#include <smlib>
#pragma newdecls required

public Plugin myinfo = 
{
    name = "",
    author = PLUGIN_AUTHOR, // Thank you for all the help WillDick
    description = "This plugin will allow members to use !ak47, !m4a4, !m4a1s",
    version = PLUGIN_VERSION,
    url = ""
};

public void OnPluginStart()
{
    RegConsoleCmd("sm_ak47", Cmd_Ak47, "VIP AK."); // 2700
    RegConsoleCmd("sm_m4a4", Cmd_M4a4, "VIP M4a4"); // 3100
    RegConsoleCmd("sm_m4a1s", Cmd_m4a1s, "VIp M4a1s"); // 2900
}

public Action Cmd_Ak47(int client, int args)
{
    if(!CheckCommandAccess(client, "", ADMFLAG_CUSTOM1, true))
    {
        ReplyToCommand(client, PREFIX "Este comando e uma regalia para os vips.");
    }
    if(!IsPlayerAlive(client))
    {
		ReplyToCommand(client, PREFIX "Tens que estar vivo para executar este comando.");
    }
    else
    {
           if (Client_GetMoney(client) >= 2700)
           {
               GivePlayerItem(client, "weapon_ak47");
               ReplyToCommand(client, PREFIX "Compraste uma AK47 a -2700$ por possuir o estatuto \x04VIP\x01.");
               Client_SetMoney(client, Client_GetMoney(client) - 2700);
           }
        else 
          {
               ReplyToCommand(client, PREFIX "Nao tens dinheiro suficiente \x01.");
          }
   }   
} 

public Action Cmd_M4a4(int client, int args)
{
    if(!CheckCommandAccess(client, "", ADMFLAG_CUSTOM1, true))
    {
        ReplyToCommand(client, PREFIX "Este comando e uma regalia para os vips.");
    }
    if(!IsPlayerAlive(client))
    {
		ReplyToCommand(client, PREFIX "Tens que estar vivo para executar este comando.");
    }
    else
    {
           if (Client_GetMoney(client) >= 3100)
           {
               GivePlayerItem(client, "weapon_m4a1");
               ReplyToCommand(client, PREFIX "Compraste uma M4A4 a -3100$ por possuir o estatuto \x04VIP\x01.");
               Client_SetMoney(client, Client_GetMoney(client) - 3100);
           }
        else 
          {
               ReplyToCommand(client, PREFIX "Nao tens dinheiro suficiente \x01.");
          }
   }   
} 

public Action Cmd_M4a1s(int client, int args)
{
    if(!CheckCommandAccess(client, "", ADMFLAG_CUSTOM1, true))
    {
        ReplyToCommand(client, PREFIX "Este comando e uma regalia para os vips.");
    }
    if(!IsPlayerAlive(client))
    {
		ReplyToCommand(client, PREFIX "Tens que estar vivo para executar este comando.");
    }
    else
    {
           if (Client_GetMoney(client) >= 2900)
           {
               GivePlayerItem(client, "weapon_m4a1_silencer");
               ReplyToCommand(client, PREFIX "Compraste uma M4A4 a -2900$ por possuir o estatuto \x04VIP\x01.");
               Client_SetMoney(client, Client_GetMoney(client) - 2900);
           }
        else 
          {
               ReplyToCommand(client, PREFIX "Nao tens dinheiro suficiente \x01.");
          }
   }   
} 

