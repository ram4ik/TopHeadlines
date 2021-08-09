//
//  News.swift
//  TopHeadlines
//
//  Created by ramil on 09.08.2021.
//

import Foundation

struct News: Codable {
    struct Article: Codable {
        struct Source: Codable {
            let name: String
        }
        let source: Source
        let author: String?
        let title: String
        let description: String?
        let url: URL
        let urlToImage: URL?
        let publishedAt: Date
    }
    let articles: [Article]
}
