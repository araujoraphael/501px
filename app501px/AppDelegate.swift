//
//  AppDelegate.swift
//  app501px
//
//  Created by Raphael Araújo on 2018-05-31.
//  Copyright © 2018 Raphael Araújo. All rights reserved.
//

import UIKit
import OAuthSwift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        if url.host == "oauth-callback" {
            OAuthSwift.handle(url: url)
        }
        return true
    }
}

