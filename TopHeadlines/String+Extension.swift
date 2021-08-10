//
//  String+Extension.swift
//  TopHeadlines
//
//  Created by ramil on 10.08.2021.
//

import Foundation

extension String {
    var withoutHtmlTags: String {
    return self.replacingOccurrences(of: "<[^>]+>", with: "", options:
    .regularExpression, range: nil).replacingOccurrences(of: "&[^;]+;", with:
    "", options:.regularExpression, range: nil)
    }
}
