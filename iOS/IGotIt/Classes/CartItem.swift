//
//  CartItem.swift
//  IGotIt
//
//  Created by Dylan Johnson on 10/5/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import Foundation

class CartItem : Comparable
{
    // Instantiates the class variables
    private var item : Item
    private var amount : Int
    
    // Initializes the amount of the item to 0 and the item itself to the Item passed to the function
    init(newItem : Item)
    {
        item = newItem
        amount = 1
    }
    
    // Returns the price of the item multiplied by the amount of that item in the cart
    func getTotalPrice() -> Double
    {
        return item.getPrice() * Double(amount)
    }
    
    // Returns the price of one unit of the item
    func getSinglePrice() -> Double
    {
        return item.getPrice()
    }
    
    // Returns the amount of units of the item currently in the cart
    func getAmount() -> Int
    {
        return amount
    }
    
    // Sets the amount of this item that is currently in the cart
    func setAmount(newAmount : Int)
    {
        amount = newAmount
    }
    
    // Returns the item held in the cart
    func getItem() -> Item
    {
        return item
    }
    
    // Returns true if the item on the left has a lesser ID than the one on the right
    static func < (lhs: CartItem, rhs: CartItem) -> Bool
    {
        if(lhs < rhs)
        {
            return true
        }
        
        return false
    }
    
    // Returns true if both items have the same ID
    static func == (lhs: CartItem, rhs: CartItem) -> Bool
    {
        if(lhs == rhs)
        {
            return true
        }
        
        return false
    }
}
