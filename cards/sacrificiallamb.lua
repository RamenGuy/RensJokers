SMODS.Joker{
    key = 'sacrificiallamb',
    rarity = 3,
    atlas = "renjokers", pos = {x = 2, y = 1},--- soul_pos = { x = 7, y = 0 },
    cost = 4,
    unlocked = true,
    discovered = true,
    eternal_compat = false,
    blueprint_compat = false,
    perishable_compat = true,
    config = {extra = { seal = 'Red', hasSacrificed = false } },
    loc_vars = function(self, info_queue, card)
            info_queue[#info_queue + 1] = G.P_SEALS[card.ability.extra.seal]
    return {vars = {card.ability.extra.hasSacrificed}}
  end,
    calculate = function(self, card, context)
                     if context.discard and not context.blueprint and
                        G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
                        card.ability.extra.hasSacrificed = true;
                        return {
                            message = localize("k_sacrificed_ex"),
                            remove = true
                        }
                    end
                    if context.before and context.main_eval and G.GAME.current_round.hands_played == 0 and card.ability.extra.hasSacrificed then
                        context.scoring_hand[1]:juice_up(0.3, 0.5)            
                        context.scoring_hand[1]:set_seal(card.ability.extra.seal)
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:start_dissolve()
                                return true
                            end
                        }))
                    end 
   end,
}