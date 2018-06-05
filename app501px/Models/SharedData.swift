//
//  SharedData.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation
import OAuthSwift
class SharedData: NSObject {
    static let shared = SharedData()
    var session: SessionParse?
    var oauthSwift = OAuth1Swift(consumerKey: API.Credentials.ConsumerKey,
                                 consumerSecret: API.Credentials.ConsumerSecret,
                                 requestTokenUrl: "https://api.500px.com/v1/oauth/request_token",
                                 authorizeUrl: "https://api.500px.com/v1/oauth/authorize",
                                 accessTokenUrl: "https://api.500px.com/v1/oauth/access_token")
}
