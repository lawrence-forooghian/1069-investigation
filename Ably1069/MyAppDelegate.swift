//
//  MyAppDelegate.swift
//  Ably1069
//
//  Created by Lawrence Forooghian on 12/10/2020.
//

import UIKit

class MyAppDelegate: NSObject, UIApplicationDelegate, MyObjCProtocol {

    func myMethod() {
        NSLog("inside app delegate's myMethod")
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        NSLog("app did finish launching")
        
        MyObjCClass().interrogateAppDelegate()
        
        return true
    }
}
