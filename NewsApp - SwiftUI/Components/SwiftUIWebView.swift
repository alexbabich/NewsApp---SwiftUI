//
//  SwiftUIWebView.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 15.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let webview = WKWebView()
        webview.load(request)
        return webview
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
