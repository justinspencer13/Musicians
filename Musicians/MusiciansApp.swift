//
//  MusiciansApp.swift
//  Musicians
//
//  Created by Justin Spencer on 7/22/24.
//
import SwiftData
import SwiftUI

@main
struct MusiciansApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Musician.self)
    }
}
