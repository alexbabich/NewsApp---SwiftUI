//
//  NewsCell.swift
//  NewsApp - SwiftUI
//
//  Created by Alex Babich on 15.06.2020.
//  Copyright © 2020 Alex Babich. All rights reserved.
//

import SwiftUI

struct NewsCell: View {
    
    let news: NewsViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            image
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 200, alignment: .center)
            .clipped()
            .cornerRadius(20)
                .shadow(color: .black, radius: 5, x: 5, y: 5)
            
            Text(news.author)
                .font(.subheadline)
            .padding(10)
                .foregroundColor(.white)
                .background(Color.gray)
            .cornerRadius(10)
            
            Text(news.description)
                .font(.subheadline)
                .foregroundColor(.black)
        }.sheet(isPresented: $isPresented) {
            NewsArticleWebView(newsUrl: self.news.url)
        }
        .onTapGesture {
            self.isPresented.toggle()
        }
    }
}
