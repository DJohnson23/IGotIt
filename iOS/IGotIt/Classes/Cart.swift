//
//  Cart.swift
//  IGotIt
//
//  Created by Dylan Johnson on 10/5/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import Foundation

class Cart
{
    // Instantiates the class variables
    private var cartItems : [CartItem]
    private var itemCount : Int
    
    // Initializes the item count of the cart to 0
    init()
    {
        itemCount = 0
        cartItems = [CartItem]()
    }
    
    // Returns the amount of items currently in the cart
    func getItemCount() -> Int
    {
        return itemCount
    }
    
    // Adds the CartItem passed to the function into the cart
    func addItem(newItem : CartItem)
    {
        cartItems.append(newItem)
        itemCount = itemCount + newItem.getAmount()
    }
    
    // Removes the CartItem passed to the function from the cart
    func removeItem(itemRemoved : CartItem)
    {
        for i in 1...cartItems.count
        {
            if(cartItems[i] == itemRemoved)
            {
                cartItems.remove(at: i)
            }
        }
    }
    
    // Returns the price of everything in the cart combined
    func getCartPrice() -> Double
    {
        var sum = 0.0
        
        for item in cartItems
        {
            sum += item.getTotalPrice()
        }
        
        return sum
    }
}
