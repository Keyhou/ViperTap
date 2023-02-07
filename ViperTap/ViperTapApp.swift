//
//  ViperTapApp.swift
//  ViperTap
//
//  Created by Keyhou on 02/02/2023.
//

import SwiftUI

@main
struct ViperTapApp: App {
    @StateObject var presenter = ContentPresenter(interactor: ContentInteractor(), router: ContentRouter())
    var body: some Scene {
        WindowGroup {
            ContentView(contentPresenter: presenter)
        }
    }
}
