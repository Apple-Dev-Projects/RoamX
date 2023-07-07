//
//  LaunchScreenStateManager.swift
//  RoamX
//
//  Created by Conner Graham on 7/5/23.
//

import Foundation
import SwiftUI

@MainActor
final class LaunchScreenStateManager: ObservableObject {
    @Published private(set) var state: LaunchScreenState = .initialized
    @Published private var animationsFinished = false
    @Published private var readyToDismiss = false
    
    var canDismiss: Bool {
        animationsFinished && readyToDismiss
    }
    
    func advanceState() {
        switch state {
        case .initialized:
            state = .taglineAnimation
        case .taglineAnimation:
            animationsFinished = true
        case .finished:
            break
        }
    }
    
    func setReadyToDismis() {
        readyToDismiss = true
    }
    
    func dismiss() {
        Task {
            try? await Task.sleep(for: Duration.seconds(1))
        }
        
        withAnimation(.easeOut(duration: 0.75)) {
            state = .finished
        }
    }
}
