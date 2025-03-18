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
                    Color.black
                    Color.blue
                    Color.brown
                    Color.clear
                    Color.cyan
                    Color.gray
                    Color.green
                    Color.indigo
                    Color.mint
                    Color.orange
                    Color.pink
                    Color.purple
                    Color.red
                    Color.teal
                    Color.white
                    Color.yellow
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
