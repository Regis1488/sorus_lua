local function triggerBot(cmd)
    local localPlayer = entities.GetLocalPlayer()
    local source = localPlayer:GetAbsOrigin() + Vector3(localPlayer:GetPropFloat("localdata", "m_vecViewOffset[0]"), localPlayer:GetPropFloat("localdata", "m_vecViewOffset[1]"), localPlayer:GetPropFloat("localdata", "m_vecViewOffset[2]"))
    local destination = source + engine.GetViewAngles():Forward() * 5000;

    local triggerKey = gui.GetValue("Trigger Shoot Key")

    if(input.IsButtonDown(triggerKey)) then
        local trace = engine.TraceLine(source,destination,MASK_SHOT)
        print(trace.entity)
        if(trace.entity:GetClass() == "CObjectSentrygun" or trace.entity:GetClass() == "CObjectDispenser" or trace.entity:GetClass() == "CObjectTeleporter") then
            cmd.buttons = cmd.buttons | IN_ATTACK
        end
    end
end

callbacks.Register("CreateMove", triggerBot)
