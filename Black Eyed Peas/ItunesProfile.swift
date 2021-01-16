//
//  ItunesProfile.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
import Foundation
struct ItunesProfile: View {
    @State private var showWebpage = false
    var body: some View {
        
        Button("Show Itunes Profile") {
            showWebpage = true
        }
        .sheet(isPresented: $showWebpage) {
            WebsiteView(url: URL(string: "https://music.apple.com/tw/artist/black-eyed-peas/360391?l=en")!)
        }
    }
}
