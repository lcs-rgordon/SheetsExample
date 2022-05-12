//
//  SheetsExampleApp.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

@main
struct SheetsExampleApp: App {
    
    // MARK: Stored properties
    
    // The source of truth for the list of my favourite teams on a given day
    // NOTE: This would normally be populated from a persisted JSON file
    // For the purposes of this demo, the "days" list is instead
    // populated with a list of examples
    @State var days: [Day] = exampleDays

    // MARK: Computed properties
    var body: some Scene {
        WindowGroup {
            // Pass the source of truth down to the next view
            DayListView(days: $days)
        }
    }
}
