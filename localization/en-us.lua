return {
	descriptions = {
		Joker = {
                        j_RensJokers_phantomthief = {
                            name = 'Phantom Thief',
                            text = {
                                "{X:dark_edition,C:white}^#1#{} Mult if {C:attention}poker hand{} is a",
                                "{C:attention}#2#{} made up of {C:hearts}Hearts{}"
                            }
                        },
                        
                        j_RensJokers_cinnamon = {
                            name = 'Cinnamon',
                            text = {
                                 "{X:mult,C:white} X#1# {} Mult for each",
                                 "{C:attention}Ramen{} you have, plus",
                                 "{X:mult,C:white} X#2# {} Mult each time",
                                 "you use a {C:tarot}Tarot{} card",
                                 "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)",
                            }
                        },
                        
                        j_RensJokers_nichola = {
                            name = 'Nichola',
                            text = {
                                 "Retrigger all played {C:attention}Queens{} twice,",
                                 "played {C:attention}Queens{} with enhancements or",
                                 "editions gain {X:chips,C:white}X#2#{} Chips"
                            }
                        },
                        j_RensJokers_thewall = {
                            name = 'The Wall',
                            text = {
                                 "{C:attention}Stone{} cards gain",
                                 "{X:chips,C:white} X#1# {} Chips",
                            }
                        },
                        j_RensJokers_braindamage = {
                            name = 'Brain Damage',
                            text = {
                                 "Retrigger all played {C:attention}Polychrome{} cards"
                            }
                        },
            
                        j_RensJokers_jokerstuck = {
                            name = 'Joker Stuck',
                            text = {
                                 "When {C:attention}Boss Blind{} is defeated,",
                                 "{C:attention}Ante{} remains the same",
                                 "{C:red,E:2}self destructs{}"
                            }
                        },
                        j_RensJokers_obsidianspearhead = {
                            name = 'Obsidian Spearhead',
                            text = {
                                    "{C:green}#1# in #2#{} chance for",
                                    "played cards with",
                                    "{C:spades}Spade{} suit to give",
                                    "{X:mult,C:white} X#3# {} Mult when scored"
                            },
                            unlock = {
                                "Have at least {E:1,C:attention}#1#",
                                "cards with {E:1,C:attention}#2#",
                                "suit in your deck",
                            },
                        },
                        j_RensJokers_heartpearl = {
                            name = 'Heart Pearl',
                            text = {
                                    "Played cards with",
                    "{C:hearts}Heart{} suit give",
                    "{C:chips}+#1#{} Chips when scored",
                            },
                            unlock = {
                                "Have at least {E:1,C:attention}#1#",
                                "cards with {E:1,C:attention}#2#",
                                "suit in your deck",
                            },
                        },
                        j_RensJokers_sacrificiallamb = {
                            name = 'Sacrificial Lamb',
                            text = {
                                    "If the {C:attention}first discard{} of",
                                    "the round has only {C:attention}1{} card,",
                                    "destroy the card and give a {C:red}Red Seal{}",
                                    "to the {C:attention}next scored card{}",
                                    "{C:red,E:2}self destructs{}"
                            }
                        },
                        j_RensJokers_crowdkiller = {
                            name = 'Crowdkiller',
                            text = {
                                    "If {C:attention}poker hand{} is a",
                                    "{C:attention}#2#{}, destroy a random Joker",
                                    "and permanently add {X:mult,C:white} X1 {}",
                                    "its sell value to this Joker",
                                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                            }
                        }      
                        
		},
                Blind = {
                        bl_RensJokers_lilaclighter = {
                            name = 'Lilac Lighter',
                            text = {
                                    "1 in 4 chance for",
                                    "played cards to be destroyed",
                            }
                        }
                },
                Tarot = {
                        c_RensJokers_councillor = {
                            name = 'The Councillor',
                            text = {
                                    "Gain {C:blue}+#1#{} Hands and",
                                    "{C:red}+#2#{} Discards for the",
                                    "remainder of this blind"
                            }
                        }
                },
        },
        misc = {
                    dictionary={
                        k_burned_ex = "Burned!",
                        k_sacrificed_ex = "Sacrificed!"
                    }
                }
}
