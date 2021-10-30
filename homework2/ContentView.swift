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
            Text("主頁（全角色）")
                .tabItem {
                    Label("主頁", systemImage: "house.fill")
                }
            Text("火")
                .tabItem {
                    Label("火", systemImage: "")
                }
            Text("水")
                .tabItem {
                    Label("水", systemImage: "")
                }
            Text("風")
                .tabItem {
                    Label("風", systemImage: "")
                }
            Text("雷")
                .tabItem {
                    Label("雷", systemImage: "")
                }
            Text("草")
                .tabItem {
                    Label("草", systemImage: "")
                }
            Text("冰")
                .tabItem {
                    Label("冰", systemImage: "")
                }
            Text("炎")
                .tabItem {
                    Label("炎", systemImage: "")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
