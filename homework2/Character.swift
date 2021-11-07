//
//  Character.swift
//  homework2
//
//  Created by User12 on 2021/11/1.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let element: String
    let wepon: String
    let content: String
    let country: String
}

struct Character: View {
    
    let elements = [
        "火",
        "水",
        "風",
        "雷",
        "冰",
        "岩",
    ]
    
    let countries = [
        "蒙德",
        "璃月",
        "稻妻",
        "至冬"
    ]
    
    let cards = [
        Card(name: "溫迪", element: "風",wepon: "弓", content: "來路不明的吟游詩人\n有時唱一些老掉牙的舊詩\n有時又會唱出誰也沒聽過的新歌\n\n喜歡蘋果和熱鬧的氣氛\n討厭乳酪和切黏糊糊的物質\n\n在引導“風”的元素力時\n元素的塑形往往外顯為羽毛\n因為他很中意看上去輕飄飄的東西\n", country: "蒙德"),
        Card(name: "迪盧克", element: "火", wepon: "雙手劍", content:
                "身為蒙德城第一富豪\n風度翩翩的迪盧克總是以完美的貴公子形象示人\n\n然而他真實的一面\n是秉承堅定信念的戰士\n他那「不惜一切守護蒙德」的意志猶如火焰般熾熱\n令他能以恐怖的攻勢\n毫不留情地將一切敵人擊潰\n", country: "蒙德"),
        Card(name: "琴", element: "風", wepon: "單手劍", content: "身為西風騎土團的代理團長\n琴一直忠於職守\n為人們帶來安寧\n雖然並非天賦異票\n但通過刻苦訓練\n如今的她已然能夠獨當一面\n\n當風魔龍的威脅開始臨近\n這位元可靠的代理團長早已做好了準備\n誓要守護蒙德\n", country: "蒙德"),
        Card(name: "可莉", element: "火", wepon: "法器", content: "西風騎土團\n火花騎士\n永遠伴隨閃光與爆炸出現！\n\n然後在琴團長嚴厲的目光注視下默默消失\n\n雖然新炸藥的配方\n很多都是在被關禁閉的時候想出來的……\n\n 但如果不被關禁閉的話\n就更好了\n", country: "蒙德"),
        Card(name: "莫娜", element: "水", wepon: "法器", content: "神秘的少女占星術士\n聲稱自己是「偉大的占星術士莫娜」\n擁有與名號相符的不俗實力\n博學而高傲\n\n儘管過著拮据、清貧的生活\n但她堅決不用占卜來牟利……\n正是這種堅持\n導致莫娜總是在為生計發愁\n", country: "蒙德"),
        Card(name: "阿貝多", element: "岩", wepon: "單手劍", content: "現定居蒙德的鍊金術士\n效力於西風騎士團\n\n「天才」、「白堊之子」或「調查隊長」……\n他不怎麼在意稱號和名望\n只專注於研究課題\n\n財富和人脈不是他的目標\n他渴望駕馭的\n是從古到今深藏於人類頭腦中的無上知識。", country: "蒙德"),
        Card(name: "優菈", element: "冰", wepon: "雙手劍", content: "全名優菈·勞倫斯\n古老家族出身的「浪花騎士」\n西風騎士團游擊小隊隊長\n\n身為舊族後裔卻加入了堪稱死對頭的西風騎士團\n該事件至今仍是蒙德一大謎團\n", country: "蒙德"),
        Card(name: "刻晴", element: "雷", wepon: "單手劍", content:
             "璃月七星之一\n玉衡星\n對「帝君一言而決的璃月」頗有微詞——但實際上\n神還滿欣賞她這樣的人\n\n她堅信與人類命運相關的事\n應當由人類去做\n而且人類一定可以做得更好\n為了證明這一點\n她比任何人都要努力\n", country: "璃月"),
        Card(name: "七七", element: "冰", wepon: "單手劍", content: "藥廬「不卜廬」的採藥姑娘兼學徒\n\n因「仙緣」而擁有不死之身\n行動時需要自己對自己下敕令\n\n七七的記憶力非常差\n為了確保日常生活的順利\n她隨身攜帶著一本筆記\n寫有各種各樣的注意事項\n\n但在最不巧的那些日子裡\n她連「要看筆記」這件事都會忘記……\n", country: "璃月"),
        Card(name: "鍾離", element: "岩", wepon: "長柄武器", content: "應「往生堂」邀請而來的神秘客卿\n達達利亞的好友\n\n樣貌俊美、舉止高雅\n擁有遠超常人的學識\n\n雖說來歷不明\n卻知禮數、曉規矩\n坐鎮「往生堂」\n能行天地萬物之典儀\n\n其真實身份為岩王帝君「摩拉克斯」\n", country: "璃月"),
        Card(name: "甘雨", element: "冰", wepon: "弓", content: "璃月七星的秘書\n體內流淌著人類與仙獸的血脈\n\n天性優雅嫻靜\n但仙獸「麒麟」溫柔的性情與堅定毅重的工作態度毫無衝突\n\n畢竟\n甘雨堅信自己所做的一切工作都是為了踐行與帝君的契約\n謀求璃月眾生的最大福祉\n", country: "璃月"),
        Card(name: "魈", element: "風", wepon: "長柄武器", content: "守護璃月港的「三眼五顯仙人」之一\n妙稱「護法夜叉大將」\n\n雖然外表看起來是一個少年人\n但一些有關他的傳說\n已在古卷中流傳千年\n\n對望舒客棧中一道名為「杏仁豆腐」的菜頗為喜愛\n究其原因\n是因為「杏仁豆腐」的味道\n與他曾經吞噬過的「美夢」十分相似\n", country: "璃月"),
        Card(name: "胡桃", element: "火", wepon: "長柄武器", content:
             "胡桃--「往生堂」第七十七代堂主\n掌控著璃月葬儀事務的重要人物\n\n盡心盡力地為人們完成送別之儀\n維維護著世間陰陽平衡之道\n\n 除此以外還是個神奇打油詩人\n諸多「傑作」被璃月人口口相傳\n", country: "璃月"),
        Card(name: "達達利亞", element: "水", wepon: "弓", content: "愚人眾執行官中的第十一席（末席）\n代號「公子」\n本名阿賈克斯\n\n向來心思變幻莫測\n不必猜測他的想法\n也無需質疑他的來意\n只要記住：\n這副稚氣未脫的外表下暗藏的\n是錘鍊到極致的戰士之軀\n", country: "至冬"),
        Card(name: "楓原萬葉", element: "風", wepon: "單手劍", content: "稻妻出身的浪人武士\n為人謙和\n個性溫順\n\n年輕瀟灑的外表下埋藏著許多往事\n看似隨性\n心中卻有獨屬於自己的行事準則\n\n摯友死於御前決鬥後帶著朋友的神之眼逃離稻妻\n後被北斗收留\n現在棲身於北斗的南十字艦隊\n可以敏銳聆聽自然的聲音\n", country: "稻妻"),
        Card(name: "神里綾華", element: "冰", wepon: "單手劍", content: "稻妻「社奉行」神里家的大小姐\n容姿端麗\n品行高潔\n\n並不深居簡出\n而是頻繁往來於稻妻的各個世界\n\n為人謙恭有禮\n進退有度\n又有一顆善心\n會對遭受苦難的人深出援手\n被民眾敬稱為「白鷺公主」\n\n與出任家主的哥哥神里綾人一同打點家族\n兄妹分工\n哥哥掌管政務\n妹妹則主理家族內外事宜\n", country: "稻妻"),
        Card(name: "宵宮", element: "火", wepon: "弓", content: "全名長野原宵宮\n才華橫溢的煙花工匠\n「長野原煙花店」現任店主\n被譽為「夏祭的女王」\n在稻妻城內可謂是家喻戶曉\n\n她認為煙花以及煙花背後人們心中的感情彌足珍貴\n她的煙花演出連雷電將軍都認可\n\n在日常生活中很有童心\n能和孩子們玩在一起\n人緣很好\n", country: "稻妻"),
        Card(name: "雷電將軍", element: "雷", wepon: "長柄武器", content: "本名雷電影\n稻妻全土毋容置疑的統治者\n擔負著「御建鳴神主尊大御所」之威名\n許稻妻民眾以亙古不變之「永恆」\n以無情的稻光擊碎愛執\n以孤獨的心鑄就淨土\n\n外表上冷艷凌冽\n是整個稻妻的核心所在\n\n作為神明的名稱本為「巴爾澤布」\n在前任雷神雷電真逝去後\n對外沿用其「巴爾」一名\n", country: "稻妻"),
        Card(name: "珊瑚宮心海", element: "水", wepon: "法器", content: "反抗軍的首領\n雖然外表很柔弱\n但卻是一位足智多謀的軍師\n\n平時總是帶著一副很恬靜的笑容\n能在談笑間就把所有事安排的井井有條\n", country: "稻妻")
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("根據元素分類")){
                    ScrollView(.horizontal, showsIndicators: false){
                        let rows = [GridItem()]
                        LazyHGrid(rows: rows){
                            ForEach(elements.indices){ item in
                                NavigationLink(
                                    destination: ElementPageView(element: elements[item], cards: cards),
                                    label: {
                                        ElementView(element: elements[item])
                                    })
                            }
                        }
                    }
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                
                ForEach(countries.indices){item in
                    Section(header: Text(countries[item])){
                        ForEach(cards) { card in
                            if card.country == countries[item]{
                                NavigationLink(
                                    destination: CharacterView(name: card.name, element: card.element, wepon: card.wepon, content: card.content),
                                    label: {
                                        CardView(card: card)
                                    })
                            }
                        }
                    }
                }
                
                Section(header: Text("未知")) {
                    NavigationLink(
                        destination: FoodView(),
                        label: {
                            HStack{
                                Image("派蒙")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipped()
                                Image("food")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                                
                                Text("派蒙")
                            }
                        })
                }
            }
            .navigationTitle("角色")
        }
    }
}

struct FoodView: View {
    
    @State private var show = true
    
    var body: some View{
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(alignment: .center){
                    if show{
                        Text("我是你的好導遊～")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .animation(nil, value: show)
                        
                        Image("派蒙1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 300)
                            .clipped()
                            .transition(.opacity)
                    }
                    else{
                        Text("其實是應急食品歐")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        Image("派蒙2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 300)
                            .clipped()
                            .transition(.opacity)
                    }
                    
                    Button(show ? "發掘派蒙的真實身份":"太殘忍了還是假裝不知道吧"){
                        show.toggle()
                    }
                }
                .animation(.easeIn(duration: 0.5), value: show)
                .onAppear{
                    show = true
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    HStack{
                        Image("food")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)

                        Text("派蒙")
                            .font(.largeTitle)
                    }
                }
            })
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ElementPageView: View {
    let element: String
    let cards: [Card]
    
    var body: some View{
        NavigationView {
            List{
                ForEach(cards) { card in
                    if card.element == element{
                        NavigationLink(
                            destination: CharacterView(name: card.name, element: card.element, wepon: card.wepon, content: card.content),
                            label: {
                                CardView(card: card)
                            })
                    }
                }
            }
            .navigationTitle(element)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CharacterView: View {
    let name: String
    let element: String
    let wepon: String
    let content: String
    
    @State private var show = false
    
    var body: some View{
        NavigationView{
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(alignment: .center){
                    if show{
                        Image(name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 550)
                            .clipped()
                            .transition(.opacity)
                        
                        VStack(alignment: .center){
                            Text(wepon)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .padding()
                            Text(content)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                .animation(.easeIn(duration: 0.5), value: show)
                .onAppear{
                    show = true
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    HStack{
                        Image(element)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)

                        Text(name)
                            .font(.largeTitle)
                    }
                }
            })
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}



struct CardView: View {
    let card: Card
    
    var body: some View{
        HStack{
            Image(card.name + "head")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            Image(card.element)
                .resizable()
                .scaledToFill()
                .frame(width: 25, height: 25)
            
            Text(card.name)
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
        Group {
            Character()
            Character().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
