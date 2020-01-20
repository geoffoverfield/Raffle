//
//  User.swift
//  Chicken Dinner
//
//  Created by Geoffrey Overfield on 1/12/20.
//  Copyright © 2020 Geoffrey Overfield. All rights reserved.
//

import Foundation

public class Contestant
{
    private var contestantName : String;
    private var contestantPhoneNumber : String;
    private var contestantAddress : Address;
    private var contestantEmail : String;
    private var contestantTicketNumbers : [String];
    private var ticketsUsed : [String : Bool];
    
    public init()
    {
        self.contestantName = "";
        self.contestantPhoneNumber = "";
        self.contestantAddress = Address();
        self.contestantEmail = "";
        self.contestantTicketNumbers = [String]();
        self.ticketsUsed = [String:Bool]();
    }
    
    public func getName() ->String
    {
        return self.contestantName;
    }
    
    public func getPhoneNumber() ->String
    {
        return self.contestantPhoneNumber;
    }
    
    public func getAddress() ->Address
    {
        return self.contestantAddress;
    }
    
    public func getEmail() ->String
    {
        return contestantEmail;
    }
    
    public func getTicketNumbers() ->[String]
    {
        return self.contestantTicketNumbers;
    }
    
    public func setName(val : String)
    {
        self.contestantName = val;
    }
    
    public func setPhoneNumber(val : String)
    {
        self.contestantPhoneNumber = val;
    }
    
    public func setEmail(val : String)
    {
        self.contestantEmail = val;
    }
    
    public func setAddress(val : Address)
    {
        self.contestantAddress = val;
    }
    
    public func addTicket(ticketNumber : String)
    {
        self.contestantTicketNumbers.append(ticketNumber);
        self.ticketsUsed[ticketNumber] = false;
    }
    
    public func addTickets(tickets : [String])
    {
        self.contestantTicketNumbers.append(contentsOf: tickets);
        for ticket in tickets
        {
            ticketsUsed[ticket] = false;
        }
    }
    
    public func ticketCalled(ticket : String) ->Bool
    {
        if (contestantTicketNumbers.contains(ticket))
        {
            return ticketsUsed[ticket]!;
        }
        
        return false;
    }
    
    public func callTicket(ticketNumber : String) ->Bool
    {
        if (contestantTicketNumbers.contains(ticketNumber))
        {
            ticketsUsed[ticketNumber] = true;
            return true;
        }
        return false;
    }
    
    public func Serialize() ->String
    {
        var JSON = "{\"Contestant\":";
        
        // Get our array of Ticket Numbers to add to the message
        var ticketsMsg = "[";
        let count = contestantTicketNumbers.count;
        var itr = 0;
        for ticket in contestantTicketNumbers
        {
            ticketsMsg.append("\"" + ticket + "\"");
            if (itr != count)
            {
                ticketsMsg.append(",");
            }
            itr += 1;
        }
        ticketsMsg.append("]");
        
        let conMsg = "\"contestantName\":\"" + contestantName + "\"," +
            "\"contestantPhoneNumber\":\"" + contestantPhoneNumber + "\"," +
            "\"contestantEmail\":\"" + contestantEmail + "\"," +
            "\"contestantAddress\":" + contestantAddress.Serialize() + "," +
            "\"contestantTicketNumbers\":" + ticketsMsg;
        
        JSON.append(conMsg + "}");
        
        return JSON;
    }
}

public struct ContestantObj : Codable
{
    var contestantName : String;
    var contestantPhoneNumber : String;
    var contestantAddress : AddressObj;
    var contestantEmail : String;
    var contestantTicketNumbers : [String];
    
    public func toContestant() ->Contestant
    {
        let returnContestant = Contestant();
        returnContestant.setName(val: contestantName);
        returnContestant.setPhoneNumber(val: contestantPhoneNumber);
        returnContestant.setAddress(val: contestantAddress.toAddress());
        returnContestant.setEmail(val: contestantEmail);
        returnContestant.addTickets(tickets: contestantTicketNumbers);
        
        return returnContestant;
    }
}
