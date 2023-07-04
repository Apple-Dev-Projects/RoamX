//
//  Color+RoamX.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI

/// An extension that adds custom color properties for the RoamX application.
extension UIColor {
    /// The color for the main background of the RoamX interface.
    static var appBackground: UIColor {
        UIColor(named: "AppBackground") ?? .systemBackground
    }
    
    /// The color for content layered on top of the RoamX main background.
    static var secondaryAppBackground: UIColor {
        UIColor(named: "AppSecondaryBackground") ?? .secondarySystemBackground
    }
}
