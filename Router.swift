//
//  Router.swift
//  ViperTap
//
//  Created by Keyhou on 02/02/2023.
//

import Foundation
import SwiftUI

class ContentRouter {
    func showEnteredClash(enteredClash: Binding<Bool>) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            enteredClash.wrappedValue.toggle()
        }
    }
}
