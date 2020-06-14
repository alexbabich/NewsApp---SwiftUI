//
//  NewsHome.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 15.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import SwiftUI

struct NewsHome: View {
    
    @ObservedObject private var newsListVM = NewsListVM()
    
    init() {
        newsListVM.load()
    }
    
    var body: some View {
        VStack {
            NewsListHeader()
            NewsListView(newsCollection: self.newsListVM.news, imageData: self.newsListVM.imageData)
        }
    }
}

struct NewsHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsHome()
    }
}
