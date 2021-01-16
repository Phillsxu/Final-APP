//
//  MusicContent.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import Foundation
import SwiftUI
import UIKit
import AVFoundation
import Kingfisher

struct MusicContent: View{
    var previewUrl: String
    var songname: String
    var imgurl: String
    @State private var showSinger = false
    @State private var scale: CGFloat = 1
    var body: some View{
        let url = URL(string: imgurl)
        VStack{
            KFImage(url)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .gesture(MagnificationGesture()
                .onChanged { value in
                scale = value.magnitude
                })
                .onLongPressGesture{
                showSinger = true
            }.sheet(isPresented: $showSinger, content: {
                ItunesProfile()
            })
            
            Text(songname)
            PlayerView(urlString: previewUrl)
        }
    }
}
