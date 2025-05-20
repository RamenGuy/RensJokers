SMODS.Blind{
    key = "lilaclighter",
    boss_colour = HEX('c5abff'),
    atlas = "renblinds",
    pos = {x = 0, y = 0},
    dollars = 8,
    discovered = true,
    mult = 2,
    vars = {1, 4},
    debuff = {},
    boss = {min = 1, max = 10, showdown = true},
    loc_vars = function(self)
		return { vars = { 1, 4 } }
	end,
    calculate = function(self, card, context)
                if context.destroy_card and context.cardarea == G.play then
                    print ("awawa?")
                    if pseudorandom('lilaclighter') < G.GAME.probabilities.normal / 4 then
                        print ("AWAWA")
                        ---context.other_card:start_dissolve()
                        return {
                                message = localize("k_burned_ex"),
                                remove = true
                        }  
                    end
                end
    end,
}
