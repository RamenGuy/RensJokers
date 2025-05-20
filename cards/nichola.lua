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
               --- This does NOTHING! Effect pending. Sorgy.
    end,
}
