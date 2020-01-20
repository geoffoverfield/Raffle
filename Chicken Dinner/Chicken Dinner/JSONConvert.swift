//
//  XMLConvert.swift
//  Chicken Dinner
//
//  Created by Geoffrey Overfield on 1/17/20.
//  Copyright © 2020 Geoffrey Overfield. All rights reserved.
//

import Foundation

public class JSONConvert
{
    public init() { }
    
    public func Serialize(Object : Raffle) -> String
    {
        var message : String!;
        
        var contestantMsg = "[";
        for contestant in Object.getContestants()
        {
            contestantMsg.append(contestant.Serialize());
        }
        contestantMsg.append("]");
        
        let raffleMsg = "\"Event Name\":\"" + Object.getEventName() + "\"," +
            "\"Event Date\":\"" + Object.getEventDate() + "\"," +
            "\"Event Location\":" + Object.getEventLocation().Serialize() + "," +
            "\"File Name\":\"" + Object.getFileName() + "\"," +
        "\"Contestants\":\"" + contestantMsg;
        
        message = "{\"Raffle\":{" + raffleMsg + "}}";
        
        return message;
    }
    
    public func ParseJSON(Value : String) -> Raffle
    {
        let JSON = Value.data(using: .utf8)!;
        let decoder = JSONDecoder();
        var objParse = RaffleObj(name: "New Raffle", date: Date(), location: AddressObj(street1: "", street2: "", city: "", state: "Colorado", zip: 12345), file: "New Raffle.json", contestants: [ContestantObj]())
            
        do
        {
            let parsed = try decoder.decode(RaffleObj.self, from: JSON);
            objParse = parsed;
        }
        catch{}
        
        return Raffle(newObj: objParse);
    }
}
