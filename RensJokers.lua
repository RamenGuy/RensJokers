-- Registers the atlas for Jokers
SMODS.Atlas({ 
    key = "renjokers",
    path = "RenJokers.png", 
    px = 71,
    py = 95,
})
SMODS.Atlas({
	key = "modicon",
	path = "icon.png",
	px = 32,
	py = 32,
})
SMODS.Atlas({
	key = "renblinds",
	atlas_table = "ANIMATION_ATLAS",
	path = "RenBlinds.png",
	px = 34,
	py = 34,
	frames = 21,
})

local oldeaseante = ease_ante
function ease_ante(mod)
    if #SMODS.find_card("j_RensJokers_jokerstuck") >= 1 then
        SMODS.find_card("j_RensJokers_jokerstuck")[1]:start_dissolve()
        return nil
    end
    return oldeaseante(mod)
end

local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    assert(SMODS.load_file(subdir .. "/" .. filename))()
end
local subdir = "blinds"
local blinds = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(blinds) do
    assert(SMODS.load_file(subdir .. "/" .. filename))()
end