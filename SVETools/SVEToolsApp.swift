//
//  SVEToolsApp.swift
//  SVETools
//
//  Created by 张文涛 on 2024/9/27.
//

import SwiftUI
import SwiftData

@main
struct SVEToolsApp: App {
    /*
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
     */
    var body: some Scene {
        WindowGroup {
#if os(iOS)
            EntranceIOSView()
#else
            EntranceMACView()
#endif
        }
    }
}
