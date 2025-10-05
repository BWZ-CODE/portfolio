//
//  navMenu.swift
//  portfolio
//
//  Created by Miguel Angel Bohorquez on 4/10/25.
//

import SwiftUI

struct navMenu: View {
    
    enum Tab {
        case hobbies, portfolio, sideMenu
    }
    
    @State private var selection = Tab.portfolio
    
    var body: some View {
        TabView (selection: $selection) {
            hobbies()
                .tabItem {
                    Label("Hobbies", systemImage: "line.3.horizontal")
                }.tag(Tab.hobbies)
            Portfolio()
                .tabItem {
                    Label("Portfolio", systemImage: "house.fill")
                }.tag(Tab.portfolio)
            sideMenu()
                .tabItem {
                    Label("Side Projects", systemImage: "folder")
                }.tag(Tab.sideMenu)
            
        }.tabBarMinimizeBehavior(.onScrollDown)
        
    }
}

#Preview {
    navMenu()
}
