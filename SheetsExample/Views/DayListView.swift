//
//  DayListView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct DayListView: View {
    
    // MARK: Stored properties
    
    // The main list of days
    // A derived value; this is connected to the
    // source of truth on SheetsExampleApp, which
    // is the app entry point
    @Binding var days: [Day]

    // Should the add team interface be shown?
    // The source of truth (value is created and stored here)
    @State var isAddTeamViewShowing = false
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {

            // Start a list structure
            List {
                
                // Iterate over the days
                ForEach(days) { currentDay in
                    
                    // Make a section for each day
                    Section(content: {
                        
                        // Iterate over the teams for that day
                        ForEach(currentDay.teams) { currentTeam in
                            
                            // Show the team name
                            Text(currentTeam.name)
                                .swipeActions(allowsFullSwipe: false) {
                                    
                                    // Allow a team to be deleted
                                    Button(role: .destructive,
                                           action: {
                                        
                                        // Get the current day's position in the day array
                                        var currentDayPosition = 0
                                        for (position, day) in days.enumerated()
                                        where day.id == currentDay.id {
                                            
                                            currentDayPosition = position
                                            
                                        }
                                        // What is the day's position?
                                        print(dump(currentDayPosition))
                                        
                                        // Now remove the team from that day's list
                                        withAnimation {

                                            days[currentDayPosition].teams.removeAll(where: { currentTeamInList in
                                                currentTeamInList.id == currentTeam.id
                                            })

                                        }

                                    }, label: {
                                        
                                        Label(title: {
                                            Text("Delete team")
                                        }, icon: {
                                            Image(systemName: "trash")
                                        })
                                        
                                    })
                                }
                        }
                        
                    }, header: {
                        
                        // Title of the section is the date
                        Text(currentDay.day.asRelativeDateString)
                        
                    })
                    
                }
                
            }
            .navigationTitle("Fave Teams by Day")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    
                    Button(action: {
                        
                        // Show the add team view by setting the boolean to true
                        isAddTeamViewShowing = true
                        
                    }, label: {
                        
                        Text("Add New Team")
                        
                    })
                    
                }
            }
            // When "isAddTeamViewShowing" is true, the sheet is presented
            .sheet(isPresented: $isAddTeamViewShowing) {
//                AddTeamView(teams: $teams,
//                            isAddTeamViewShowing: $isAddTeamViewShowing)
            }

        }
        
    }
    
}

struct DayListView_Previews: PreviewProvider {
    static var previews: some View {
        DayListView(days: .constant(exampleDays))
    }
}
