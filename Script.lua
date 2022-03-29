--[[
    Made by ₷orus#8059
    Credits : pred14 - For ping and thanks to your code to better understand the API
    Get Good Get Lmaobox.
]]


local consolas = draw.CreateFont("Consolas", 17, 500)
local name
local prefix = "!"
local EnableInformation = true
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
name = WeaponName



if(WeaponID == 200) then
    name = "Scattergun"
end

if(WeaponID == 209) then
    name = "Pistol"
end
if(WeaponID == 190) then
    name = "Bat"
end

-- Scout


if(WeaponID == 205) then
    name = "Rocket Launcher"
end

if(WeaponID == 199) then
name = "Shotgun"
end

if(WeaponID == 196) then
name = "Shovel"
end
-- Soldier

if(WeaponID == 208) then
name = "Flame Thrower"
end

if(WeaponID == 192) then
    name = "Fire Axe"
end
 -- Pyro


if(WeaponID == 206) then
    name = "Grenade Launcher"
end

if(WeaponID == 207) then
   name  = "Stickybomb Launcher" 
end

if(WeaponID == 191) then
    name = "Bottle"
end
-- Demoman

if(WeaponID == 202) then
    name = "Minigun"
    end
if(WeaponID == 199) then
    name = "Shotgun"
end
if(WeaponID == 195) then
    name = "Fists"
end

-- Heavy 


if(WeaponID == 197) then
    name = "Wrench"
end
if(WeaponID == 25) then
    name = "PDA"
end
if(WeaponID == 26) then
    name = "Destruction PDA"
end

-- Engineer

if(WeaponID == 204 ) then
    name = "Syringe Gun"
end
if(WeaponID == 211) then
    name = "Medigun"
end
if(WeaponID == 198) then
    name = "Bonesaw"
end  
if(WeaponID == 28) then
    name = "Builder"
end
-- Medic

if(WeaponID == 201 ) then
    name = "Sniper Rifle"
end
if(WeaponID == 203) then
    name = "SMG"
end
if(WeaponID == 193) then
    name = "Kukri"
end  
-- Sniper

if(WeaponID == 210 ) then
    name = "Revolver"
end
if(WeaponID == 735) then
    name = "Sapper"
end
if(WeaponID == 194) then
    name = "Knife"
end  
if(WeaponID == 27) then
    name = "Disguise Kit"
end

-- Spy

draw.Color(47, 111, 90, 255)
draw.Text(5,20,"Current Weapon: ")
-- Draw Current Weapon

draw.Color(39, 67, 211,255)
draw.Text(130,20, name)

-- Draw the Weapon Name

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
    if(detect == 1) then
        detect = 0 
    local victim_remains = ev:GetInt("userid")
  --  client.Command("callvote kick " .. victim_remains)
    print("Nigger detected !")
    
  end


if(ev:GetName() == "party_chat") then
    local eventMessage = ev:GetString("text")
   if(eventMessage == prefix .. "date" ) then
    local issou = os.date("%X")
    client.Command("tf_party_chat \""..issou.. "\"", true)
   end

   if(eventMessage == prefix .. "dice") then
    local random = math.random(1,100)
    client.Command("tf_party_chat \""..random.. "\"", true)
   end

   
   if(eventMessage == prefix .. "help") then
    local help = prefix .. "help : Send this message"
    local startqueue = prefix .. "queue : Start queue"
    local date = prefix .. "date : Send the date"
    local stopqueue = prefix .. "stop : Stop queue"
    local dice = prefix .. "dice : Send a random number beetween 1 and 100"
    local members = prefix .."members : Give current members in the party"
    local clearChats = prefix .. "clear : Clear the party chat"
    local PendingMb = prefix .. "pm : Send Pendings members"
    local ping = prefix .. "ping : Send the ping"
    local ball = prefix .. "8ball : Send Answer"
    client.Command("tf_party_chat \""..help.. "\"", true)
    client.Command("tf_party_chat \""..date.. "\"", true)
    client.Command("tf_party_chat \""..number.. "\"", true)
    client.Command("tf_party_chat \""..members.. "\"", true)
    client.Command("tf_party_chat \""..startqueue.. "\"", true)
    client.Command("tf_party_chat \""..stopqueue.. "\"", true)
    client.Command("tf_party_chat \""..clearChats.. "\"", true)
    client.Command("tf_party_chat \""..PendingMb.. "\"", true)
    client.Command("tf_party_chat \""..ping.. "\"", true)
    client.Command("tf_party_chat \""..ball.. "\"", true)
   -- Declare and send Help
   end

   if(eventMessage == prefix .. "queue") then
    party.QueueUp(7)
   end
   if(eventMessage == prefix .. "stop") then
    party.CancelQueue(7)
end
if(eventMessage == prefix .. "clear") then
    local msg = "                                                                            "
    client.Command("tf_party_chat \"".. msg .."\"", true)
end
if(eventMessage == prefix .. "pm") then
    local errorp = "No pending Members"
local p = table.concat(party.GetPendingMembers())
if(p == "") then
    client.Command("tf_party_chat \""..errorp.. "\"", true)
    return
end
client.Command("tf_party_chat \""..p.. "\"", true)
end
if(eventMessage == prefix .. "ping") then
    local me = entities.GetLocalPlayer()

    local ping = entities.GetPlayerResources():GetPropDataTableInt("m_iPing")[me:GetIndex()] 
    local message = "Current Ping : " .. ping
    client.Command("tf_party_chat \""..message.. "\"", true)
end
if(eventMessage == prefix .. "8ball") then
    local err = "Needs args"
   client.Command("tf_party_chat \"".. err .."\"", true)
    return
elseif string.find(eventMessage,prefix .. "8ball") then
        if(string.find(eventMessage, "8ball : Send Answer")) then
            return
        end

         local random = math.random(1,6)
        local answers = {"Yes!", "Probably", "Probably not", "No!", "I'm sure", "I'm not sure"}
      local answersFinal = "Result : " .. answers[random]
      client.Command("tf_party_chat \""..answersFinal.. "\"", true)
end


   if(eventMessage == prefix .."members") then

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
