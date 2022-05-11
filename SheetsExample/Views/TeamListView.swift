//
//  TeamListView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct TeamListView: View {
    
    // MARK: Stored properties
    
    // Should the add team interface be shown?
    // The source of truth (value is created and stored here)
    @State var isAddTeamViewShowing = false
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            List {
                Text("Liverpool")
                Text("Manchester City")
                Text("Chelsea")
            }
            .navigationTitle("Teams")
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
            .sheet(isPresented: $isAddTeamViewShowing) {
                AddTeamView(isAddTeamViewShowing: $isAddTeamViewShowing)
            }

        }
        
    }
    
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}
