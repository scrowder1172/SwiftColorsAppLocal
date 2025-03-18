//
// File: SplitColorScheme.swift
// Project: SwiftColorsAppLocal
// 
// Created by SCOTT CROWDER on 3/18/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct SplitColorScheme<Content: View>: View {
    @ViewBuilder var content: Content
    var body: some View {
        HStack {
            sectionView
                .padding(.bottom)
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .light)
            sectionView
                .padding(.bottom)
                .background(Color(.systemBackground))
                .environment(\.colorScheme, .dark)
        }
    }
    
    var sectionView: some View {
        VStack {
            ForEach(sections: content) { section in
                section.header
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .frame(maxWidth: .infinity, alignment: .leading)
                section.content
                    .frame(height: 50)
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}
