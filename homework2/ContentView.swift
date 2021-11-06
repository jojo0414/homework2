//
//  ContentView.swift
//  homework2
//
//  Created by User12 on 2021/10/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView
        {
            Home()
                .tabItem {
                    Label("主頁", systemImage: "house.fill")
                }
            Character()
                .tabItem {
                    Label("角色", systemImage: "person.fill")
                }
            Map()
                .tabItem {
                    Label("地圖", systemImage: "map.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
