SMODS.Joker{
    key = 'obsidianspearhead',
    rarity = 2,
    atlas = "renjokers", pos = {x = 1, y = 1},--- soul_pos = { x = 7, y = 0 },
    cost = 7,
    unlocked = false,
    discovered = false,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = true,
    config = {extra = { odds = 2, Xmult = 1.5 } },
    loc_vars = function(self, info_queue, card)
    return {vars = { G.GAME.probabilities.normal or 1, card.ability.extra.odds, card.ability.extra.Xmult } }
  end,
    calculate = function(self, card, context)
                    if context.individual and context.cardarea == G.play and context.other_card:is_suit("Spades") and
                        pseudorandom('obsidianspearhead') < G.GAME.probabilities.normal / card.ability.extra.odds then
                            return {   
                                xmult = card.ability.extra.Xmult 
                            }
                        end
     end,
   locked_loc_vars = function(self, info_queue, card)
        return { vars = { 30, localize('Spades', 'suits_singular') } }
    end,
    check_for_unlock = function(self, args) -- equivalent to `unlock_condition = { type = 'modify_deck', extra = { count = 30, suit = 'Hearts' } }`
        if args.type == 'modify_deck' then
            local count = 0
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if playing_card.base.suit == "Spades" then count = count + 1 end
                if count >= 30 then
                    return true
                end
            end
        end
        return false
    end
}