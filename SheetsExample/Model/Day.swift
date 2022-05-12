//
//  Day.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-12.
//

import Foundation

// Describes who my favourite teams are, on any given day
struct Day: Identifiable {
    
    // The day that I decided these are my favourite teams
    let id: Date
    
    // My favourite teams on this day
    let teams: [Team]
}

// Today's favourite teams
let now = Date()
let exampleDayOne = Day(id: now,
                        teams: exampleTeamSetOne)

// Yesterday's favourite teams
let calendar = Calendar.current
let oneDayInPast = calendar.date(byAdding: .day, value: -1, to: now) ?? Date()
let exampleDayTwo = Day(id: oneDayInPast,
                        teams: exampleTeamSetTwo)

// Favourite teams from two days ago
let twoDaysInPast = calendar.date(byAdding: .day, value: -2, to: now) ?? Date()
let exampleDayThree = Day(id: twoDaysInPast,
                          teams: exampleTeamSetThree)

// List of favourite teams on various days
let exampleDays = [
    
    exampleDayOne
    
    ,
    
    exampleDayTwo
    
    ,
    
    exampleDayThree
    
    ,
]
