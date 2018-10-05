//
//  Item.swift
//  IGotIt
//
//  Created by Dylan Johnson on 10/5/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import Foundation

class Item : Comparable
{
    // Instantiates the class variables
    private var name : String
    private var price : Double
    private var category : Category
    private var ID : Int
    
    // Initializes the class variables to the values passed to the function
    init(itemName : String, itemPrice : Double, itemCategory : Category, itemID : Int)
    {
        name = itemName
        price = itemPrice
        category = itemCategory
        ID = itemID
    }
    
    // Returns the price of the item
    func getPrice() -> Double
    {
        return price
    }
    
    // Returns the name of the item
    func getName() -> String
    {
        return name
    }
    
    // Returns the unique item ID
    func getID() -> Int
    {
        return ID
    }
    
    // Returns true if the item on the left has a lesser ID than the item on the right
    static func < (lhs: Item, rhs: Item) -> Bool
    {
        if(lhs.getID() < rhs.getID())
        {
            return true
        }
        
        return false
    }
    
    // Returns true if both items have the same ID
    static func == (lhs: Item, rhs: Item) -> Bool
    {
        if(lhs.getID() == rhs.getID())
        {
            return true
        }
        
        return false
    }
}

