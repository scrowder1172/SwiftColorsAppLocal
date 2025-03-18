//
// File: SwiftUIStandardColors.swift
// Project: SwiftColorsAppLocal
// 
// Created by SCOTT CROWDER on 3/18/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct SwiftUIStandardColors: View {
    var body: some View {
        ScrollView {
            SplitColorScheme {
                Section("Standard Colors") {
                    
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    NavigationStack{
        SwiftUIStandardColors()
            .navigationTitle("SwiftUI Standard Colors")
    }
}
