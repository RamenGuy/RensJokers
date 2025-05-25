SMODS.Consumable {
    key = 'councillor',
    set = 'Tarot',
    atlas = 'rentarots',
    pos = { x = 1, y = 0 },
    config = { extra = { hands = 1, discards = 2} },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands, card.ability.extra.discards } }
    end,
    use = function(self, card, area, copier)
        ease_hands_played(card.ability.extra.hands)
        ease_discard(card.ability.extra.discards, nil, true)
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end
}