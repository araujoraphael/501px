//
//  PhotoParse.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

struct PhotosParse: Decodable {
    let currentPage: Int
    let totalPages: Int
    let photos: [PhotoParse]?
    enum CodingKeys: String, CodingKey {
        case currentPage = "current_page"
        case totalPages = "total_pages"
        case photos = "photos"
    }
}
