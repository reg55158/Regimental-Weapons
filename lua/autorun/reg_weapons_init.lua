RegimentalWeapons = RegimentalWeapons || {}

local function Load()
    AtlasUI.Loader():setName("Regimental Weapons"):setAcronym("RegWeapons"):setDirectory("reg_weapons"):setColor(AtlasUI.Theme.Primary):load("network", {
        client = ATLASUI_CLIENT,
        server = ATLASUI_SERVER
    }):load("classes", ATLASUI_SHARED, true):load("ui", ATLASUI_CLIENT, true):loadFile("core/config_wrapper", ATLASUI_SHARED):loadFile("config/config", ATLASUI_SHARED):loadFile("core/main", ATLASUI_SERVER):done()
end


if RegimentalWeapons then
    Load()
else
    hook.Add("AtlasUI.Loaded", "RegimentalWeapons", Load)
end
