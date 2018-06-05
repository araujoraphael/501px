//
//  PhotoParse.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

struct PhotoParse: Decodable {
    let id: UInt32
    let name: String?
    let descriptionInfo: String?
    let imageUrl: [String]?

    enum CodingKeys: String, CodingKey {
        case imageUrl = "image_url"
        case descriptionInfo = "description"
        case id = "id"
        case name = "name"
    }
}
