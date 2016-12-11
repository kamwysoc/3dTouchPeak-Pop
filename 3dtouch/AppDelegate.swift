//
//  AppDelegate.swift
//  3dtouch
//
//  Created by Kamil Wysocki on 11/11/2016.
//  Copyright (c) 2016 k8mil. All rights reserved.
//

import UIKit
import MapKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let vc = ViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
    }

}
