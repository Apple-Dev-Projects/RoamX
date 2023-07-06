//
//  DemoView.swift
//  RoamX
//
//  Created by Conner Graham on 7/4/23.
//

import SwiftUI

struct DemoView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.main.secondaryBackground
                DemoLogoView()
            }
            DemoListView()
        }
    }
}

struct DemoLogoView: View {
    var body: some View {
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

struct DemoListView: View {
    var body: some View {
        List {
            NavigationLink(destination: DemoDetailView(logoImageName: "logo.grayscale")) {
                Label("logo.grayscale", systemImage: "paintbrush.pointed")
            }
            NavigationLink(destination: DemoDetailView(logoImageName: "logo.monochrome")) {
                Label("logo.monochrome", systemImage: "paintbrush.pointed.fill")
            }
            NavigationLink(destination: DemoDetailView(logoImageName: "logo.fill.grayscale")) {
                Label("logo.fill.grayscale", systemImage: "paintbrush")
            }
            NavigationLink(destination: DemoDetailView(logoImageName: "logo.fill.monochrome")) {
                Label("logo.fill.monochrome", systemImage: "paintbrush.fill")
            }
            NavigationLink(destination: DemoDetailView(logoImageName: "logo.fill.multicolor")) {
                Label("logo.fill.multicolor", systemImage: "paintpalette.fill")
            }
        }
        .symbolRenderingMode(.multicolor)
    }
}

struct DemoDetailView: View {
    var logoImageName: String
    
    var body: some View {
        VStack {
            Image(logoImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
            List {
                Section("Style") {
                    Text("Default Text")
                    Text("Large Title Text").font(.largeTitle)
                    Text("Title Text").font(.title)
                    Text("2nd Level Hierarchical Headings").font(.title2)
                    Text("3rd Level Hierarchical Headings").font(.title3)
                    Text("Body Text").font(.body)
                    Text("Caption Text").font(.caption)
                    Text("Alternate Caption Text").font(.caption2)
                }
                Section("Style Extended") {
                    Text("Headline Text").font(.headline)
                    Text("Subheadline Text").font(.subheadline)
                    Text("Callout Text").font(.callout)
                    Text("Footnote Text").font(.footnote)
                }
                Section("Design") {
                    Text("Sample Text 123 (Default)").fontDesign(.default)
                    Text("Sample Text 123 (Rouded)").fontDesign(.rounded)
                    Text("Sample Text 123 (Serif)").fontDesign(.serif)
                    Text("Sample Text 123 (Monospaced)").fontDesign(.monospaced)
                }
                Section("Weight") {
                    Text("Sample Text 123 (Default)")
                    Text("Sample Text 123 (Black)").fontWeight(.black)
                    Text("Sample Text 123 (Heavy)").fontWeight(.heavy)
                    Text("Sample Text 123 (Bold)").fontWeight(.bold)
                    Text("Sample Text 123 (Semi Bold)").fontWeight(.semibold)
                    Text("Sample Text 123 (Medium)").fontWeight(.medium)
                    Text("Sample Text 123 (Regular)").fontWeight(.regular)
                    Text("Sample Text 123 (Light)").fontWeight(.light)
                    Text("Sample Text 123 (Thin)").fontWeight(.thin)
                    Text("Sample Text 123 (Ultra Light)").fontWeight(.ultraLight)
                }
                Section("Width") {
                    Text("Sample Text 123 (Default)")
                    Text("Sample Text 123 (Compressed)").fontWidth(.compressed)
                    Text("Sample Text 123 (Condensed)").fontWidth(.condensed)
                    Text("Sample Text 123 (Standard)").fontWidth(.standard)
                    Text("Sample Text 123 (Expanded)").fontWidth(.expanded)
                }
                Section("Misc Styles") {
                    Text("Sample Text 123 (Default)")
                    Text("Sample Text 123 (Bold)").bold()
                    Text("Sample Text 123 (Italic)").italic()
                    Text("Sample Text 123 (Monospaced)").monospaced()
                    Text("Sample Text 123 (Monospaced digit)").monospacedDigit()
                    Text("Sample Text 123 (Small caps)").font(.body.smallCaps())
                    Text("Sample Text 123 (Lower small caps)").font(.body.lowercaseSmallCaps())
                    Text("Sample Text 123 (Upper small caps)").font(.body.uppercaseSmallCaps())
                }
                Section("Leading") {
                    Text("Sample Text 123 (Default)\nSample Text 123\nSample Text 123")
                    Text("Sample Text 123 (Standard)\nSample Text 123\nSample Text 123").font(.body.leading(.standard))
                    Text("Sample Text 123 (Loose)\nSample Text 123\nSample Text 123").font(.body.leading(.loose))
                    Text("Sample Text 123 (Tight)\nSample Text 123\nSample Text 123").font(.body.leading(.tight))
                }
            }
        }
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
