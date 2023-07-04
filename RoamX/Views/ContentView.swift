//
//  ContentView.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.secondaryAppBackground)
            VStack {
                Image("logo.fill.multicolor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                Text("RoamX")
                    .font(.system(.title, design: .rounded, weight: .bold))
                    .foregroundStyle(Color.accentColor)
                Text("Plan.Roam.Explore.")
                    .font(.title3)
                    .foregroundStyle(Color.accentColor)
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(15)
            .shadow(radius: 15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
