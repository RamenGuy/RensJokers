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
    config = {extra = {Xmult_add = 0.75, Xmult = 1}},
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_add, card.ability.extra.Xmult}}
  end,
    calculate = function(self, card, context)
                    if context.setting_blind and not context.blueprint then
                local my_pos = nil
                for i = 1, #G.jokers.cards do
                card = card
                     if G.jokers.cards[i] == card then my_pos = i; break 
                    end
                     end
                if my_pos and G.jokers.cards[my_pos+1] and not self.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
                    local sliced_card = G.jokers.cards[my_pos+1]
                    sliced_card.getting_sliced = true
                    G.GAME.joker_buffer = G.GAME.joker_buffer - 1
                    G.E_MANAGER:add_event(Event({func = function()
                        G.GAME.joker_buffer = 0
                        card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_add
                        card:juice_up(0.8, 0.8)
                        sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
                        play_sound('slice1', 0.96+math.random()*0.08)
                    return true end }))
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_add}}, colour = G.C.RED, no_juice = true})
                end
                      elseif context.joker_main and card.ability.extra.Xmult > 1 then
                            return {
                                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.Xmult}},
                                Xmult_mod = card.ability.extra.Xmult,
                          }
            end
    end,
}