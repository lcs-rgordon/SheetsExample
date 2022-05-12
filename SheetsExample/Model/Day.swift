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

// Get the calendar for this locale
let calendar = Calendar.current

// Get today
let now = Date()
let startOfToday = calendar.date(bySettingHour: 0,
                                 minute: 0,
                                 second: 0,
                                 of: now)!

// First example is favourite teams from yesterday
let oneDayInPast = calendar.date(byAdding: .day, value: -1, to: startOfToday) ?? Date()
var exampleDayOne = Day(day: oneDayInPast,
                        teams: exampleTeamSetOne)

// Second example is favourite teams from two day's ago
let twoDaysInPast = calendar.date(byAdding: .day, value: -2, to: startOfToday) ?? Date()
var exampleDayTwo = Day(day: twoDaysInPast,
                        teams: exampleTeamSetTwo)

// Third example is favourite teams from three day's ago
let threeDaysInPast = calendar.date(byAdding: .day, value: -3, to: startOfToday) ?? Date()
var exampleDayThree = Day(day: threeDaysInPast,
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
