//
//  Ably1069App.swift
//  Ably1069
//
//  Created by Lawrence Forooghian on 12/10/2020.
//

import SwiftUI

@main
struct Ably1069App: App {
    @UIApplicationDelegateAdaptor(MyAppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
