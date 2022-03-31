--[[
    Made by ₷orus#8059
    Credits : pred14 - For ping and thanks to your code to better understand the API
    Get Good Get Lmaobox.
]]




local consolas = draw.CreateFont("Consolas", 17, 500)
local prefix = "!"
local EnableInformation = true

engine.Notification("Current Prefix " .. prefix .. " Enjoy the script")

-- =================[Globals variables]=================[


if(entities.GetLocalPlayer() == nil) then
    return
else
    local localPlr = entities.GetLocalPlayer();

    local info = client.GetPlayerNameByIndex( localPlr:GetIndex());
end

local detect = 0
-- Avoid error and check if LocalPlayer exist, if yes i define localPtr and Info, detect => DetectMessage



local function DrawToScreen()
    -- Start Function
draw.SetFont(consolas)

if(EnableInformation == true) then

if(engine.Con_IsVisible() == true) then
    draw.Color(0,255,0,255)
    draw.Text(5,5,"Console Enable")
    -- Draw Color and change text to => "Console Enable" with green color
end

if(engine.Con_IsVisible() == false) then 
    draw.Color(255,0,0,255)
    draw.Text(5,1,"Console Disable")
    -- Draw Color and change text to => "Console Disable" with red color
end

if(entities.GetLocalPlayer() == nil) then
    return
    -- Avoid error in console when Player is not on a game.
end

local activeWeapon = entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon")
-- Get ActiveWeapon and check Weapons

local WeaponID = activeWeapon:GetPropInt("m_iItemDefinitionIndex")
if(WeaponID == nil) then
    return
end

local WeaponName = itemschema.GetItemDefinitionByID(WeaponID):GetName()



if(WeaponID == 200) then
    WeaponName = "Scattergun"
end
if(WeaponID == 13) then
    WeaponName = "Scattergun"
end

if(WeaponID == 209) then
    WeaponName = "Pistol"
end

if(WeaponID == 22) then
    WeaponName = "Pisol"
end
if(WeaponID == 190) then
    WeaponName = "Bat"
end
if(WeaponID == 0) then
    WeaponName = "Bat"
end

-- Scout



if(WeaponID == 205) then
    WeaponName = "Rocket Launcher"
end
if(WeaponID == 18) then
    WeaponName = "Rocket Launcher"
end

if(WeaponID == 199) then
WeaponName = "Shotgun"
end


if(WeaponID == 10) then
    WeaponName = "Shotgun"
    end

if(WeaponID == 196) then
WeaponName = "Shovel"
end
if(WeaponID == 6) then
    WeaponName = "Shovel"
    end
-- Soldier

if(WeaponID == 208) then
WeaponName = "Flame Thrower"
end
if(WeaponID == 21) then
    WeaponName = "Flame Thrower"
end

if(WeaponID == 192) then
    WeaponName = "Fire Axe"
end
if(WeaponID == 2) then
    WeaponName = "Fire Axe"
end
 -- Pyro


if(WeaponID == 206) then
    WeaponName = "Grenade Launcher"
end
if(WeaponID == 19) then
    WeaponName = "Grenade Launcher"
end

if(WeaponID == 207) then
   WeaponName  = "Stickybomb Launcher" 
end

if(WeaponID == 20) then
    WeaponName  = "Stickybomb Launcher" 
 end

if(WeaponID == 191) then
    WeaponName = "Bottle"
end
if(WeaponID == 1) then
    WeaponName = "Bottle"
end
-- Demoman

if(WeaponID == 202) then
    WeaponName = "Minigun"
    end
    if(WeaponID == 15) then
        WeaponName = "Minigun"
        end
if(WeaponID == 11) then
    WeaponName = "Shotgun"
end
if(WeaponID == 12) then
    WeaponName = "Shotgun"
end
if(WeaponID == 195) then
    WeaponName = "Fists"
end

if(WeaponID == 5) then
    WeaponName = "Fists"
end

-- Heavy 
if(WeaponID == 9) then
    WeaponName = "Shotgun"
end

if(WeaponID == 197) then
    WeaponName = "Wrench"
end

if(WeaponID == 7) then
    WeaponName = "Wrench"
end

if(WeaponID == 25) then
    WeaponName = "PDA"
end
if(WeaponID == 26) then
    WeaponName = "Destruction PDA"
end

-- Engineer

if(WeaponID == 204 ) then
    WeaponName = "Syringe Gun"
end

if(WeaponID == 17 ) then
    WeaponName = "Syringe Gun"
end

if(WeaponID == 211) then
    WeaponName = "Medigun"
end

if(WeaponID == 29) then
    WeaponName = "Medigun"
end
if(WeaponID == 198) then
    WeaponName = "Bonesaw"
end 
if(WeaponID == 8) then
    WeaponName = "Bonesaw"
end   
if(WeaponID == 28) then
    WeaponName = "Builder"
end
-- Medic

if(WeaponID == 201 ) then
    WeaponName = "Sniper Rifle"
end
if(WeaponID == 14 ) then
    WeaponName = "Sniper Rifle"
end

if(WeaponID == 203) then
    WeaponName = "SMG"
end
if(WeaponID == 16) then
    WeaponName = "SMG"
end
if(WeaponID == 193) then
    WeaponName = "Kukri"
end  
if(WeaponID == 3) then
    WeaponName = "Kukri"
end  
-- Sniper

if(WeaponID == 210 ) then
    WeaponName = "Revolver"
end
if(WeaponID == 24 ) then
    WeaponName = "Revolver"
end
if(WeaponID == 735) then
    WeaponName = "Sapper"
end
if(WeaponID == 194) then
    WeaponName = "Knife"
end  
if(WeaponID == 4) then
    WeaponName = "Knife"
end  
if(WeaponID == 27) then
    WeaponName = "Disguise Kit"
end

-- Spy

draw.Color(47, 111, 90, 255)
draw.Text(5,20,"Current Weapon: ")
-- Draw Current Weapon

draw.Color(39, 67, 211,255)
draw.Text(130,20, WeaponName)

-- Draw the Weapon WeaponName

draw.Color( 47, 111, 90, 255)
draw.Text(5,40,"Current ID:")

-- Draw Current ID

draw.Color(238, 222, 47, 255)
draw.Text(105,40, WeaponID)
else
    return
    end
end



-- Detect Message
local function DetectMessage(msg)
 if msg:GetID() == SayText2 then
        msg:SetCurBit(8)
    

        local chatType = msg:ReadString(256)
        local playerName = msg:ReadString(256)
        local message = msg:ReadString(256)         
                 

        if string.find(message, "is a cheater") or string.find(message, "cheater") or string.find(message, "kick him") or string.find(message, "cheater") or string.find(message, "kick " .. info) then
      detect = 1
        end -- Check every message send, and find cheaters and accuse words, and set detect to 1
    end

  

end

local function AutoKick(ev)

    
    local casual = party.GetAllMatchGroups()["Casual"]
    if(detect == 1) then
        detect = 0 
    local victim_remains = ev:GetInt("userid")
  --  client.Command("callvote kick " .. victim_remains)
    print("Nigger detected !")
    
  end


if(ev:GetName() == "party_chat") then
    local eventMessage = ev:GetString("text")
    local steamID = ev:GetString("steamid")
   if(eventMessage == prefix .. "time" or eventMessage == prefix .. "ti") then
    local issou = os.date("%X")
    client.Command("tf_party_chat \""..issou.. "\"", true)
   end

   if(eventMessage == prefix .. "dice" or eventMessage == prefix .. "d") then
    local random = math.random(1,100)
    local FinalMessage = "Number : " .. random
    client.Command("tf_party_chat \""..FinalMessage.. "\"", true)
   end

    
   if(eventMessage == prefix .. "help" or eventMessage == prefix .. "h") then
    local startqueue = "✅ Start Queue • (" .. prefix .. "startq, " .. prefix .."start, " .. prefix .. "q)"  
    local stopqueue = "✅ Stop Queue • (" .. prefix .. "stopq, " .. prefix .. "stop, " .. prefix .. "sq)"
    local time = "✅ Time • (" .. prefix .. "time ," .. prefix .. "ti)" 
    local dice = "✅ Dice • (" .. prefix .. "dice, " .. prefix .. "d)"
    local members = "✅ Members • (" .. prefix .. "members, " .. prefix .. "mem)" 
    local clearChats = "✅ ClearChat • (" .. prefix .. "clear, " .. prefix .. "cls)"
    local PendingMb = "✅ Pending Members • (" .. prefix .. "pm, " .. prefix .. "pendingmembers)"
    local ping = "✅ Ping • (" .. prefix .. "ping, " .. prefix .. "pi)"
    local ball = "✅ 8ball • (" .. prefix .. "8ball, " .. prefix .. "8b)"
    local map = "✅ Map • (" .. prefix .. "map, " .. prefix .. "ma)"
    local maps = "✅ Maps • (" .. prefix .. "maps, " .. prefix .. "m)"
 --   local RestartQueue = "✅ Restart Queue • (" .. prefix .. "restartq, " .. prefix .. "restart, " .. prefix .. "rq)"
    local changePrefix = "✅ Change Prefix • (" .. prefix .. "changeprefix, " .. prefix .. "cp)"
    client.Command("tf_party_chat \""..time.. "\"", true)
    client.Command("tf_party_chat \""..dice.. "\"", true)
    client.Command("tf_party_chat \""..members.. "\"", true)
    client.Command("tf_party_chat \""..startqueue.. "\"", true)
    client.Command("tf_party_chat \""..stopqueue.. "\"", true)
  --  client.Command("tf_party_chat \""..RestartQueue.. "\"", true)
    client.Command("tf_party_chat \""..clearChats.. "\"", true)
    client.Command("tf_party_chat \""..PendingMb.. "\"", true)
    client.Command("tf_party_chat \""..ping.. "\"", true)
    client.Command("tf_party_chat \""..ball.. "\"", true)
    client.Command("tf_party_chat \""..map.. "\"", true)
    client.Command("tf_party_chat \""..maps.. "\"", true)
    client.Command("tf_party_chat \""..changePrefix.. "\"", true)
   -- Declare and send Help
   end


   if(eventMessage == prefix .. "stop" or eventMessage == prefix .. "stopq" or eventMessage == prefix .. "sq") then
    party.CancelQueue(casual)
    local Sucess = "✅  - Stoped"
    client.Command("tf_party_chat \""..Sucess.. "\"", true)
   end

   if(eventMessage == prefix .. "startq" or eventMessage == prefix .. "start" or eventMessage == prefix .. "q" ) then

    local ErrorMessage = "Can't queue"
    local check = party.CanQueueForMatchGroup(casual)
    if check == true then
    party.QueueUp(casual)
    else
        client.Command("tf_party_chat \""..ErrorMessage.. "\"", true)
    end

   end

   if string.find(eventMessage, prefix .. "changePrefix") or string.find(eventMessage, prefix .. "cp")  then
    if string.find(eventMessage, "✅ Change Prefix") then
    return 
    end

    local steamIDGet = tostring(steam.ToSteamID64(steam.GetSteamID()))
    if(steamID == steamIDGet) then

        local prefixchanged = string.match(eventMessage, "^.*%s(.*)")
        prefix = tostring(prefixchanged)
        local SucessMessage = "The prefix has been successfully changed, Current Prefix : " .. prefix
        client.Command("tf_party_chat \""..SucessMessage.. "\"", true)
    else
        local ErrorMessage = "This command is only for the player who executes the script"
        client.Command("tf_party_chat \""..ErrorMessage.. "\"", true)
    end

end 
if(eventMessage == prefix .. "map" or eventMessage == prefix .. "ma") then
    local ErrorMessage = "Need Args"
    client.Command("tf_party_chat \""..ErrorMessage.. "\"", true)
end
if string.find(eventMessage, prefix .. "map") or string.find(eventMessage, prefix .. "ma") then
    local extracted = string.match(eventMessage, "^.*%s(.*)")
    gamecoordinator.EnumerateQueueMapsHealth( function( map, health )
    if map:GetName() == extracted then
        local Sucess = "✅ • Map Added"
        party.SetCasualMapSelected( map, true )
        client.Command("tf_party_chat \""..Sucess.. "\"", true)
    end
end)

end

if(eventMessage == prefix .. "maps" or eventMessage == prefix .. "m") then
    gamecoordinator.EnumerateQueueMapsHealth( function( map )

    
        if party.IsCasualMapSelected( map ) then
            local msg = map:GetName()
            client.Command("tf_party_chat \"".. msg .."\"", true)
        end
    
    end )
        
end
if(eventMessage == prefix .. "clear" or eventMessage == prefix .. "cls") then
    local msg = "                                                                            "
    client.Command("tf_party_chat \"".. msg .."\"", true)
end
if(eventMessage == prefix .. "pm" or eventMessage == prefix .. "pendingmembers") then
    local errorp = "No pending Members"
local p = table.concat(party.GetPendingMembers())
if(p == "") then
    client.Command("tf_party_chat \""..errorp.. "\"", true)
    return
end
client.Command("tf_party_chat \""..p.. "\"", true)
end
if(eventMessage == prefix .. "ping" or eventMessage == prefix .. "pi") then
    local me = entities.GetLocalPlayer()

    local ping = entities.GetPlayerResources():GetPropDataTableInt("m_iPing")[me:GetIndex()] 
    local message = "Current Ping : " .. ping
    client.Command("tf_party_chat \""..message.. "\"", true)
end
if(eventMessage == prefix .. "8ball" or eventMessage == prefix .. "8b") then
    local err = "Needs args"
   client.Command("tf_party_chat \"".. err .."\"", true)
    return
elseif string.find(eventMessage, prefix .. "8ball") or string.find(eventMessage, prefix .. "8b") then
        if(string.find(eventMessage, "✅ 8ball")) then
            return
        end

         local random = math.random(1,6)
        local answers = {"Yes!", "Probably", "Probably not", "No!", "I'm sure", "I'm not sure"}
      local answersFinal = "Result : " .. answers[random]
      client.Command("tf_party_chat \""..answersFinal.. "\"", true)
end


   if(eventMessage == prefix .."members" or eventMessage == prefix .. "mem") then

  if party.GetLeader() == nil then
    return client.ChatPrintf("\x0700eeffYou are not in party. ")
    end
    local p = table.concat(party.GetMembers())
    
   local x = steam.GetPlayerName(p)
   local send = "Current Members : " .. x .. ", "
   print(send)
   client.Command("tf_party_chat \""..send.. "\"", true)
   end
   
end



end


-- Detect 1 and set Detect => to 0, get the userid of player of the message and call a votekick and print


-- Unregister, and Register Function to callbacks.
callbacks.Unregister("Draw", "drawCon");
callbacks.Unregister("DispatchUserMessage", "DetectMessage")
callbacks.Unregister("FireGameEvent", "Iss")

callbacks.Register("Draw", "drawCon", DrawToScreen);
callbacks.Register("DispatchUserMessage", "DetectMessage", DetectMessage)
callbacks.Register("FireGameEvent", "Iss", AutoKick)
