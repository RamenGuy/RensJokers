SMODS.Joker{
    key = 'heartpearl',
    rarity = 2,
    atlas = "renjokers", pos = {x = 4, y = 1},--- soul_pos = { x = 7, y = 0 },
    cost = 7,
    unlocked = false,
    discovered = false,
    eternal_compat = true,
    blueprint_compat = true,
    perishable_compat = true,
    config = { extra = { chips = 50 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit("Hearts") then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
   locked_loc_vars = function(self, info_queue, card)
        return { vars = { 30, localize('Hearts', 'suits_singular') } }
    end,
    check_for_unlock = function(self, args) -- equivalent to `unlock_condition = { type = 'modify_deck', extra = { count = 30, suit = 'Hearts' } }`
        if args.type == 'modify_deck' then
            local count = 0
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if playing_card.base.suit == "Hearts" then count = count + 1 end
                if count >= 30 then
                    return true
                end
            end
        end
        return false
    end
}