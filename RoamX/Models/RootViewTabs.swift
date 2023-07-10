//
//  RootViewTabs.swift
//  RoamX
//
//  Created by Conner Graham on 7/10/23.
//

import SwiftUI

enum RootViewTabs: String, Hashable {
    case home
    case roam
    case trips
    case notifications
    case profile
    
    var name: String {
        rawValue.capitalized
    }
    
    var tabIcon: Image {
        switch self {
        case .home:
            return Image(systemName: "house")
        case .trips:
            return Image(systemName: "book")
        case .roam:
            return Image(systemName: "globe")
        case .notifications:
            return Image(systemName: "bell")
        case .profile:
            return Image(systemName: "person")
        }
    }
}
