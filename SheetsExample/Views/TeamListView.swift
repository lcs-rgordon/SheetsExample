//
//  TeamListView.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

struct TeamListView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            List {
                Text("Liverpool")
                Text("Manchester City")
                Text("Chelsea")
            }
            .navigationTitle("Teams")
        }
        
    }
    
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}
