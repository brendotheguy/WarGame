//
//  main.swift
//  Game - Classes: Attack
//
//  Created by Brendan Blais on 2020-03-02.
//  Copyright © 2020 Brendan Blais. All rights reserved.
//

import Foundation

//
//  main.swift
//  Class Files
//
//  Created by Eric L on 2020-02-24.
//  Copyright © 2020 Eric L. All rights reserved.
//
import Foundation

//player 1 unit array
//player 2 unit array

var beingAttacked:Int //Detects whether enemy usit is selected by friendly one

func select(){
    //check if player 1 or player 2's turn (switch):
        //select enemy unit: display unit info for spot in enemy unit array
        //select friendly unit:
            //assign "isSelected = true" for unit's spot in array
            //check positions of spots in enemy unit array, if they are within range of selected unit, player may select them. If player selects them, assign "beingAttacked" to their array spot integer
}

//attack call example: attackingFriendlyUnit.attacking = beingAttacked

class Unit {
    var maxHealth: Int
    var currentHealth: Int
    var defense: Int
    var movement: Int
    var attack: Int
    var minRange: Int
    var maxRange: Int
    var hasMoved: Bool
    var postMoveAttack: Bool
    var position: [Int]
    var isAir: Bool
    var isDone: Bool
    var cost: [String:Int]
    var side: String
    var currentSupply: Int
    var maxSupply: Int
    var isSelected: Bool
    var attacking: Int
    
    init(maxHealth: Int, currentHealth: Int, defense: Int, movement: Int, attack: Int, minRange: Int, maxRange: Int, postMoveAttack: Bool, position: [Int], isAir: Bool, cost: [Int], side: String, currentSupply: Int, maxSupply: Int, attacking:Int) {
        self.maxHealth = maxHealth
        self.currentHealth = currentHealth
        self.defense = defense
        self.movement = movement
        self.attack = attack
        self.minRange = minRange
        self.maxRange = maxRange
        hasMoved = true
        self.postMoveAttack = postMoveAttack
        self.position = position
        self.isAir = isAir
        isDone = true
        self.cost = ["Money" : cost[0], "Steel" : cost[1], "Oil" : cost[2]]
        self.side = side
        self.currentSupply = currentSupply
        self.maxSupply = maxSupply
        self.isSelected = false
        self.attacking = attacking
    }
    
    //Methods
    
    //Movement --> Changing position based off of inputted position, which will be within movement (range) and is valid.
    
    //Attack --> takes another unit and does combat calculations based off of stats and other unit's stats

    func attack(beingAttacked:Unit){
        if currentSupply > 0{
            if currentHealth < currentSupply{
                if attackingissupposedtocallthenumberfromtheenemyarraydontworryaboutit.defense < (currentHealth * attack){
                    attacking.currentHealth = attacking.currentHealth - (currentHealth * attack) + attacking.defense
                }
                else{
                    print("no dameg")
                }
            }
            else{
                if attacking.defense < (currentSupply * attack){
                    attacking.currentHealth = attacking.currentHealth - (currentSupply * attack) + attacking.defense
                }
                else{
                    print("no dmgea")
                }
            }
        }
        //check if supply is greater than 0, if it is:{
            //calculate current health
            //calculate supply
            //take smaller integer of the two and times default unit damage output
            //take away calculated damage from enemy health minus the enemy's defense value
            //subtract i from the suply where i is the smaller number of either current hp or supply
        //}
    
}

class Building {
    var maxHealth: Int32
    var currentHealth: Int32
    var defense: Int32
    var cost: [String:Int32]
    var side: String
    var position: [Int8]
    
    init (maxHealth: Int32, currentHealth: Int32, defense: Int32, cost: [Int32], side: String, position: [Int8]) {
        self.maxHealth = maxHealth
        self.currentHealth = currentHealth
        self.defense = defense
        self.cost = ["Money" : cost[0], "Steel" : cost[1], "Oil": cost[2]]
        self.side = side
        self.position = position
    }
    
}

class AttackBuilding: Building {
    var attack: Int32
    var minRange: Int8
    var maxRange: Int8
    var isDone: Bool
    
    init(maxHealth: Int32, currentHealth: Int32, defense: Int32, cost: [Int32], side: String, position: [Int8], attack: Int32, minRange: Int8, maxRange: Int8, isDone: Bool) {
        self.attack = attack
        self.minRange = minRange
        self.maxRange = maxRange
        self.isDone = isDone
        super.init(maxHealth: maxHealth, currentHealth: currentHealth, defense: defense, cost: cost, side: side, position: position)
    }
}
}

