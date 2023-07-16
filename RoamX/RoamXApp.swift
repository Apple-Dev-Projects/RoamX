//
//  RoamXApp.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI
import Firebase

/// The RoamX app and main window group scene.
@main
struct RoamXApp: App {
    // Register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var launchScreenManager = LaunchScreenStateManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                RootView()
                
                VStack {
                    if launchScreenManager.state != .finished {
                        LaunchView()
                            .transition(.opacity.animation(.easeOut(duration: 0.75)))
                    }
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
