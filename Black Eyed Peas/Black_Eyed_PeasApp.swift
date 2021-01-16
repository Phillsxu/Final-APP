//
//  Black_Eyed_PeasApp.swift
//  Black Eyed Peas
//
//  Created by Fil on 2021/1/11.
//
import SwiftUI
@main

struct Black_Eyed_PeasApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
