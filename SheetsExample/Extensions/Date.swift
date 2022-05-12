//
//  Date.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-12.
//

import Foundation

extension Date {
    var asRelativeDateString: String {
        
        // Set up the formatting options
        // NOTE: Some good examples for date formatting...
        // https://www.codespeedy.com/get-the-current-date-and-time-in-swift-in-every-possible-format/
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.doesRelativeDateFormatting = true
        
        // Return a string formatted according to the formatter above, based on the date
        return formatter.string(from: self)
    }
}
