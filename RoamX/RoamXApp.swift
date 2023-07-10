//
//  RoamXApp.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI

/// The RoamX app and main window group scene.
@main
struct RoamXApp: App {
    @StateObject var launchScreenManager = LaunchScreenStateManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                RootView()
                
                VStack {
                    if (launchScreenManager.state != .finished) {
                        LaunchView()
                            .transition(.opacity
                                .animation(.easeOut(duration: 0.75)))
                    }
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
