SMODS.Joker{
  key = 'nichola',
    rarity = 4,
    atlas = "renjokers", pos = {x = 2, y = 0}, soul_pos = { x = 3, y = 0 },
    cost = 20,
    unlocked = true,
    discovered = true,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = {extra = { repetitions = 2, XChips = 1.1 }},
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.repetitions, card.ability.extra.XChips } }
    end,
    calculate = function(self, card, context)
               if context.repetition and context.cardarea == G.play and context.other_card:get_id() == 12 then
                    return {
                        repetitions = card.ability.extra.repetitions
                    }
                end
                if context.individual and context.cardarea == G.play then
                        if context.other_card:get_id() == 12 and (next(SMODS.get_enhancements(context.other_card)) or context.other_card.edition) then
				return {
                                        xchips = card.ability.extra.XChips,
                    			colour = G.C.CHIPS,
				}    
			end
                    end
    end,
}
