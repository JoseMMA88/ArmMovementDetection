//
//  ArmMovementDetectionApp.swift
//  ArmMovementDetection
//
//  Created by Jose Manuel Malagón Alba on 6/2/25.
//

import SwiftUI
import SwiftData

@main
struct ArmMovementDetectionApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
