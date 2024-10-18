//
//  SevenSummitMountainCentralJavaApp.swift
//  SevenSummitMountainCentralJava
//
//  Created by Ricky Primayuda Putra on 18/10/24.
//

import SwiftUI

@main
struct SevenSummitMountainCentralJavaApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
