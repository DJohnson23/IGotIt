//
//  Address.swift
//  IGotIt
//
//  Created by Dylan Johnson on 10/5/18.
//  Copyright © 2018 Johnson Production. All rights reserved.
//

import Foundation

class Address
{
    // Instantiates class variables
    private var street : String
    private var city : String
    private var state : String
    private var zipCode : String
    
    // Initializes the class variables to the values passed to the function
    init(streetAddress : String, cityAddress : String, stateAddress : String, zipCodeAddress : String)
    {
        street = streetAddress
        city = cityAddress
        state = stateAddress
        zipCode = zipCodeAddress
    }
    
    // Returns the street portion of the address
    func getStreet() -> String
    {
        return street
    }
    
    // Returns the city portion of the address
    func getCity() -> String
    {
        return city
    }
    
    // Returns the state portion of the address
    func getState() -> String
    {
        return state
    }
    
    // Returns the zip code portion of the address
    func getZipCode() -> String
    {
        return zipCode
    }
    
    // Sets the street portion of the address to the String passed to the function
    func setStreet(newStreet : String)
    {
        street = newStreet
    }
    
    // Sets the city portion of the address to the String passed to the function
    func setCity(newCity : String)
    {
        city = newCity
    }
    
    // Sets the state portion of the address to the String passed to the function
    func setState(newState : String)
    {
        state = newState
    }
    
    // Sets tje zip code portion of the address to the String passed to the function
    func setZipCode(newZipCode : String)
    {
        zipCode = newZipCode
    }
    
}
