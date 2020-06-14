//
//  NewsArticleWebView.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 15.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import SwiftUI

struct NewsArticleWebView: View {
    var newsUrl: String
    
    var body: some View {
        SwiftUIWebView(urlString: newsUrl)
            .padding(.top, 20)
    }
}
