//
//  AppDelegate.swift
//  Redo movieList
//
//  Created by Robert B on 9/13/19.
//  Copyright © 2019 lambda school. All rights reserved.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Model.shared.loadData()
        
        return true
    }
}

