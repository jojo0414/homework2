//
//  Home.swift
//  homework2
//
//  Created by User12 on 2021/11/6.
//

import SwiftUI
import AVKit

struct Video: Identifiable{
    let id = UUID()
    let name: String
    let url: String
}

struct IconLink: Identifiable {
    let id = UUID()
    let name: String
    let url: String
}

struct Home: View {
    
    let videos = [
        Video(name: "捕風的異鄉人", url: "https://bit.ly/3GVX7tM"),
        Video(name: "迫近的客星", url: "https://bit.ly/3o5xa2q"),
        Video(name: "白噩與黑龍", url: "https://bit.ly/3BL07Fy"),
        Video(name: "明霄升海平", url: "https://bit.ly/3wlPEze"),
        Video(name: "風花的邀约", url: "https://bit.ly/2Yn7sxn"),
        Video(name: "玉扉繞塵歌", url: "https://bit.ly/31we9hP"),
        Video(name: "盛夏！海島？大冒險！", url: "https://bit.ly/3oaftii"),
        Video(name: "不動鳴神，泡影斷滅", url: "https://bit.ly/3ka7YGA"),
        Video(name: "韶光撫月，天下人間", url: "https://bit.ly/2YlXKeG"),
        Video(name: "霧海懸謎境", url: "https://bit.ly/3CUcbpc")
    ]
    
    let links = [
        IconLink(name: "facebook", url: "https://www.facebook.com/Genshinimpact.tw/"),
        IconLink(name: "twitter", url: "https://twitter.com/GenshinImpact"),
        IconLink(name: "youtube", url: "https://www.youtube.com/c/GenshinImpact"),
        IconLink(name: "ig", url: "https://www.instagram.com/genshinimpact/")
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    Rectangle()
                        .aspectRatio(1200/630, contentMode: .fit)
                        .overlay(
                            Image("封面")
                                .resizable()
                                .scaledToFill()
                        )
                        .clipped()
                        .padding()
                    
                    HStack{
                        Text("各版本ＰＶ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer()
                    }
                    
                    let columns = [GridItem(.adaptive(minimum: 150))]
                    LazyVGrid(columns: columns) {
                        ForEach(videos) { video in
                            NavigationLink(
                                destination: VideoView(video: video),
                                label: {
                                    VStack{
                                        Rectangle()
                                            .aspectRatio(5/3, contentMode: .fit)
                                            .overlay(
                                                Image(video.name)
                                                    .resizable()
                                                    .scaledToFill()
                                            )
                                            .clipped()
                                            .padding()
                                        
                                        Text(video.name)
                                    }
                                })
                        }
                    }
                    
                    HStack{
                        Text("相關連結")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        ForEach(links){link in
                            Link(destination: URL(string: link.url)!, label: {
                                Image(link.name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                            })
                            Spacer()
                        }
                    }
                }
                .navigationTitle("主頁")
            }
        }
    }
}



struct VideoView: View {
    
    let video: Video
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: video.url)!))
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
