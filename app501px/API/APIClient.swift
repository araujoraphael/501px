//
//  APIClient.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-06-03.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//
import Foundation

enum Result<Value, Error> {
    case success(Value)
    case failure(Error)
}
typealias ResultCallback<Value> = (Result<Value, Error>) -> Void

public class APIClient {
    func send<T: APIRequest>(_ request: T, onCompletion: @escaping ResultCallback<T.APIResponse>) {
        let url = urlFor(request)
        print(url)
        let oauthSwift = SharedData.shared.oauthSwift
        _ = oauthSwift.client.get(url, success: { (response) in
            do {
                let results = try JSONDecoder().decode(T.APIResponse.self, from: response.data)
                onCompletion(.success(results))
            } catch (let exception) {
                onCompletion(.failure(exception))
            }
        }, failure: { (failure) in
            onCompletion(.failure(failure))
        })
    }
    
    private func urlFor<T: APIRequest>(_ request: T) -> String {
        var url = "\(API.Endpoints.APIBaseURL)/\(request.route)"
        var urlParams = ""
        let params = request.params()
        if params.keys.count > 0 {
            let keys = Array(params.keys)
            url = url + "?"
            for key in keys {
                if let value = params[key] {
                    urlParams = "\(urlParams)\(key)=\(value)"
                }
                if keys.index(of: key) != keys.count - 1 {
                    urlParams += "&"
                }
            }
        }
        return "\(url)\(urlParams)"
    }
}
