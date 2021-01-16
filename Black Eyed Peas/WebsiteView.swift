//
//  WebsiteView.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
import SafariServices

struct WebsiteView: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
            
    }
    let url: URL
}
