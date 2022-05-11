//
//  AddTeamView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct AddTeamView: View {
    
    // MARK: Stored properties
    
    // A derived value; this is connected to the source of truth on TeamListView
    @Binding var isAddTeamViewShowing: Bool
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter team name", text: .constant(""))
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Add Team")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    
                    Button(action: {
                        
                        // Hide the view by setting the boolean back to false
                        isAddTeamViewShowing = false
                        
                    }, label: {
                        
                        Text("Done")
                        
                    })
                    
                }
            }
            
        }
        
    }
}

struct AddTeamView_Previews: PreviewProvider {
    static var previews: some View {
        AddTeamView(isAddTeamViewShowing: .constant(true))
    }
}
