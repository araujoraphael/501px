//
//  APIRequest.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import Foundation

protocol APIRequest: Encodable {
    associatedtype APIResponse: Decodable
    var route: String { get }
    
    func params() -> [String: Any]
}
