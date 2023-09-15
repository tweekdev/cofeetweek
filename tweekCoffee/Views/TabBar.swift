//
//  TabBar.swift
//  tweekCoffee
//
//  Created by tweekdev on 14/09/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Guide", systemImage: "book.closed")
                }
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
        
            SettingsView()
                .tabItem {
                    Label("More", systemImage: "ellipsis")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
