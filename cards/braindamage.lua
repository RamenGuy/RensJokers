SMODS.Joker{
    key = 'braindamage',
    rarity = 2,
    atlas = "renjokers", pos = {x = 0, y = 0},--- soul_pos = { x = 7, y = 0 },
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
                        if context.other_card.edition then
                            if context.other_card.edition == 6 or context.other_card.edition.polychrome == true then
                                    return {
                                                    message = localize("k_again_ex"),
                                                    repetitions = 1,
                                                    card = card,
                                            }   
                            end
                        end
                    end
   end,
}