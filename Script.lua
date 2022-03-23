
---@diagnostic disable: undefined-global, empty-block, unused-local


local consolas = draw.CreateFont("Consolas", 17, 500)
local name

if(entities.GetLocalPlayer() == nil) then
    return
else
    local localPlr = entities.GetLocalPlayer();

    local info = client.GetPlayerNameByIndex( localPlr:GetIndex());
end


local detect = 0




local function DrawToScreen()
    -- Start Function
draw.SetFont(consolas)
if(engine.Con_IsVisible() == true) then
    draw.Color(0,255,0,255)
    draw.Text(5,5,"Console Enable")
end

if(engine.Con_IsVisible() == false) then 
    draw.Color(255,0,0,255)
    draw.Text(5,1,"Console Disable")
end

if(entities.GetLocalPlayer() == nil) then
    return
    -- Avoid error in console when Player is not on a game.
end

local activeWeapon = entities.GetLocalPlayer():GetPropEntity("m_hActiveWeapon")


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

end




local function DetectMessage(msg)
 if msg:GetID() == SayText2 then
        msg:SetCurBit(8)
    

        local chatType = msg:ReadString(256)
        local playerName = msg:ReadString(256)
        local message = msg:ReadString(256)
    
        if string.find(message, "is a cheater") or string.find(message, "cheater") or string.find(message, "kick him") or string.find(message, "cheater") or string.find(message, "kick " .. info) then
      detect = 1
        end
    end


end

local function AutoKick(ev)
    if(detect == 1) then
        detect = 0
    local RetardLegit = ev:GetInt("userid")
    client.Command("callvote kick " .. RetardLegit)
    print("Nigger detected !")
    
  end
end

 
-- Unregister, and Register Function to callbacks.
callbacks.Unregister("Draw", "drawCon");
callbacks.Unregister("DispatchUserMessage", "DetectMessage")

callbacks.Register("Draw", "drawCon", DrawToScreen);
callbacks.Register("DispatchUserMessage", "DetectMessage", DetectMessage)

callbacks.Register("FireGameEvent", "Iss", AutoKick)
