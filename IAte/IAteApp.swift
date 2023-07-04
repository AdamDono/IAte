//
//  IAteApp.swift
//  IAte
//
//  Created by DA M1 MAC 89 on 2023/07/03.
//

import SwiftUI

@main
struct IAteApp: App {
    
    @StateObject private var dataController = DataColtroller ()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
