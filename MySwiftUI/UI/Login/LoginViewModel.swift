//
//  LoginViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/26.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var shouldShowAleartWhenNeeded: Bool
        
    init() {
        shouldShowAleartWhenNeeded = UserDefaultsClient.shouldShowAlertWhenNeeded
    }

    
    func didChangeToggle() {
        UserDefaultsClient.shouldShowAlertWhenNeeded = shouldShowAleartWhenNeeded
    }
}
