//
//  ContentView.swift
//  ViperTap
//
//  Created by Keyhou on 02/02/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentPresenter: ContentPresenter
    @State var enteredClash = false
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    Button("Tap Me 👾 > iOS 16") {
                        contentPresenter.showInteractorResponse(enteredClash: $enteredClash)
                    }
                    Text(contentPresenter.greeting)
                }
                .navigationDestination(isPresented: $enteredClash) {
                    ClashView()
                }
            }
            
        } else {
            NavigationView {
                VStack {
                    NavigationLink(destination: ClashView(), isActive: $enteredClash) {
                        Button("Tap Me 👾 < iOS 16") {
                            contentPresenter.showInteractorResponse(enteredClash: $enteredClash)
                        }
                        Text(contentPresenter.greeting)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentPresenter: ContentPresenter(interactor: ContentInteractor(), router: ContentRouter()))
    }
}
