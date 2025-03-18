//
//----------------------------------------------
// Original project: Swift Colors
// by  Stewart Lynch on 2025-01-07
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct ColorModifiers: View {
    var body: some View {
        ScrollView {
            SplitColorScheme {
                Color.purple.opacity(0.5)
                Color.purple.brightness(0.5)
                Color.purple.grayscale(0.5)
                Color.red.mix(with: .green, by: 0.5)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ColorModifiers()
            .navigationTitle("Color Modifiers")
    }
}
