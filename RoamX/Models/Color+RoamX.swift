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
    // TODO
}

/// The color theme to use for thr RoamX application main interface.
struct MainTheme {
    /// The color for the main background of the RoamX interface.
    let background = Color("MainBackground")
    /// The color for content layered on top of the RoamX main background.
    let secondaryBackground = Color("MainSecondaryBackground")
}
