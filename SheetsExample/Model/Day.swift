//
//  Day.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-12.
//

import Foundation

// Describes who my favourite teams are, on any given day
struct Day: Identifiable {
    
    let id = UUID()
    
    // The day that I decided these are my favourite teams
    let day: Date
    
    // My favourite teams on this day
    var teams: [Team]
}

// Today's favourite teams
let now = Date()
var exampleDayOne = Day(day: now,
                        teams: exampleTeamSetOne)

// Yesterday's favourite teams
let calendar = Calendar.current
let oneDayInPast = calendar.date(byAdding: .day, value: -1, to: now) ?? Date()
var exampleDayTwo = Day(day: oneDayInPast,
                        teams: exampleTeamSetTwo)

// Favourite teams from two days ago
let twoDaysInPast = calendar.date(byAdding: .day, value: -2, to: now) ?? Date()
var exampleDayThree = Day(day: twoDaysInPast,
                          teams: exampleTeamSetThree)

// List of favourite teams on various days
var exampleDays = [
    
    exampleDayOne
    
    ,
    
    exampleDayTwo
    
    ,
    
    exampleDayThree
    
    ,
]
