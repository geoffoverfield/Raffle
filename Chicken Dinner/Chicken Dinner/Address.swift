//
//  Address.swift
//  Chicken Dinner
//
//  Created by Geoffrey Overfield on 1/12/20.
//  Copyright © 2020 Geoffrey Overfield. All rights reserved.
//

import Foundation

public class Address
{
    private var Street1 : String;
    private var Street2 : String;
    private var City : String;
    private var State : Utils.Location.States!;
    private var ZipCode : Int;
    
    public init()
    {
        self.Street1 = "";
        self.Street2 = "";
        self.City = "";
        self.State = Utils.Location.States.Colorado;
        self.ZipCode = 12345;
    }
    
    public func getStreet1() -> String
    {
        return self.Street1;
    }
    
    public func getStreet2() -> String
    {
        return self.Street2;
    }
    
    public func getCity() -> String
    {
        return self.City;
    }
    
    public func getState() -> String
    {
        return convertState();
    }
    
    public func getZip() -> Int
    {
        return self.ZipCode;
    }
    
    public func convertState() -> String
    {
        return Utils.Location.StateValues[self.State]!;
    }
    
    public func setStreet1(val : String)
    {
        self.Street1 = val;
    }
    
    public func setStreet2(val : String)
    {
        self.Street2 = val;
    }
    
    public func setCity(val : String)
    {
        self.City = val;
    }
    
    public func setState(val : String)
    {
        self.State = Utils.Location.StateValuesRev[val];
    }
    
    public func setZip(val : Int)
    {
        if ( val > 10000)
        {
            self.ZipCode = val;
        }
    }
    
    public func Serialize() ->String
    {
        let JSON = "{\"Street1\":\"" + getStreet1() + "\"," +
            "\"Street2\":\"" + getStreet2() + "\"," +
            "\"City\":\"" + getCity() + "\"," +
            "\"State\":\"" + getState() + "\"," +
            "\"ZipCode\":\"" + getZip().description + "\"}";
        return JSON;
    }
     
}

public struct AddressObj : Codable
{
    var Street1 : String;
    var Street2 : String;
    var City : String;
    var State : String;
    var ZipCode : Int;
    
    public init(street1 : String, street2 : String, city : String, state : String, zip : Int)
    {
        self.Street1 = street1;
        self.Street2 = street2;
        self.City = city;
        self.State = state;
        self.ZipCode = zip;
    }
    
    public func toAddress() ->Address
    {
        let returnAddress = Address();
        returnAddress.setStreet1(val: Street1);
        returnAddress.setStreet2(val: Street2);
        returnAddress.setCity(val: City);
        returnAddress.setState(val: State);
        returnAddress.setZip(val: ZipCode);
        
        return returnAddress;
    }
}
