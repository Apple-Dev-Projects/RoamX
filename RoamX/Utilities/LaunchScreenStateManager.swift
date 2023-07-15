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
    @Published private(set) var animationsFinished = false
    @Published private var readyToDismiss = false
    
    var canDismiss: Bool {
        animationsFinished && readyToDismiss
    }
    
    func advanceState() {
        withAnimation(.easeInOut) {
            switch state {
            case .initialized:
                state = .taglineAnimation
            case .taglineAnimation:
                animationsFinished = true
            case .finished:
                break
            }
        }
    }
    
    func setReadyToDismis() {
        withAnimation(.easeOut) {
            readyToDismiss = true
        }
    }
    
    func dismiss() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(.easeOut) {
                self.state = .finished
            }
        }
    }
}
