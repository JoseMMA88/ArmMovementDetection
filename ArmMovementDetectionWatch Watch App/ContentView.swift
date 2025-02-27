//
//  ContentView.swift
//  ArmMovementDetectionWatch Watch App
//
//  Created by Jose Manuel Malagón Alba on 6/2/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Count: \(counter)")
            Divider()
            Button {
                counter += 1
            } label: {
                Text("+")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
