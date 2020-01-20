//
//  Raffle.swift
//  Chicken Dinner
//
//  Created by Geoffrey Overfield on 1/12/20.
//  Copyright © 2020 Geoffrey Overfield. All rights reserved.
//

import Foundation

public class Raffle
{
    private var EventName : String;
    private var EventDate : Date;
    private var EventLocation : Address;
    private var FileName : String;
    private var Contestants : [Contestant];
    private var Converter : JSONConvert;
    private let fileExtension = ".json";
    
    public init()
    {
        self.EventName = "New Raffle";
        self.EventDate = Date();
        self.EventLocation = Address();
        self.FileName = EventName + fileExtension;
        self.Contestants = [Contestant]();
        self.Converter = JSONConvert();
    }
    
    public init(newObj : RaffleObj)
    {
        self.EventName = newObj.EventName;
        self.EventDate = newObj.EventDate;
        self.EventLocation = newObj.EventLocation.toAddress();
        self.FileName = newObj.FileName;
        self.Converter = JSONConvert();
        self.Contestants = [Contestant]();
        
        for con in newObj.Contestants
        {
            self.Contestants.append(con.toContestant());
        }
    }
    
    public func Save()
    {
        let message = Converter.Serialize(Object: self);
        //message.write(to: &self.FileName);
        do { try
        message.write(toFile: getFileName(), atomically: true, encoding: String.Encoding.utf8);
        }
        catch {}
    }
    
    public func Load(jsonMessage : String)
    {
        let loadObj = Converter.ParseJSON(Value: jsonMessage);
        self.EventName = loadObj.EventName;
        self.EventDate = loadObj.EventDate;
        self.FileName = loadObj.FileName;
        self.Contestants = loadObj.Contestants;
    }
    
    public func Update()
    {
        // Figure out what we wanna do here
        // Probably need to get the state of the UI, and update appropriate data accordingly
    }
    
    public func New(eventName : String, eventDate : Date)
    {
        setEventName(newName: eventName);
        self.EventDate = eventDate;
    }
    
    public func setEventName(newName : String)
    {
        self.EventName = newName;
        self.FileName = getDirectory().appendingPathComponent(self.EventName + fileExtension).path;
    }
    
    private func getDirectory() ->URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask);
        return paths[0];
    }
    
    public func addContestant(newContestant : Contestant)
    {
        Contestants.append(newContestant);
    }
    
    public func removeContestant(takeContestant : Contestant)
    {
        var index : Int!;
        for contestant in self.Contestants
        {
            if (contestant.getName() == takeContestant.getName())
            {
                break;
            }
            index += 1;
        }
        
        self.Contestants.remove(at: index);
    }
    
    public func getEventName() ->String
    {
        return self.EventName;
    }
    
    public func getEventDate() ->String
    {
        return self.EventDate.description;
    }
    
    public func getEventDate() ->Date
    {
        return self.EventDate;
    }
    
    public func getEventLocation() ->Address
    {
        return self.EventLocation;
    }
    
    public func getFileName() ->String
    {
        return self.FileName;
    }
    
    public func getContestants() ->[Contestant]
    {
        return self.Contestants;
    }
}

public struct RaffleObj : Codable
{
    var EventName : String;
    var EventDate : Date;
    var EventLocation : AddressObj;
    var FileName : String;
    var Contestants : [ContestantObj];
    
    public init(name : String, date : Date, location : AddressObj, file : String, contestants : [ContestantObj])
    {
        self.EventName = name;
        self.EventDate = date;
        self.EventLocation = location;
        self.FileName = file;
        self.Contestants = contestants;
    }
}
