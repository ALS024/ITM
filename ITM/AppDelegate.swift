//
//  AppDelegate.swift
//  ITM
//
//  Created by Rolman De los Santos on 10/19/17.
//  Copyright © 2017 Rolman De los Santos. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       FirebaseApp.configure()
        
        return true
    }


}

