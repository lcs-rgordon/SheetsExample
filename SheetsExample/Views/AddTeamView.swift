//
//  AddTeamView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct AddTeamView: View {
    
    // MARK: Stored properties
    
    // The main list of teams
    // A derived value; this is connected to the
    // source of truth on SheetsExampleApp, via
    // DayListView
    @Binding var days: [Day]
    
    // Has the current day been found yet?
    @State var currentDayFound = false
    
    // A derived value; this is connected to the source of truth on DayListView
    @Binding var isAddTeamViewShowing: Bool
    
    // The name of the favourite team
    @State var newFavouriteTeamName = ""
    
    // What day was selected from the picker?
    @State var selectedDay = Date()
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("What day was this team your favourite?")
                    .padding(.top, 5)
                
                Picker(selection: $selectedDay,
                       label: Text("Day"),
                       content: {
                    
                    // If today is not the list of days, show it as an option
                    if days.first?.day != selectedDay {
                        Text("Today").tag(selectedDay)
                    }
                    
                    ForEach(days) { currentDay in
                        Text(currentDay.day.asRelativeDateString).tag(currentDay.day)
                    }
                    
                })
                .pickerStyle(.menu)
                
                TextField("Enter team name", text: $newFavouriteTeamName)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Add Team")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    
                    Button(action: {
                        
                        // Hide the view by setting the boolean back to false
                        isAddTeamViewShowing = false
                        
                        // Create a new Team structure instance
                        let newTeam = Team(name: newFavouriteTeamName)
                        
                        // Has there been a team entered for this day yet?
                        let selectedDayHasFavouriteTeam = days.contains(where: { currentDayInList in
                            return currentDayInList.day == selectedDay
                        })
                        
                        // Find the current day in the list of days, and add the team to it
                        if selectedDayHasFavouriteTeam == true {
                            
                            // Get the current day's position in the day array
                            var selectedDayPosition = 0
                            for (position, currentDay) in days.enumerated()
                            where currentDay.day == selectedDay {
                                
                                selectedDayPosition = position
                                
                            }
                            // What is the day's position?
                            print(dump(selectedDayPosition))
                            
                            // Now add the team to that day's list
                            withAnimation {

                                days[selectedDayPosition].teams.append(newTeam)

                            }
                            
                        } else {
                            
                            // Make a new day, then add that team to it
                            let newDay = Day(day: selectedDay, teams: [newTeam])
                            
                            // Insert the new days at the top of the list of days
                            days.insert(newDay, at: 0)
                            
                        }
                        
                        
                    }, label: {
                        
                        Text("Done")
                        
                    })
                    
                }
            }
            
        }
        // This runs whenever the view is recomputed / appears
        .task {
            
            // Only run if current day not found yet
            if currentDayFound == false {
                // Make the selected day be today by default
                let now = Date()
                let startOfToday = calendar.date(bySettingHour: 0,
                                                 minute: 0,
                                                 second: 0,
                                                 of: now)!
                selectedDay = startOfToday
            }
            
        }
        
    }
    
    
}

struct AddTeamView_Previews: PreviewProvider {
    static var previews: some View {
        AddTeamView(days: .constant(exampleDays),
                    isAddTeamViewShowing: .constant(true))
    }
}
