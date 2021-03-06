//
//  AppDelegate.swift
//  CoredataExperiment
//
//  Created by Banerjee, Subhodip on 12/07/18.
//  Copyright © 2018 Subhodip. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        setUpRootView()
        setUpNavigationController()
        return true
    }
    
    func setUpRootView(){
        let vc = SchoolsViewController()
        // let vc = SchoolsAutoupdateVC()
        // Please uncomment the above line if you want to experiment Json to Core data model change experiment.
        let navigationController = CustomNavigationController(rootViewController: vc)
        window?.rootViewController = navigationController
    }
    
    func setUpNavigationController(){
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        let transparentBlueColor = UIColor(red: 108/255, green: 164/255, blue: 200/255, alpha: 0.8)
        UINavigationBar.appearance().barTintColor = transparentBlueColor
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
}

