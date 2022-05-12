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
                            Text(currentTeam.name)
                        }
                        
                    }, header: {
                        
                        // Title of the section is the date
                        Text(currentDay.id.asRelativeDateString)
                        
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
