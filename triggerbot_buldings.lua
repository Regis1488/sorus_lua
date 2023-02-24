local function triggerBot(cmd)
    local localPlayer = entities.GetLocalPlayer()
    local vec = Vector3(localPlayer:GetPropFloat("localdata", "m_vecViewOffset[0]"), localPlayer:GetPropFloat("localdata", "m_vecViewOffset[1]"), localPlayer:GetPropFloat("localdata", "m_vecViewOffset[2]"))

    local source = localPlayer:GetAbsOrigin() + vec;
    local destination = source + engine.GetViewAngles():Forward() * 5000;

    local triggerKey = gui.GetValue("Trigger Shoot Key")

    if(input.IsButtonDown(triggerKey)) then
        local trace = engine.TraceLine(source,destination,MASK_SHOT)
        
        if(trace.entity == "CObjectSentrygun" or trace.entity == "CObjectDispenser" or trace.entity == "CObjectTeleporter") then
            cmd.buttons = cmd.buttons | IN_ATTACK
        end
    end
end

callbacks.Register("CreateMove", triggerBot)
