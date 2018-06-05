//
//  GetPopularPhotos.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

struct GetPopularPhotos: APIRequest {    
    typealias APIResponse = PhotosParse
    
    var route: String {
        return "photos"
    }
    
    let feature: String?
    let size: Int?
    
    init(feature: String? = nil, size: Int? = nil) {
        self.feature = feature
        self.size = size
    }
    
    func params() -> [String: Any] {
        var params: [String: Any] = [:]
        if let feature = feature {
            params.updateValue(feature, forKey: "feature")
        }
        if let size = size {
            params.updateValue(size, forKey: "image_size")
        }
        return params
    }
}
