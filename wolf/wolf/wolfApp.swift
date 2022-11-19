//
//  wolfApp.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import SwiftUI

@main
struct wolfApp: App {
    var body: some Scene {
        WindowGroup {
            MatchConfig(viewModel: .init())
        }
    }
}
