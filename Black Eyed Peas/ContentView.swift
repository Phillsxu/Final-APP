//
//  ContentView.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
import CoreData

struct ContentView: View {
    @State var songname = "I Gotta Feeling"
    @State var previewurl = "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview123/v4/26/94/45/26944543-57d1-f7c0-4bc8-e50882e58f40/mzaf_2162840377188059079.plus.aac.p.m4a"
    @State var imgurl = "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/c4/5a/ec/c45aec94-28f7-b0b6-6494-bdbc337881d6/source/30x30bb.jpg"
    var body: some View{
        TabView{
            SongView(songname: $songname, previewurl: $previewurl, imgurl: $imgurl).tabItem {
                Image(systemName: "music.note")
                Text("Songs")
            }
            WebsiteView(url: URL(string: "https://music.apple.com/tw/artist/black-eyed-peas/360391?l=en")!).tabItem {
                Image(systemName: "person")
                Text("Itunes Profile")
            }
            GoogleSearch().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Info")
            }
        }
    }
}
