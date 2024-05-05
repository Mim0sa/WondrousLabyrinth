//
//  WLCardBrain.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/4.
//

import Foundation

struct WLCardBrain: Codable {
    var collections:            [WLCardSet]
    var dict:                   WLTable
}

struct WLTable: Codable {
    var ability_cost:           [WLTableItem]
    var attribute:              [WLTableItem]
    var card_type:              [WLTableItem]
    var energy_type:            [WLTableItem]
    var evolve:                 [WLTableItem]
    var pokemon_type:           [WLTableItem]
    var rarity:                 [WLTableItem]
    var regulation:             [WLTableItem]
    var regulation_mark:        [WLTableItem]
    var resistance_type:        [WLTableItem]
    var series:                 [WLTableItem]
    var special_card:           [WLTableItem]
    var special_trainer:        [WLTableItem]
    var trainer_type:           [WLTableItem]
    var weakness_type:          [WLTableItem]
}

struct WLTableItem: Codable {
    var dictCode:               String
    var dictSort:               Int
    var dictValue:              String
    var id:                     Int
    var status:                 Int
    var typeCode:               String
}

struct WLCardSet: Codable {
    var cards:                  [WLCard]
    var commodityCode:          String
    var id:                     Int
    var image:                  String?
    var name:                   String
    var salesDate:              String
    var series:                 String?
    var seriesText:             String?
}

struct WLAbilityItem: Codable {
    var abilityCost:            String?
    var abilityDamage:          String?
    var abilityName:            String?
    var abilityText:            String?
}

struct WLCommodity: Codable {
    var commodityCode:          String?
    var commodityName:          String?
}

struct WLCardFeatureItem: Codable {
    var featureDesc:            String?
    var featureName:            String?
}

struct WLDetails: Codable {
    var abilityItemList:        [WLAbilityItem]?
    var attribute:              String?
    var cardFeatureItemList:    [WLCardFeatureItem]?
    var cardName:               String
    var cardType:               String
    var cardTypeText:           String
    var collectionFlag:         Int
    var collectionNumber:       String
    var commodityList:          [WLCommodity]?
    var evolveText:             String?
    var featureFlag:            String?
    var height:                 Double?
    var hp:                     Int?
    var id:                     Int
    var illustratorName:        [String]?
    var is_pokeball_shiny:      Bool
    var pokedexCode:            String?
    var pokedexText:            String?
    var pokemonCategory:        String?
    var rarity:                 String
    var rarityText:             String
    var regulationMarkText:     String?
    var retreatCost:            Int?
    var resistanceFormula:      String?
    var resistanceType:         String?
    var weaknessFormula:        String?
    var weaknessType:           String?
    var weight:                 Double?
    var yorenCode:              String
    
    var ruleText:               String?
    var trainerType:            String?
    var trainerTypeText:        String?
    
    var energyType:             String?
    var energyTypeText:         String?
}

struct WLCard: Codable {
    var cardType:               String
    var details:                WLDetails
    var hash:                   String
    var id:                     Int
    var image:                  String
    var name:                   String
    var nameSamePokemonId:      Int?
    var energyType:             String?
    var yorenCode:              String
}
