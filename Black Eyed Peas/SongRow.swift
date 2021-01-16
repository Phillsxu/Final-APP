//
//  SongRow.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import Foundation
import SwiftUI
import Kingfisher

struct SongRow: View{
    var song: Song
    var body: some View{
        HStack{
            KFImage(song.artworkUrl100).renderingMode(.original).resizable().scaledToFit().frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text(song.trackName)
                Text(song.artistName)
            }
        }
    }
}
