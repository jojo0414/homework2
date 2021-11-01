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
            Text("主頁（遊戲介紹）")
                .tabItem {
                    Label("主頁", systemImage: "house.fill")
                }
            Text("角色（個屬性列表）")
                .tabItem {
                    Label("角色", systemImage: "person.fill")
                }
            Text("地圖（三個國度的介紹）")
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