//
//  Character.swift
//  homework2
//
//  Created by User12 on 2021/11/1.
//

import SwiftUI

struct Up: Identifiable {
    let id = UUID()
    let name: String
    let character_up: String
    let duration: String
}

struct Character: View {
    
    let elements = [
        "火",
        "水",
        "風",
        "雷",
        "草",
        "冰",
        "岩",
    ]
    
    let cards_2020 = [
        Up(name: "杯裝之詩1", character_up: "溫迪", duration: "2020-09-28 ~ 2020-10-18"),
        Up(name: "閃焰的駐足1", character_up: "可莉", duration: "2020-10-20 ~ 2020-11-10"),
        Up(name: "暫別冬都1", character_up: "達達利亞", duration: "2020-11-11 ~ 2020-12-01"),
        Up(name: "陵藪市朝1", character_up: "鍾離", duration: "2020-12-01 ~ 2020-12-22"),
        Up(name: "深秘之息", character_up: "阿貝多", duration: "2020-12-23 ~ 2021-01-12")
    ]
    
    let cards_2021 = [
        Up(name: "浮生孰來", character_up: "甘雨", duration: "2021-01-12 ~ 2021-02-02"),
        Up(name: "煙火之邀", character_up: "魈", duration: "2021/02/03 ~ 2021/02/17"),
        Up(name: "魚龍燈晝", character_up: "刻晴", duration: "2021/02/17 ~ 2021/03/02"),
        Up(name: "赤團開時1", character_up: "胡桃", duration: "2021-03-02 ~ 2021-03-16"),
        Up(name: "杯裝之詩2", character_up: "溫迪", duration: "2021-03-17 ~ 2021-04-06"),
        Up(name: "暫別冬都2", character_up: "達達利亞", duration: "2021-04-06 ~ 2021-04-27"),
        Up(name: "陵藪市朝2", character_up: "鍾離", duration: "2021-04-28 ~ 2021-05-18"),
        Up(name: "浪湧之瞬", character_up: "優菈", duration: "2021-05-18 ~ 2021-06-08"),
        Up(name: "閃焰的駐足2", character_up: "可莉", duration: "2021-06-09 ~ 2021-06-29"),
        Up(name: "葉落風隨", character_up: "萬葉", duration: "2021-06-29 ~ 2021-07-20"),
        Up(name: "白鷺之庭", character_up: "神里", duration: "2021-07-21 ~ 2021/08/10"),
        Up(name: "焰色天河", character_up: "宵宮", duration: "2021/08/10 ~ 2021/08/31"),
        Up(name: "影寂天下人", character_up: "雷電將軍", duration: "2021/09/01 ~ 2021/09/21"),
        Up(name: "浮嶽虹珠", character_up: "珊瑚宮心海", duration: "2021/09/21 ~ 2021/10/12"),
        Up(name: "暫別冬都3", character_up: "達達利亞", duration: "2021/10/13 ~ 2021/11/02 "),
        Up(name: "赤團開時2", character_up: "胡桃", duration: "2021/11/02 ~ 2021/11/23")
    ]
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("根據元素分類")){
                    ScrollView(.horizontal, showsIndicators: false){
                        let rows = [GridItem()]
                        LazyHGrid(rows: rows){
                            ForEach(elements.indices){ item in
                                ElementView(element: elements[item])
                            }
                        }
                    }
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                
                Section(header: Text("2020角色Up池")){
                    ForEach(cards_2020) { Up in
                        CardView(card: Up)
                    }
                }
                
                Section(header: Text("2021角色Up池")){
                    ForEach(cards_2021) { Up in
                        CardView(card: Up)
                    }
                }
                
            }
            .navigationBarTitle("角色分類")
        }
    }
}

struct CardView: View {
    let card: Up
    
    var body: some View{
        HStack{
            Image(card.name)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 80)
                .clipped()
            VStack(alignment: .leading){
                Text(card.character_up + " Up")
                Text(card.duration)
            }
        }
    }
}

struct ElementView: View {
    let element: String
    
    var body: some View{
        VStack{
            Image(element)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
            Text(element)
        }
    }
}

struct Character_Previews: PreviewProvider {
    static var previews: some View {
        Character()
    }
}
