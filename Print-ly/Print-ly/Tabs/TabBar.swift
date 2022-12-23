//
//  TabBar.swift
//  Print-ly
//
//  Created by Maryam Aloudah on 19/09/2022.
//

import SwiftUI



struct TabBar: View {
    //@StateObject var cartManager = CartManager()
   // var product: row
    
    private enum Tab: Hashable {
        case MainView
        case Profile
        case Fav
        
    }
    
    @State private var selectedTab: Tab = .MainView
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tag(0)
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }
           
            Basket()
                .tag(1)
                .tabItem {
                    Text("Basket")
                    Image(systemName: "bag")
                  
                }
            Profile()
                .tag(2)
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.crop.circle")
                    
                }
         
        }

    }
}
