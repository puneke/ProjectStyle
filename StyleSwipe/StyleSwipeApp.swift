//
//  StyleSwipeApp.swift
//  StyleSwipe
//
//  Created by Aaron Ho on 17/01/24.
//

import SwiftUI

@main
struct StyleSwipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
