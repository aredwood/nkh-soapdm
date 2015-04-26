/*
** ATTENTION
** THE PRODUCED CODE, IS NOT ABLE TO COMPILE!
** THE DECOMPILER JUST TRIES TO GIVE YOU A POSSIBILITY
** TO LOOK HOW A PLUGIN DOES IT'S JOB AND LOOK FOR
** POSSIBLE MALICIOUS CODE.
**
** ALL CONVERSIONS ARE WRONG! AT EXAMPLE:
** SetEntityRenderFx(client, RenderFx 0);  →  SetEntityRenderFx(client, view_as<RenderFx>0);  →  SetEntityRenderFx(client, RENDERFX_NONE);
*/

 PlVers __version = 5;
 float NULL_VECTOR[3];
 char NULL_STRING[1];
 Extension __ext_core = 72;
 int MaxClients;
 Extension __ext_regex = 2224;
 bool CSkipList[66] =
{
	0, 4, 13421772, 5077314, 16728128, 1635151433, 543451500, 1701407843, 1763734638, 2019910766, 6890784, 1701407811, 622883950, 1936269417, 1953459744, 544106784, 1701667175, 0, 7546113, 1417240915, 846493797, 0, 6582116, 3, 4, 909124871, 88, 3, 29477, 1417240915, 846493797, 0, 1433691463, 1299342707, 1634956133, 2035574119, 25968, 1601465957, 7890025, 1952540771, 0, 1600615277, 1701667182, 0, 1634886000, 29549, 0, 1634886000, 29549, 0, 1634886000, 29549, 0, 1634886000, 29549, 0, 1717920891, 1953264993, 125, 1, 1717920891, 1953264993, 125, 0, 1634038907, 1819239277
}
 Handle CTrie;
 int CTeamColors[1][3] =
{
	{
		13421772, 5077314, 16728128
	}
	{

Error while write Globals
Details: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: startIndex
Stacktrace:    at System.BitConverter.ToInt32(Byte[] value, Int32 startIndex)
   at Lysis.SourceBuilder.dumpArray(Int32 address, Int32 size)
   at Lysis.SourceBuilder.dumpArray(Variable var, Int32 address, Int32 level)
   at Lysis.SourceBuilder.writeGlobal(Variable var)
   at Lysis.SourceBuilder.writeGlobals()
   at Lysis.LysisDecompiler.Analyze(FileInfo fInfo)
public int __ext_core_SetNTVOptional()
		{
			MarkNativeAsOptional("GetFeatureStatus");
			MarkNativeAsOptional("RequireFeature");
			MarkNativeAsOptional("AddCommandListener");
			MarkNativeAsOptional("RemoveCommandListener");
			MarkNativeAsOptional("BfWriteBool");
			MarkNativeAsOptional("BfWriteByte");
			MarkNativeAsOptional("BfWriteChar");
			MarkNativeAsOptional("BfWriteShort");
			MarkNativeAsOptional("BfWriteWord");
			MarkNativeAsOptional("BfWriteNum");
			MarkNativeAsOptional("BfWriteFloat");
			MarkNativeAsOptional("BfWriteString");
			MarkNativeAsOptional("BfWriteEnt");
			MarkNativeAsOptional("BfWriteAngle");
			MarkNativeAsOptional("BfWriteCoord");
			MarkNativeAsOptional("BfWriteVecCoord");
			MarkNativeAsOptional("BfWriteVecNormal");
			MarkNativeAsOptional("BfWriteAngles");
			MarkNativeAsOptional("BfReadBool");
			MarkNativeAsOptional("BfReadByte");
			MarkNativeAsOptional("BfReadChar");
			MarkNativeAsOptional("BfReadShort");
			MarkNativeAsOptional("BfReadWord");
			MarkNativeAsOptional("BfReadNum");
			MarkNativeAsOptional("BfReadFloat");
			MarkNativeAsOptional("BfReadString");
			MarkNativeAsOptional("BfReadEntity");
			MarkNativeAsOptional("BfReadAngle");
			MarkNativeAsOptional("BfReadCoord");
			MarkNativeAsOptional("BfReadVecCoord");
			MarkNativeAsOptional("BfReadVecNormal");
			MarkNativeAsOptional("BfReadAngles");
			MarkNativeAsOptional("BfGetNumBytesLeft");
			MarkNativeAsOptional("BfWrite.WriteBool");
			MarkNativeAsOptional("BfWrite.WriteByte");
			MarkNativeAsOptional("BfWrite.WriteChar");
			MarkNativeAsOptional("BfWrite.WriteShort");
			MarkNativeAsOptional("BfWrite.WriteWord");
			MarkNativeAsOptional("BfWrite.WriteNum");
			MarkNativeAsOptional("BfWrite.WriteFloat");
			MarkNativeAsOptional("BfWrite.WriteString");
			MarkNativeAsOptional("BfWrite.WriteEntity");
			MarkNativeAsOptional("BfWrite.WriteAngle");
			MarkNativeAsOptional("BfWrite.WriteCoord");
			MarkNativeAsOptional("BfWrite.WriteVecCoord");
			MarkNativeAsOptional("BfWrite.WriteVecNormal");
			MarkNativeAsOptional("BfWrite.WriteAngles");
			MarkNativeAsOptional("BfRead.ReadBool");
			MarkNativeAsOptional("BfRead.ReadByte");
			MarkNativeAsOptional("BfRead.ReadChar");
			MarkNativeAsOptional("BfRead.ReadShort");
			MarkNativeAsOptional("BfRead.ReadWord");
			MarkNativeAsOptional("BfRead.ReadNum");
			MarkNativeAsOptional("BfRead.ReadFloat");
			MarkNativeAsOptional("BfRead.ReadString");
			MarkNativeAsOptional("BfRead.ReadEntity");
			MarkNativeAsOptional("BfRead.ReadAngle");
			MarkNativeAsOptional("BfRead.ReadCoord");
			MarkNativeAsOptional("BfRead.ReadVecCoord");
			MarkNativeAsOptional("BfRead.ReadVecNormal");
			MarkNativeAsOptional("BfRead.ReadAngles");
			MarkNativeAsOptional("BfRead.GetNumBytesLeft");
			MarkNativeAsOptional("PbReadInt");
			MarkNativeAsOptional("PbReadFloat");
			MarkNativeAsOptional("PbReadBool");
			MarkNativeAsOptional("PbReadString");
			MarkNativeAsOptional("PbReadColor");
			MarkNativeAsOptional("PbReadAngle");
			MarkNativeAsOptional("PbReadVector");
			MarkNativeAsOptional("PbReadVector2D");
			MarkNativeAsOptional("PbGetRepeatedFieldCount");
			MarkNativeAsOptional("PbSetInt");
			MarkNativeAsOptional("PbSetFloat");
			MarkNativeAsOptional("PbSetBool");
			MarkNativeAsOptional("PbSetString");
			MarkNativeAsOptional("PbSetColor");
			MarkNativeAsOptional("PbSetAngle");
			MarkNativeAsOptional("PbSetVector");
			MarkNativeAsOptional("PbSetVector2D");
			MarkNativeAsOptional("PbAddInt");
			MarkNativeAsOptional("PbAddFloat");
			MarkNativeAsOptional("PbAddBool");
			MarkNativeAsOptional("PbAddString");
			MarkNativeAsOptional("PbAddColor");
			MarkNativeAsOptional("PbAddAngle");
			MarkNativeAsOptional("PbAddVector");
			MarkNativeAsOptional("PbAddVector2D");
			MarkNativeAsOptional("PbRemoveRepeatedFieldValue");
			MarkNativeAsOptional("PbReadMessage");
			MarkNativeAsOptional("PbReadRepeatedMessage");
			MarkNativeAsOptional("PbAddMessage");
			MarkNativeAsOptional("Protobuf.ReadInt");
			MarkNativeAsOptional("Protobuf.ReadFloat");
			MarkNativeAsOptional("Protobuf.ReadBool");
			MarkNativeAsOptional("Protobuf.ReadString");
			MarkNativeAsOptional("Protobuf.ReadColor");
			MarkNativeAsOptional("Protobuf.ReadAngle");
			MarkNativeAsOptional("Protobuf.ReadVector");
			MarkNativeAsOptional("Protobuf.ReadVector2D");
			MarkNativeAsOptional("Protobuf.GetRepeatedFieldCount");
			MarkNativeAsOptional("Protobuf.SetInt");
			MarkNativeAsOptional("Protobuf.SetFloat");
			MarkNativeAsOptional("Protobuf.SetBool");
			MarkNativeAsOptional("Protobuf.SetString");
			MarkNativeAsOptional("Protobuf.SetColor");
			MarkNativeAsOptional("Protobuf.SetAngle");
			MarkNativeAsOptional("Protobuf.SetVector");
			MarkNativeAsOptional("Protobuf.SetVector2D");
			MarkNativeAsOptional("Protobuf.AddInt");
			MarkNativeAsOptional("Protobuf.AddFloat");
			MarkNativeAsOptional("Protobuf.AddBool");
			MarkNativeAsOptional("Protobuf.AddString");
			MarkNativeAsOptional("Protobuf.AddColor");
			MarkNativeAsOptional("Protobuf.AddAngle");
			MarkNativeAsOptional("Protobuf.AddVector");
			MarkNativeAsOptional("Protobuf.AddVector2D");
			MarkNativeAsOptional("Protobuf.RemoveRepeatedFieldValue");
			MarkNativeAsOptional("Protobuf.ReadMessage");
			MarkNativeAsOptional("Protobuf.ReadRepeatedMessage");
			MarkNativeAsOptional("Protobuf.AddMessage");
			VerifyCoreVersion();
			return 0;
		}

bool StrEqual(char str1[], char str2[], bool caseSensitive)
		{
			return strcmp(str1, str2, caseSensitive) == 0;
		}

int CharToLower(int chr)
		{
			if (IsCharUpper(chr))
			{
				return chr | 32;
			}
			return chr;
		}

Handle StartMessageOne(char msgname[], int client, int flags)
		{
			int players[1];
			players[0] = client;
			return StartMessage(msgname, players, 1, flags);
		}

int CPrintToChat(int client, char message[])
		{
			CCheckTrie();
			int var1;
			if (client <= 0)
			{
				ThrowError("Invalid client index %i", client);
			}
			if (!IsClientInGame(client))
			{
				ThrowError("Client %i is not in game", client);
			}
			char buffer[1024];
			char buffer2[1024];
			SetGlobalTransTarget(client);
			Format(buffer, 1024, "\x01%s", message);
			VFormat(buffer2, 1024, buffer, 3);
			CReplaceColorCodes(buffer2, 0, false, 1024);
			CSendMessage(client, buffer2, 0);
			return 0;
		}

int CSendMessage(int client, char message[], int author)
		{
			if (!author)
			{
				author = client;
			}
			char buffer[256];
			char game[16];
			GetGameFolderName(game, 16);
			strcopy(buffer, 256, message);
			UserMsg index = GetUserMessageId("SayText2");
			if (index == UserMsg -1)
			{
				if (StrEqual(game, "dod", true))
				{
					int team = GetClientTeam(author);
					if (team)
					{
						char temp[16];
						int var2 = CTeamColors;
						Format(temp, 16, "\x07%06X", var2[0][0][var2][team + -1]);
						ReplaceString(buffer, 256, "\x03", temp, false);
					}
					else
					{
						ReplaceString(buffer, 256, "\x03", "\x04", false);
					}
				}
				PrintToChat(client, "%s", buffer);
				return 0;
			}
			Handle buf = StartMessageOne("SayText2", client, 132);
			int var1;
			if (GetFeatureStatus(FeatureType 0, "GetUserMessageType"))
			{
				PbSetInt(buf, "ent_idx", author, -1);
				PbSetBool(buf, "chat", true, -1);
				PbSetString(buf, "msg_name", buffer, -1);
				PbAddString(buf, "params", "");
				PbAddString(buf, "params", "");
				PbAddString(buf, "params", "");
				PbAddString(buf, "params", "");
			}
			else
			{
				BfWriteByte(buf, author);
				BfWriteByte(buf, 1);
				BfWriteString(buf, buffer);
			}
			EndMessage();
			return 0;
		}

int CCheckTrie()
		{
			if (!CSkipList[0][0][0])
			{
				CSkipList[0] = InitColorTrie();
			}
			return 0;
		}


/* ERROR! Unrecognized opcode stradjust_pri */
 function "CReplaceColorCodes" (number 7)
int CStrToLower(char buffer[])
{
	int len = strlen(buffer);
	int i = 0;
	while (i < len)
	{
		buffer[i] = CharToLower(buffer[i]);
		i++;
	}
	return 0;
}

Handle InitColorTrie()
{
	Handle hTrie = CreateTrie();
	SetTrieValue(hTrie, "aliceblue", any 15792383, true);
	SetTrieValue(hTrie, "allies", any 5077314, true);
	SetTrieValue(hTrie, "ancient", any 15420235, true);
	SetTrieValue(hTrie, "antiquewhite", any 16444375, true);
	SetTrieValue(hTrie, "aqua", any 65535, true);
	SetTrieValue(hTrie, "aquamarine", any 8388564, true);
	SetTrieValue(hTrie, "arcana", any 11396444, true);
	SetTrieValue(hTrie, "axis", any 16728128, true);
	SetTrieValue(hTrie, "azure", any 32767, true);
	SetTrieValue(hTrie, "beige", any 16119260, true);
	SetTrieValue(hTrie, "bisque", any 16770244, true);
	SetTrieValue(hTrie, "black", any 0, true);
	SetTrieValue(hTrie, "blanchedalmond", any 16772045, true);
	SetTrieValue(hTrie, "blue", any 10079487, true);
	SetTrieValue(hTrie, "blueviolet", any 9055202, true);
	SetTrieValue(hTrie, "brown", any 10824234, true);
	SetTrieValue(hTrie, "burlywood", any 14596231, true);
	SetTrieValue(hTrie, "cadetblue", any 6266528, true);
	SetTrieValue(hTrie, "chartreuse", any 8388352, true);
	SetTrieValue(hTrie, "chocolate", any 13789470, true);
	SetTrieValue(hTrie, "collectors", any 11141120, true);
	SetTrieValue(hTrie, "common", any 11584473, true);
	SetTrieValue(hTrie, "community", any 7385162, true);
	SetTrieValue(hTrie, "coral", any 16744272, true);
	SetTrieValue(hTrie, "cornflowerblue", any 6591981, true);
	SetTrieValue(hTrie, "cornsilk", any 16775388, true);
	SetTrieValue(hTrie, "corrupted", any 10693678, true);
	SetTrieValue(hTrie, "crimson", any 14423100, true);
	SetTrieValue(hTrie, "cyan", any 65535, true);
	SetTrieValue(hTrie, "darkblue", any 139, true);
	SetTrieValue(hTrie, "darkcyan", any 35723, true);
	SetTrieValue(hTrie, "darkgoldenrod", any 12092939, true);
	SetTrieValue(hTrie, "darkgray", any 11119017, true);
	SetTrieValue(hTrie, "darkgrey", any 11119017, true);
	SetTrieValue(hTrie, "darkgreen", any 25600, true);
	SetTrieValue(hTrie, "darkkhaki", any 12433259, true);
	SetTrieValue(hTrie, "darkmagenta", any 9109643, true);
	SetTrieValue(hTrie, "darkolivegreen", any 5597999, true);
	SetTrieValue(hTrie, "darkorange", any 16747520, true);
	SetTrieValue(hTrie, "darkorchid", any 10040012, true);
	SetTrieValue(hTrie, "darkred", any 9109504, true);
	SetTrieValue(hTrie, "darksalmon", any 15308410, true);
	SetTrieValue(hTrie, "darkseagreen", any 9419919, true);
	SetTrieValue(hTrie, "darkslateblue", any 4734347, true);
	SetTrieValue(hTrie, "darkslategray", any 3100495, true);
	SetTrieValue(hTrie, "darkslategrey", any 3100495, true);
	SetTrieValue(hTrie, "darkturquoise", any 52945, true);
	SetTrieValue(hTrie, "darkviolet", any 9699539, true);
	SetTrieValue(hTrie, "deeppink", any 16716947, true);
	SetTrieValue(hTrie, "deepskyblue", any 49151, true);
	SetTrieValue(hTrie, "dimgray", any 6908265, true);
	SetTrieValue(hTrie, "dimgrey", any 6908265, true);
	SetTrieValue(hTrie, "dodgerblue", any 2003199, true);
	SetTrieValue(hTrie, "exalted", any 13421773, true);
	SetTrieValue(hTrie, "firebrick", any 11674146, true);
	SetTrieValue(hTrie, "floralwhite", any 16775920, true);
	SetTrieValue(hTrie, "forestgreen", any 2263842, true);
	SetTrieValue(hTrie, "frozen", any 4817843, true);
	SetTrieValue(hTrie, "fuchsia", any 16711935, true);
	SetTrieValue(hTrie, "fullblue", any 255, true);
	SetTrieValue(hTrie, "fullred", any 16711680, true);
	SetTrieValue(hTrie, "gainsboro", any 14474460, true);
	SetTrieValue(hTrie, "genuine", any 5076053, true);
	SetTrieValue(hTrie, "ghostwhite", any 16316671, true);
	SetTrieValue(hTrie, "gold", any 16766720, true);
	SetTrieValue(hTrie, "goldenrod", any 14329120, true);
	SetTrieValue(hTrie, "gray", any 13421772, true);
	SetTrieValue(hTrie, "grey", any 13421772, true);
	SetTrieValue(hTrie, "green", any 4128574, true);
	SetTrieValue(hTrie, "greenyellow", any 11403055, true);
	SetTrieValue(hTrie, "haunted", any 3732395, true);
	SetTrieValue(hTrie, "honeydew", any 15794160, true);
	SetTrieValue(hTrie, "hotpink", any 16738740, true);
	SetTrieValue(hTrie, "immortal", any 14986803, true);
	SetTrieValue(hTrie, "indianred", any 13458524, true);
	SetTrieValue(hTrie, "indigo", any 4915330, true);
	SetTrieValue(hTrie, "ivory", any 16777200, true);
	SetTrieValue(hTrie, "khaki", any 15787660, true);
	SetTrieValue(hTrie, "lavender", any 15132410, true);
	SetTrieValue(hTrie, "lavenderblush", any 16773365, true);
	SetTrieValue(hTrie, "lawngreen", any 8190976, true);
	SetTrieValue(hTrie, "legendary", any 13839590, true);
	SetTrieValue(hTrie, "lemonchiffon", any 16775885, true);
	SetTrieValue(hTrie, "lightblue", any 11393254, true);
	SetTrieValue(hTrie, "lightcoral", any 15761536, true);
	SetTrieValue(hTrie, "lightcyan", any 14745599, true);
	SetTrieValue(hTrie, "lightgoldenrodyellow", any 16448210, true);
	SetTrieValue(hTrie, "lightgray", any 13882323, true);
	SetTrieValue(hTrie, "lightgrey", any 13882323, true);
	SetTrieValue(hTrie, "lightgreen", any 10092441, true);
	SetTrieValue(hTrie, "lightpink", any 16758465, true);
	SetTrieValue(hTrie, "lightsalmon", any 16752762, true);
	SetTrieValue(hTrie, "lightseagreen", any 2142890, true);
	SetTrieValue(hTrie, "lightskyblue", any 8900346, true);
	SetTrieValue(hTrie, "lightslategray", any 7833753, true);
	SetTrieValue(hTrie, "lightslategrey", any 7833753, true);
	SetTrieValue(hTrie, "lightsteelblue", any 11584734, true);
	SetTrieValue(hTrie, "lightyellow", any 16777184, true);
	SetTrieValue(hTrie, "lime", any 65280, true);
	SetTrieValue(hTrie, "limegreen", any 3329330, true);
	SetTrieValue(hTrie, "linen", any 16445670, true);
	SetTrieValue(hTrie, "magenta", any 16711935, true);
	SetTrieValue(hTrie, "maroon", any 8388608, true);
	SetTrieValue(hTrie, "mediumaquamarine", any 6737322, true);
	SetTrieValue(hTrie, "mediumblue", any 205, true);
	SetTrieValue(hTrie, "mediumorchid", any 12211667, true);
	SetTrieValue(hTrie, "mediumpurple", any 9662680, true);
	SetTrieValue(hTrie, "mediumseagreen", any 3978097, true);
	SetTrieValue(hTrie, "mediumslateblue", any 8087790, true);
	SetTrieValue(hTrie, "mediumspringgreen", any 64154, true);
	SetTrieValue(hTrie, "mediumturquoise", any 4772300, true);
	SetTrieValue(hTrie, "mediumvioletred", any 13047173, true);
	SetTrieValue(hTrie, "midnightblue", any 1644912, true);
	SetTrieValue(hTrie, "mintcream", any 16121850, true);
	SetTrieValue(hTrie, "mistyrose", any 16770273, true);
	SetTrieValue(hTrie, "moccasin", any 16770229, true);
	SetTrieValue(hTrie, "mythical", any 8931327, true);
	SetTrieValue(hTrie, "navajowhite", any 16768685, true);
	SetTrieValue(hTrie, "navy", any 128, true);
	SetTrieValue(hTrie, "normal", any 11711154, true);
	SetTrieValue(hTrie, "oldlace", any 16643558, true);
	SetTrieValue(hTrie, "olive", any 10404687, true);
	SetTrieValue(hTrie, "olivedrab", any 7048739, true);
	SetTrieValue(hTrie, "orange", any 16753920, true);
	SetTrieValue(hTrie, "orangered", any 16729344, true);
	SetTrieValue(hTrie, "orchid", any 14315734, true);
	SetTrieValue(hTrie, "palegoldenrod", any 15657130, true);
	SetTrieValue(hTrie, "palegreen", any 10025880, true);
	SetTrieValue(hTrie, "paleturquoise", any 11529966, true);
	SetTrieValue(hTrie, "palevioletred", any 14184595, true);
	SetTrieValue(hTrie, "papayawhip", any 16773077, true);
	SetTrieValue(hTrie, "peachpuff", any 16767673, true);
	SetTrieValue(hTrie, "peru", any 13468991, true);
	SetTrieValue(hTrie, "pink", any 16761035, true);
	SetTrieValue(hTrie, "plum", any 14524637, true);
	SetTrieValue(hTrie, "powderblue", any 11591910, true);
	SetTrieValue(hTrie, "purple", any 8388736, true);
	SetTrieValue(hTrie, "rare", any 4942335, true);
	SetTrieValue(hTrie, "red", any 16728128, true);
	SetTrieValue(hTrie, "rosybrown", any 12357519, true);
	SetTrieValue(hTrie, "royalblue", any 4286945, true);
	SetTrieValue(hTrie, "saddlebrown", any 9127187, true);
	SetTrieValue(hTrie, "salmon", any 16416882, true);
	SetTrieValue(hTrie, "sandybrown", any 16032864, true);
	SetTrieValue(hTrie, "seagreen", any 3050327, true);
	SetTrieValue(hTrie, "seashell", any 16774638, true);
	SetTrieValue(hTrie, "selfmade", any 7385162, true);
	SetTrieValue(hTrie, "sienna", any 10506797, true);
	SetTrieValue(hTrie, "silver", any 12632256, true);
	SetTrieValue(hTrie, "skyblue", any 8900331, true);
	SetTrieValue(hTrie, "slateblue", any 6970061, true);
	SetTrieValue(hTrie, "slategray", any 7372944, true);
	SetTrieValue(hTrie, "slategrey", any 7372944, true);
	SetTrieValue(hTrie, "snow", any 16775930, true);
	SetTrieValue(hTrie, "springgreen", any 65407, true);
	SetTrieValue(hTrie, "steelblue", any 4620980, true);
	SetTrieValue(hTrie, "strange", any 13593138, true);
	SetTrieValue(hTrie, "tan", any 13808780, true);
	SetTrieValue(hTrie, "teal", any 32896, true);
	SetTrieValue(hTrie, "thistle", any 14204888, true);
	SetTrieValue(hTrie, "tomato", any 16737095, true);
	SetTrieValue(hTrie, "turquoise", any 4251856, true);
	SetTrieValue(hTrie, "uncommon", any 11584473, true);
	SetTrieValue(hTrie, "unique", any 16766720, true);
	SetTrieValue(hTrie, "unusual", any 8802476, true);
	SetTrieValue(hTrie, "valve", any 10817401, true);
	SetTrieValue(hTrie, "vintage", any 4678289, true);
	SetTrieValue(hTrie, "violet", any 15631086, true);
	SetTrieValue(hTrie, "wheat", any 16113331, true);
	SetTrieValue(hTrie, "white", any 16777215, true);
	SetTrieValue(hTrie, "whitesmoke", any 16119285, true);
	SetTrieValue(hTrie, "yellow", any 16776960, true);
	SetTrieValue(hTrie, "yellowgreen", any 10145074, true);
	return hTrie;
}

public void OnPluginStart()
{
	HookEvent("player_death", EventHook 1, EventHookMode 1);
	return void 0;
}


/* ERROR! Index was outside the bounds of the array. */
 function "Event_player_death" (number 11)
