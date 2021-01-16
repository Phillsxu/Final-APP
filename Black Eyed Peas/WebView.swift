//
//  WebView.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()
            if let url = URL(string: "https://music.apple.com/tw/artist/black-eyed-peas/360391?l=en") {
                let request = URLRequest(url: url)
                webView.load(request)
            }
           
            return webView
    }
    
    typealias UIViewType = WKWebView
}
