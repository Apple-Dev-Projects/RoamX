//
//  RootView.swift
//  RoamX
//
//  Created by Conner Graham on 7/9/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var launchScreenManager: LaunchScreenStateManager
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .task {
            try? await getDataFromApi()
            launchScreenManager.setReadyToDismis()
        }
    }
    
    fileprivate func getDataFromApi() async throws {
        // FIXME: Currently implemented to mimic an API call
        try? await Task.sleep(for: Duration.seconds(7))
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(LaunchScreenStateManager())
    }
}
