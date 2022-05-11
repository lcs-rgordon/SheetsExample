//
//  AddTeamView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct AddTeamView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter team name", text: .constant(""))
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Add Team")
            
        }
        
    }
}

struct AddTeamView_Previews: PreviewProvider {
    static var previews: some View {
        AddTeamView()
    }
}
