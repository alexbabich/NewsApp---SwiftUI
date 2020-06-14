//
//  NewsListView.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 15.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import SwiftUI

struct NewsListView: View {
    let newsCollection: [NewsViewModel]
    let imageData: [String: Data]
    
    var body: some View {
        List(self.newsCollection, id: \.url) { news in
            NewsCell(news: news, image: Image(uiImage: self.imageData[news.urlToImage] == nil ? UIImage(systemName: "doc.append")! : UIImage(data: self.imageData[news.urlToImage]!)!))
        }
    }
}
