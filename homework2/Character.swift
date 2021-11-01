//
//  Character.swift
//  homework2
//
//  Created by User12 on 2021/11/1.
//

import SwiftUI

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
    
    let cards = [
        "杯裝之詩1",
        "閃焰的駐足1",
        "暫別冬都1",
        "陵藪市朝1",
        "深秘之息",
        "浮生孰來",
        "煙火之邀",
        "魚龍燈晝",
        "赤團開時",
        "杯裝之詩2",
        "暫別冬都2",
        "陵藪市朝2",
        "浪湧之瞬",
        "閃焰的駐足2",
        "葉落風隨",
        "白鷺之庭",
        "焰色天河",
        "影寂天下人",
        "浮嶽虹珠",
        "暫別冬都3"
    ]
    
    var body: some View {
        NavigationView{
            List{
                VStack{
                    ScrollView(.horizontal){
                        let rows = [GridItem()]
                        LazyHGrid(rows: rows){
                            ForEach(elements.indices){ item in
                                ElementView(element: elements[item])
                            }
                        }
                    }
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
            }
            .navigationBarTitle("角色分類")
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
