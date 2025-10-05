//
//  portfolioApp.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 4/10/25.
//

import SwiftUI

@main
struct portfolioApp: App {
    var body: some Scene {
        WindowGroup {
            navMenu()
                .preferredColorScheme(ColorScheme.light)
        }
    }
}
