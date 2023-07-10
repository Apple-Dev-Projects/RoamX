//
//  RootView.swift
//  RoamX
//
//  Created by Conner Graham on 7/9/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var launchScreenManager: LaunchScreenStateManager
    
    @State private var currentTab: RootViewTabs = .home
    
    var body: some View {
        TabView(selection: $currentTab) {
            Text("\(RootViewTabs.home.name) Tab")
                .tabItem {
                    Text(RootViewTabs.home.name)
                    RootViewTabs.home.tabIcon
                }
                .tag(RootViewTabs.home)
            Text("\(RootViewTabs.trips.name) Tab")
                .tabItem {
                    Text(RootViewTabs.trips.name)
                    RootViewTabs.trips.tabIcon
                }
                .tag(RootViewTabs.trips)
            Text("\(RootViewTabs.roam.name) Tab")
                .tabItem {
                    Text(RootViewTabs.roam.name)
                    RootViewTabs.roam.tabIcon
                }
                .tag(RootViewTabs.roam)
            Text("\(RootViewTabs.notifications.name) Tab")
                .tabItem {
                    Text(RootViewTabs.notifications.name)
                    RootViewTabs.notifications.tabIcon
                }
                .tag(RootViewTabs.notifications)
            Text("\(RootViewTabs.profile.name) Tab")
                .tabItem {
                    Text(RootViewTabs.profile.name)
                    RootViewTabs.profile.tabIcon
                }
                .tag(RootViewTabs.profile)
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
