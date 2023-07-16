//
//  LaunchScreenStateManager.swift
//  RoamX
//
//  Created by Conner Graham on 7/5/23.
//

import Foundation
import SwiftUI

enum LaunchScreenState {
    case initialized
    case taglineAnimation
    case finished
}

@MainActor
final class LaunchScreenStateManager: ObservableObject {
    @Published private(set) var state: LaunchScreenState = .initialized
    @Published private(set) var animationsFinished = false
    @Published private(set) var readyToDismiss = false
    
    var showLoading: Bool {
        animationsFinished && !readyToDismiss
    }
    
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
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.state = .finished
        }
    }
}
