//
//  PlayerView.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/13.
//
import Foundation
import SwiftUI
import WebKit

struct PlayerView: UIViewRepresentable {
    let urlString : String
    func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
           
            return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    typealias UIViewType = WKWebView
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(urlString: "https://music.apple.com/us/artist/blackeyedpeas/277293880?uo=4")
    }
}
