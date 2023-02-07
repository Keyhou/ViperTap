//
//  Presenter.swift
//  ViperTap
//
//  Created by Keyhou on 02/02/2023.
//

import Foundation
import SwiftUI

class ContentPresenter: ObservableObject {
    @Published var greeting: String = ""
    let interactor: ContentInteractor
    let router: ContentRouter
    init(interactor: ContentInteractor, router: ContentRouter) {
        self.interactor = interactor
        self.router = router
    }
    func showInteractorResponse(enteredClash: Binding<Bool>) {
        greeting = interactor.showResponse()
        router.showEnteredClash(enteredClash: enteredClash)
    }
}
