//
//  Map.swift
//  homework2
//
//  Created by User12 on 2021/11/5.
//

import SwiftUI

struct Photo: Identifiable {
    let id = UUID()
    let name: String
    let content: String
}

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let content: String
    let photos: [Photo]
}

struct Map: View {
    
    let countries = [
        Country(name: "蒙德", content: "位於提瓦特大陸東北部的自由城邦\n\n群山和廣袤的平原間\n自由之風攜著蒲公英的氣息吹拂過果酒湖\n為坐落於湖心島上的蒙德城送去風神巴巴托斯的祝福與恩澤\n", photos: [
            Photo(name: "果酒湖", content: "環繞蒙德城的天然淡水湖泊\n\n寬廣的湖面和粼粼的波光歷經千百年不變\n水徹見底\n入口清冽甘甜\n\n正是這樣的水源成就了蒙德美酒的盛名\n也讓酒果湖成為了蒙德重要的標誌之一\n"),
            Photo(name: "鷹翔海灘", content: "從風起地往東延伸至海邊\n鷹翔海灘與誓言岬共同圍成三面環海的陸地\n環繞著蒙德東面的海灣\n\n鑒於海岸線較長且地處淺海位置\n經常有蒙德市民前來遊玩\n偶爾可見蒼鷹翱翔於碧浪白砂之上\n"),
            Photo(name: "誓言岬", content: "位於蒙德城東南角、風嘯山坡邊緣的海岬\n\n傳說曾有一對戀人在此許下誓言\n並留下一個感人至深的故事\n至今此地仍被認為是戀人的好去處\n\n除了觀看海上日出日落外\n由於地勢的落差\n在這裡也可以輕鬆望到海灣對面的風起地\n"),
            Photo(name: "晨曦酒莊", content: "位於蒙德城西南方的晨曦酒莊\n代代傳承著蒙德傳統的釀酒工藝\n\n這裡種植著大面積的葡萄等作物\n用它們釀造出的各類酒品風靡整個提瓦特大陸\n\n每年晨曦酒莊產出的酒品\n部分運往蒙德城內銷售\n另一部分則通過城南的商道銷往各地\n"),
            Photo(name: "清泉鎮", content: "蒙德地區南部的悠閒小鎮\n與蒙德主城隔湖相望\n\n此地居民多以打獵維生\n常年為蒙德城內的各大餐館提供優質鮮肉\n\n清泉鎮以其小鎮情調和鄉間野趣\n吸引著前來觀光的遊客\n如果在旅途中有幸遇到某位擅長肉類料理的大廚\n或許還能體驗到一段別樣的驚喜\n"),
            Photo(name: "千風神殿", content: "地處蒙德東北部的神殿遺址群\n\n據人們傳言\n千百年前這裡曾是供奉古代風神的神廟\n如今被漫長的時光侵蝕\n只剩殘存的建築廢墟\n一些石質立柱上還依稀可辨認出曾經華麗雕刻的精妙曲線\n\n所紀念的象徵早已被遺忘的石雕上雕刻著一句古老的格言\n「風帶來故事的子種，時間使之發芽。」\n")
        ]),
        Country(name: "璃月", content: "位於提瓦特大陸東方的富饒港灣\n\n傲然矗立的山麓與石林、廣袤的平原與生機勃勃的河灘共同構成了璃月的豐富地貌\n在四季分明的氣候下煥發出多彩的風華\n\n山石奇景間\n又埋藏了多少岩之魔神的古老饋贈等待著人們發掘呢？\n", photos: [
            Photo(name: "港口", content: "港口的建立為璃月的海上貿易打下了最初的基礎\n作為提瓦特大陸上最大的集貿港口\n其貨物輸送量也絕非一般港口可比擬\n\n每年海燈節時\n在港口處可以看到海上萬千宵燈飛入夜幕\n是到訪璃月不可錯過的奇景"),
            Photo(name: "天衡山", content: "璃月港西邊的山脈\n也是抵禦外敵的一道天然保護屏障\n\n有記載以來\n作為璃月的壁壘經歷了數不清的大小戰爭\n因此也可以看到不少古城牆、堡壘和防禦工事的遺蹟\n\n傳說中璃月人最早的採礦作業亦在此處進行\n"),
            Photo(name: "荻花洲", content: "荻花洲得名於淺灘中大面積生長的荻花\n是璃月北部的一處天然淺灘濕地\n\n水澤遍佈、河網交錯縱橫\n由多樣的動植物群落組成了豐富的生態系統\n也構成了來往旅客眼中絕佳的景觀\n\n同時\n荻花洲也是陸路從蒙德通往璃月的必經要道\n因此時常有商隊在此歇腳\n建在河灘深處的望舒客棧是這裡的標誌性建築\n"),
            Photo(name: "望舒客棧", content: "荻花洲的地標\n修建在一座巨大岩柱上的客棧\n\n來歇息的大多是途徑此處的商販\n客棧也因此提供了直接貿易和擺攤的場所\n高層位置視野極佳\n天氣晴朗時可以直接看到遠處的輕策山和絕雲間\n\n坊間有傳說道\n在高聳的客棧中\n傳承著某種神秘的使命\n但傳言止步於此\n從未有人能證實它的真偽\n"),
            Photo(name: "輕策莊", content: "坐落於璃月最北部\n隱藏在山丘與竹林間的村落\n\n白雲繚繞的山谷間點綴著鱗次櫛比的半月形梯田\n山風吹拂時可以看見一層層多彩的波浪\n\n在這個宛如世外桃源的地方\n輕策莊的村民過著質樸而又充實的生活\n"),
            Photo(name: "絕雲間", content: "璃月西北部常年雲霧繚繞、杳無人煙的峻嶺\n\n山間有奇景\n但由於地勢複雜、山路陡峭而鮮有人跡\n傳聞中是守護璃月的仙人們的隱居之處\n也因此受到部分求仙祈福之人的追捧\n\n鑑於其間的兇險不宜外人靠近\n最好還是站在望舒客棧遠觀吧\n")
        ]),
        Country(name: "稻妻", content: "位於提瓦特大陸遠東的封閉群島\n\n越過無盡的雷暴\n踏上紅楓與緋櫻眷顧的諸島\n在環繞的砂堤、高聳的斷崖與幽秘的山林之中\n見證御建鳴神主尊大御所大人所追尋的永恆\n",
            photos: [
            Photo(name: "離島", content: "在鎖國令期間\n若想真正踏上鳴神的領土\n就必須先通過離島這道關卡\n\n離島由勘定奉行管轄\n人們必須持有各類憑證才可出入此地\n而這些憑證往往需要複雜的手續和一些特殊的關係才能取得\n\n如果不能順利拿到憑證的話\n就只能在離島短暫駐足\n與滯留此地的其他外人一起\n略觀紅楓青瓦與蕭條漁村一景\n"),
            Photo(name: "稻妻城", content: "稻妻最為繁華熱鬧的城區\n稻妻人大多居住生活在此\n從花見坂到町街\n可順著地勢一路向上\n遊覽當地傳統的老店、品嚐稻妻的特色美食\n\n天領奉行府也位於城中\n管理民眾治安與幕府軍備等事務\n\n在稻妻城至高之處，雷電將軍高居天守\n凌於眾生之上\n"),
            Photo(name: "鎮守之森", content: "位於影向山下\n靜謐幽玄的森林\n\n隨處可見的狸貓石像、隱於林間的錯落鳥居、暗藏深處的遺落神龕…\n如同涓涓溪流\n講述著流淌在時光中的傳說\n\n聽說行走在鎮守之森中\n還能偶遇對人作怪的神秘生靈…\n"),
            Photo(name: "鳴神大社", content: "稻妻最大的神社\n位於影向山頂\n供奉著御建鳴神主尊大御所大人\n\n心懷願望的人\n可以一步步腳踏實地地登上山頂\n若是蒙獲雷元素垂青\n還可乘雷極一路向上\n直達被巨大的神櫻樹所籠罩的神社\n神櫻常開不敗\n一如鳴神永恆\n\n穿過重重鳥居\n找巫女求上一籤\n祈求鳴神的保佑吧\n"),
            Photo(name: "神無塚·踏鞴砂", content: "傳說中\n「神無塚」意為「神不在的山丘」\n直到現在也是幕府與珊瑚宮之間的是非之地\n\n神無塚地勢險峻\n岩壁高懸\n在層岩疊嶂之中\n坐落著稻妻最大的冶煉設施「御影爐心」\n稻妻鍛刀鑄劍的特殊材料玉鋼即產於此地\n"),
            Photo(name: "九條陣屋", content: "幕府軍營在神無塚的駐紮之處\n\n信仰雷電將軍的鳴神子民\n與信仰海祇大御神的珊瑚宮\n雙方之間存在著永遠無法化解的矛盾\n而這一矛盾\n因眼狩令的施行更加激化\n\n為迎戰珊瑚宮的叛軍\n天領奉行率幕府軍駐紮於此\n與珊瑚宮軍相比\n幕府軍人員充足、軍備精良、制式統一\n似是勝券在握\n"),
            Photo(name: "無想刃狹間", content: "八醞島的東部\n被一條狹長壯闊的裂谷筆直切斷\n\n此番壯景並非自然天成\n而是雷神斬落巨蛇魔神之時造就的奇觀\n此地知名得自雷神武藝之極致「無想的一刀」\n\n直至今日\n巨蛇的遺骨仍存於八醞島各處\n生自魔神殘骸的「祟神」也依舊隱隱而動…\n"),
            Photo(name: "蛇神之首", content: "被雷神「無想之一刀」斬殺的巨蛇魔神\n現今只剩下枯白的遺骨\n雖然仍在向天昂起不屈的頭顱\n但魔神已逝\n「海祇大御神」的名號也不再響亮\n\n魔神即使死去也會留下強大的力量\n受「祟神」的影響\n八醞島人跡罕至\n只有風雨和降雷還在洗刷著歷史的殘骸\n"),
            Photo(name: "名椎灘", content: "名椎灘位於八醞島與神無塚之間\n是戰事密集之處\n淺灘之上\n除了偶然落下的菫䴉之外\n遍佈著殘旗、斷箭等戰爭的痕跡\n與破敗船帆、碎裂甲板等廢棄海船的殘骸\n\n因戰亂的緣故\n海賊與浪人常在此處遊蕩\n甚至連罕見的血斛也妖冶盛開…\n")
        ])
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack{
                    Text("這裡是七種元素交匯的幻想世界「提瓦特」\n\n在遙遠的過去\n人們藉由對神靈的信仰\n獲賜了驅動元素的力量\n得以在荒野中築起家園\n\n五百年前\n古國的覆滅卻使得天地變異…\n\n如今\n席捲大陸的災難已經停息\n和平卻仍未如期光臨\n")
                        .multilineTextAlignment(.leading)
                    
                    let columns = [GridItem(.adaptive(minimum: 200))]
                    LazyVGrid(columns: columns) {
                        ForEach(countries) { country in
                            NavigationLink(
                                destination: CountryPageView(country: country),
                                label: {
                                    CountryView(country: country.name)
                                })
                        }
                    }
                }
            }
            .navigationTitle("提瓦特")
        }
    }
}

struct CountryPageView: View {
    
    let country: Country
    
    var body: some View {
        NavigationView {
            TabView {
                VStack{
                    HStack{
                        Text("介紹")
                            .font(.largeTitle)
                            .padding()
                        Spacer()
                    }
                    Rectangle()
                        .aspectRatio(5/3, contentMode: .fit)
                        .overlay(
                            Image(country.name)
                                .resizable()
                                .scaledToFill()
                        )
                        .clipped()
                        .padding()
                    
                    Text(country.content)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                }
                ForEach(country.photos){ photo in
                    VStack{
                        HStack{
                            Text(photo.name)
                                .font(.largeTitle)
                                .padding()
                            Spacer()
                        }
                        Rectangle()
                            .aspectRatio(5/3, contentMode: .fit)
                            .overlay(
                                Image(photo.name)
                                    .resizable()
                                    .scaledToFill()
                            )
                            .clipped()
                            .padding()
                        
                        Text(photo.content)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .toolbar(content: {
                ToolbarItem(placement: .cancellationAction) {
                    HStack{
                        Image(country.name + "icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                        Text(country.name)
                            .font(.largeTitle)
                    }
                }
            })
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CountryView: View {
    
    let country: String
    
    var body: some View {
        VStack {
            Rectangle()
                .aspectRatio(5/3, contentMode: .fit)
                .overlay(
                    Image(country)
                        .resizable()
                        .scaledToFill()
                )
                .clipped()
                .padding()
            Text(country)
        }
    }
}



struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Map()
            Map().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
