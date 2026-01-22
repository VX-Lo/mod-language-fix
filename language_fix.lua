-- Language fixer for Draft Mode module
-- Ensures faction languages are correctly learned and set

local function AddBaseLanguage(event, player)
    local team = player:GetTeam()  -- 0 = Alliance, 1 = Horde

    if team == 0 then
        -- Alliance
        if not player:HasSkill(98) then
            player:LearnSpell(668)                 -- Common
            player:SetSkill(98, 300, 300, 300)
        end
        player:SetChatLanguage(7)                  -- Default to Common
    else
        -- Horde
        if not player:HasSkill(109) then
            player:LearnSpell(669)                 -- Orcish
            player:SetSkill(109, 300, 300, 300)
        end
    end
end

RegisterPlayerEvent(30, AddBaseLanguage) -- 30 is On -First Login-
