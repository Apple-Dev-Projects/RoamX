//
//  Color+RoamX.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI

/// An extension that adds custom color themes for the RoamX application.
extension Color {
    static let launch = LaunchTheme()
    static let main = MainTheme()
}

/// The color theme to use for the RoamX application launch screen.
struct LaunchTheme {
    /// A color that reflects the accent color of the RoamX application during launch.
    let accent = Color("LaunchAccentColor")
    /// The color for the main background of the RoamX launch screen.
    let background = Color("LaunchBackgroundColor")
}

/// The color theme to use for thr RoamX application main interface.
struct MainTheme {
    /// A color that reflects the accent color of the RoamX interface.
    let accent = Color("MainAccentColor")
    /// The color for the main background of the RoamX interface.
    let background = Color("MainBackgroundColor")
    /// The color for content layered on top of the RoamX main background.
    let secondaryBackground = Color("MainSecondaryBackgroundColor")
}
