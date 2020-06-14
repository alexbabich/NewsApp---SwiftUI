//
//  NewsViewModel.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 14.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknow"
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var url: String {
        return news.url
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://a.fsdn.com/sd/topics/money_64.png"
    }
    
}
