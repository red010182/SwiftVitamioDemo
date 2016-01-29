//
//  AppDelegate.swift
//  avc
//
//  Created by tpy on 1/29/16.
//  Copyright © 2016 xmai. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        
        window?.rootViewController = HomeViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}

