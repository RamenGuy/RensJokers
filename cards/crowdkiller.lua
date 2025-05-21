SMODS.Joker{
    key = 'crowdkiller',
    rarity = 2,
    atlas = "renjokers", pos = {x = 3, y = 1},--- soul_pos = { x = 7, y = 0 },
    cost = 4,
    unlocked = true,
    discovered = true,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = true,
    config = {extra = { Xmult = 1, type = "Flush"} },
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult, card.ability.extra.type}}
  end,
    calculate = function(self, card, context)
                    if context.joker_main then
                        if G.GAME.current_round.current_hand.handname == card.ability.extra.type then
                                local eligible = {}
                                for k, v in ipairs(G.jokers.cards) do
                                    if not v.ability.eternal and v ~= card then 
                                        eligible[#eligible+1] = v
                                    end
                                end
                                local randomjoker = pseudorandom_element(eligible, pseudoseed("destroy"))
                                local sellprice = randomjoker.sell_cost
                                randomjoker:start_dissolve()
                                card.ability.extra.Xmult = card.ability.extra.Xmult + sellprice                     
                        end
                        return {
                            xmult = card.ability.extra.Xmult,
                            colour = G.C.MULT,
			}
                    end
   end,
}