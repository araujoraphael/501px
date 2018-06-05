//
//  SessionParse.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

struct SessionParse: Decodable {
    let oauthToken: String?
    let oauthTokenSecret: String?
    
    enum CodingKeys: String, CodingKey {
        case oauthToken = "oauth_token"
        case oauthTokenSecret = "oauth_token_secret"
    }
}
