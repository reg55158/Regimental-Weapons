local CONFIG = {}

function CONFIG:Init()
    RegimentalWeapons.Config = self
    RegimentalWeapons.Config.ChoiceJobs = {}

    hook.Run("RegimentalWeapons.ConfigChanged", self)
end

function CONFIG:AddChoiceJob(team, weapons)
    if (not team) then return end

    RegimentalWeapons.Config.ChoiceJobs[team] = weapons
end

function CONFIG:Weapon(weaponId, restriction)
    restriction = not istable(restriction) and {
    restriction } or restriction
    local weaponPrintName = (weapons.Get(weaponId) and weapons.Get(weaponId).PrintName) or "Unknown Name"

    return {
        weaponId = weaponId,
        weaponPrintName = weaponPrintName,
        restriction = restriction
    }
end

function RegimentalWeapons:CreateConfig()
    local tbl = table.Copy(CONFIG)
    tbl:Init()

    return tbl
end
