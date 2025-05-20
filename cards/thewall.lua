SMODS.Joker{
    key = 'thewall',
    rarity = 2,
    atlas = "renjokers", pos = {x = 0, y = 1},--- soul_pos = { x = 7, y = 0 },
    cost = 4,
    unlocked = true,
    discovered = true,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = true,
    config = {extra = { XChips = 1.5 } },
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.XChips}}
  end,
    calculate = function(self, card, context)
                    if context.individual and context.cardarea == G.play then
                        if context.other_card:get_id() == 6 or context.other_card.ability.name == 'Stone Card' then
				return {
                                        xchips = card.ability.extra.XChips,
                    			colour = G.C.CHIPS,
				}    
			end
                    end
   end,
}