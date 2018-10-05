//
//  User.swift
//  IGotIt
//
//  Created by Dylan Johnson on 10/5/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import Foundation

class User
{
    // Instantiates class variables
    private var name : String
    private var email : String
    private var phoneNumber : String
    private var shipAddress : Address
    private var password : String
    
    // Initializes instance variables to values passed to the function
    init(userName : String, userEmail : String, userPhoneNumber : String, userAddress : Address, userPassword : String)
    {
        name = userName
        email = userEmail
        phoneNumber = userPhoneNumber
        shipAddress = userAddress
        password = userPassword
    }
    
    // Returns the name of the user
    func getName() -> String
    {
        return name
    }
    
    // Returns the user's email
    func getEmail() -> String
    {
        return email
    }
    
    // Returns the user's phone number
    func getPhoneNumber() -> String
    {
        return phoneNumber
    }
    
    // Returns the user's shipping address
    func getAddress() -> Address
    {
        return shipAddress
    }
    
    // Sets the user's name to the String passed to the function
    func setName(newName : String)
    {
        name = newName
    }
    
    // Sets the user's email to the String passed to the function
    func setEmail(newEmail : String)
    {
        email = newEmail
    }
    
    // Sets the user's phone number to the String passed to the function
    func setPhoneNumber(newPhoneNumber : String)
    {
        phoneNumber = newPhoneNumber
    }
    
    // Sets the user's address to the Address passed to the function
    func setAddress(newAddress : Address)
    {
        shipAddress = newAddress
    }
    
    // Sets the user's password to the String passed to the function
    func setPassword(newPassword : String)
    {
        password = newPassword
    }
}
