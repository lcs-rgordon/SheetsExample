//
//  Team.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import Foundation

struct Team: Identifiable {
    
    let id: Int     // Must be unique for each instance of the Team structure
    let name: String
    
}

let exampleTeam = Team(id: 1, name: "Liverpool")

let exampleTeamSetOne = [
    
    Team(id: 1, name: "Liverpool")
    
    ,
    
    Team(id: 2, name: "Manchester City")
    
    ,

    Team(id: 3, name: "Chelsea")
    
    ,
    
]

let exampleTeamSetTwo = [
    
    Team(id: 1, name: "Aston Villa")
    
    ,
    
    Team(id: 2, name: "West Ham United")
    
    ,

    Team(id: 3, name: "Leeds United")
    
    ,
    
]

let exampleTeamSetThree = [
    
    Team(id: 1, name: "Tottenham Hotspur")
    
    ,
    
    Team(id: 2, name: "Leicester City")
    
    ,

    Team(id: 3, name: "Chelsea")
    
    ,
    
]
