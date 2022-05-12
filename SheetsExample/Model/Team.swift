//
//  Team.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import Foundation

struct Team: Identifiable {
    
    let id = UUID()     // Must be unique for each instance of the Team structure
    let name: String
    
}

let exampleTeam = Team(name: "Liverpool")

var exampleTeamSetOne = [
    
    Team(name: "Liverpool")
    
    ,
    
    Team(name: "Manchester City")
    
    ,

    Team(name: "Chelsea")
    
    ,
    
]

var exampleTeamSetTwo = [
    
    Team(name: "Aston Villa")
    
    ,
    
    Team(name: "West Ham United")
    
    ,

    Team(name: "Leeds United")
    
    ,
    
]

var exampleTeamSetThree = [
    
    Team(name: "Tottenham Hotspur")
    
    ,
    
    Team(name: "Leicester City")
    
    ,

    Team(name: "Chelsea")
    
    ,
    
]
