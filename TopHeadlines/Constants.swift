//
//  Constants.swift
//  TopHeadlines
//
//  Created by ramil on 09.08.2021.
//

import Foundation

enum Constants {
    static let baseURL = "https://newsapi.org/v2/top-headlines"
    static let country = "us"
    static let apiKey = API.key
    static var endPoint: String {
        Self.baseURL + "?country=" + Self.country + "&apiKey=" + Self.apiKey
    }
}
