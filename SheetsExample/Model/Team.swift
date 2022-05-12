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

var exampleTeamSetOne = [
    
    Team(id: 1, name: "Liverpool")
    
    ,
    
    Team(id: 2, name: "Manchester City")
    
    ,

    Team(id: 3, name: "Chelsea")
    
    ,
    
]

var exampleTeamSetTwo = [
    
    Team(id: 4, name: "Aston Villa")
    
    ,
    
    Team(id: 5, name: "West Ham United")
    
    ,

    Team(id: 6, name: "Leeds United")
    
    ,
    
]

var exampleTeamSetThree = [
    
    Team(id: 7, name: "Tottenham Hotspur")
    
    ,
    
    Team(id: 8, name: "Leicester City")
    
    ,

    Team(id: 9, name: "Chelsea")
    
    ,
    
]
