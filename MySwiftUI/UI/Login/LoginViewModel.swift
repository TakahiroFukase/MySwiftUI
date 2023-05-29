//
//  LoginViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/26.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var shouldShowAleartWhenNeeded: Bool
    
    private let userSettingModel: UserSettingModelProtocol
        
    init(userSettingModel: UserSettingModelProtocol = UserSettingModel()) {
        self.userSettingModel = userSettingModel
        shouldShowAleartWhenNeeded = userSettingModel.getShouldShowAlertWhenNeeded()
    }

    
    func didChangeToggle() {
        userSettingModel.setShouldShowAlertWhenNeeded(shouldShowAleartWhenNeeded)
    }
}
