SMODS.Joker{
  key = 'phantomthief',
    rarity = 3,
    atlas = "renjokers", pos = {x = 6, y = 0},--- soul_pos = { x = 7, y = 0 },
    cost = 6,
    unlocked = true,
    discovered = true,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = true,
    config = {extra = {mult = 2,
			type = "Royal Flush",}},
    loc_vars = function(self, info_queue, card)
    return {vars = {card.ability.extra.mult, card.ability.extra.type}}
  end,
    calculate = function(self, card, context)
                    if
			(context.joker_main and G.GAME.current_round.current_hand.handname == card.ability.extra.type and context.scoring_hand[1].base.suit == "Hearts" and context.scoring_hand[2].base.suit == "Hearts")
			or context.forcetrigger
		then
			return {
                                emult = card.ability.extra.mult
			}
		end
   end,
   
   soul_pos = {
        x = 7,
        y = 0,
        --draw = function(card, scale_mod, rotate_mod)
        --    card.hover_tilt = card.hover_tilt * 1.5
        --    card.children.floating_sprite:draw_shader('holo', nil, card.ARGS.send_to_shader, nil, card.children.center, 2 * scale_mod, 2 * rotate_mod)
        --    card.hover_tilt = card.hover_tilt / 1.5
        --end
    }
}