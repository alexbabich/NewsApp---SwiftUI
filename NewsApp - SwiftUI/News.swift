//
//  News.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 14.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import Foundation

struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String
}

struct NewsEvenlope: Decodable {
    let status: String
    let totalResults: Int
    let articles: [News]
}
