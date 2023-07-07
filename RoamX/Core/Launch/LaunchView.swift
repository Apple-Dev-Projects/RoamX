//
//  LaunchView.swift
//  RoamX
//
//  Created by Conner Graham on 7/6/23.
//

import SwiftUI

struct LaunchView: View {
    @EnvironmentObject private var launchScreenManager: LaunchScreenStateManager
    
    @State private var taglineIndex: Int = 0
    @State private var tagline: [String] = []
    @State private var fadeoutAnimation = false
    
    private let taglineText: [String] = ["Plan.", "Roam.", "Explore."]
    private let animationTimer = Timer
        .publish(every: 1.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack {
            BackgroundView
            LogoView
            ZStack {
                TaglineView
            }
            .offset(y: 100)
        }
        .onAppear {
            launchScreenManager.advanceState()
        }
        .onReceive(animationTimer) { timerValue in
            updateTaglineAnimation()
            checkCanDismiss()
        }
        .opacity(fadeoutAnimation ? 0 : 1)
    }
    
    @ViewBuilder
    private var BackgroundView: some View {
        Color.launch.background
            .ignoresSafeArea()
    }
    
    @ViewBuilder
    private var LogoView: some View {
        Image("logo.fill.multicolor")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
    }
    
    @ViewBuilder
    private var TaglineView: some View {
        HStack {
            ForEach(tagline.indices, id: \.self) { index in
                Text(tagline[index])
                    .font(.title).bold().fontDesign(.rounded)
                    .foregroundColor(Color.launch.accent)
                    .shadow(radius: 2, x: 5, y: 4)
                    .transition(.opacity.animation(.linear))
            }
        }
    }
    
    private func updateTaglineAnimation() {
        if (taglineIndex < taglineText.count) {
            withAnimation(.spring(response: 1, dampingFraction: 0.4, blendDuration: 0.3)) {
                tagline.append(taglineText[taglineIndex])
            }
            taglineIndex += 1
        } else if (taglineIndex == taglineText.count) {
            launchScreenManager.advanceState()
        }
    }
    
    private func checkCanDismiss() {
        if (launchScreenManager.canDismiss)
        {
            launchScreenManager.dismiss()
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
            .environmentObject(LaunchScreenStateManager())
    }
}
