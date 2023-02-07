//
//  Interactor.swift
//  ViperTap
//
//  Created by Keyhou on 02/02/2023.
//

import Foundation
import SwiftUI

class ContentInteractor {
    func showResponse() -> String {
        return "Hello, Invader! 🧑‍🚀"
    }
}

//struct ContentView2: View {
//    
//    @ObservedObject var contentPresenter: ContentPresenter
//    @State private var enteredClash: Bool = false
//    
//    var body: some View {
//        if #available(iOS 16.0, *) {
//            NavigationStack {
//                VStack {
//                    Text("Version => iOS 16")
//                    Text(contentPresenter.greeting)
//                    Button("Tap me !") {
//                        contentPresenter.displayInteractorWelcome(enteredClash: $enteredClash)
//                    }
//                }
//                .navigationDestination(enteredClash: $enteredClash) {
//                    ClashView()
//                }
//            }
//        } else {
//            NavigationView {
//                VStack {
//                    Text("Version < iOS 16")
//                    NavigationLink(destination: ClashView(), isActive: $enteredClash) {
//                        Button(text: "Tap me !") {
//                            contentPresenter.displayInteractorWelcome(enteredClash: $enteredClash)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
