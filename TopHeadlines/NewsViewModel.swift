//
//  NewsViewModel.swift
//  TopHeadlines
//
//  Created by ramil on 09.08.2021.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var articles: [News.Article] = []
    
    func getNews() {
        APIService.shared.getJSON(urlString: Constants.endPoint, dateDecodingStrategy: .iso8601) { (result: Result<News, APIService.APIError>) in
            switch result {
            case .success(let news):
                DispatchQueue.main.async {
                    self.articles = news.articles
                    print(self.articles.count)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
    
