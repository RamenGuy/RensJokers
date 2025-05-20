SMODS.Joker{
  key = 'cinnamon',
    rarity = 4,
    atlas = "renjokers", pos = {x = 4, y = 0}, soul_pos = { x = 5, y = 0 },
    cost = 20,
    unlocked = true,
    discovered = true,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = false,
    config = {extra = {Xmult_ramen = 3, Xmult_add = 0.25, Xmult = 1}},
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.Xmult_ramen, card.ability.extra.Xmult_add, card.ability.extra.Xmult}}
  end,
    calculate = function(self, card, context)
                    if context.using_consumeable and (context.consumeable.ability.set == "Tarot") and not context.blueprint then                
                        G.GAME.joker_buffer = G.GAME.joker_buffer - 1
                        G.E_MANAGER:add_event(Event({func = function()
                            G.GAME.joker_buffer = 0
                            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_add
                            card:juice_up(0.8, 0.8)
                     
                            return true end }))
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.extra.Xmult_add}}, colour = G.C.MULT, no_juice = true})
                    elseif context.joker_main then
			--- card_eval_status_text(
			--- 	card,
			--- 	"extra",
			---	nil,
			---	nil,
			--	nil,
			---	{
			---		message = localize({ type = "variable", key = "a_xmult", vars = {card.ability.extra.Xmult_ramen * #SMODS.find_card("j_ramen")} }),
			---		colour = G.C.MULT,
			---	}
			---)
                        return {   
                                xmult = card.ability.extra.Xmult + (card.ability.extra.Xmult_ramen * #SMODS.find_card("j_ramen")) 
                        }
            end
    end,
}