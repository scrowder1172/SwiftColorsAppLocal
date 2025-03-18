//
// File: ContentView.swift
// Project: SwiftColorsAppLocal
// 
// Created by SCOTT CROWDER on 3/18/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct ContentView: View {
    @State private var viewSelection: ColorView = .standardSwiftUI
    var body: some View {
        NavigationStack{
            Form {
                Picker("Select View Type", selection: $viewSelection) {
                    ForEach(ColorView.allCases) { selection in
                        Text(selection.selectionType)
                            .tag(selection)
                    }
                }
            }
            .frame(height: 50)
                viewSelection
            .padding()
            .navigationTitle("SwiftUI Colors")
        }
    }
}

#Preview {
    ContentView()
}

enum ColorView: Identifiable, CaseIterable, View {
    case standardSwiftUI
    case semanticSwiftUI
    case standardUIKit
    case elementUIKit
    case componentValues
    case colorAssets
    case colorLiteral
    case colorModifiers
    
    var selectionType: String {
        switch self {
            case .standardSwiftUI:
                "Standard SwiftUI"
            case .semanticSwiftUI:
                "Semantic SwiftUI"
            case .standardUIKit:
                "Standard UIColor"
            case .elementUIKit:
                "Element UIColor"
            case .componentValues:
                "Component Values"
            case .colorAssets:
                "Color Assets"
            case .colorLiteral:
                "ColorLiteral"
            case .colorModifiers:
                "ColorModifier"
        }
    }
    
    nonisolated var id: String {
        return String(describing: self)
    }
    
    var body: some View {
        switch self {
            case .standardSwiftUI:
                SwiftUIStandardColors()
            case .semanticSwiftUI:
                SwiftUSematicColors()
            case .standardUIKit:
                UIKitStandardColors()
            case .elementUIKit:
                UIElementColors()
            case .componentValues:
                ComponentValues()
            case .colorAssets:
                ColorAssets()
            case .colorLiteral:
                ColorLiteral()
            case .colorModifiers:
                ColorModifiers()
        }
    }
}
