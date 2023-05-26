//
//  ControlRouter.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/21.
//

import Foundation

indirect enum ControlScreen {
    case select
    case toggle
    case slider
    case stepper
    case picker
    case list
    case scroll
    case alert(ControlScreen)
}

final class ControlRouter: ObservableObject {
    
    private init() {}
    
    static let shared = ControlRouter()
    
    @Published var screenState: ControlScreen = .select
}
