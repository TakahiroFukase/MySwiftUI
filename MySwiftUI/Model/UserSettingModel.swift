//
//  UserSettingModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/29.
//

import Foundation

protocol UserSettingModelProtocol {
    func getShouldShowAlertWhenNeeded() -> Bool
    func setShouldShowAlertWhenNeeded(_ shouldShowAlertWhenNeeded: Bool)
}

/// ユーザー設定に関するモデル
class UserSettingModel: UserSettingModelProtocol {
        
    func getShouldShowAlertWhenNeeded() -> Bool {
        return UserDefaultsClient.shouldShowAlertWhenNeeded
    }
    
    func setShouldShowAlertWhenNeeded(_ shouldShowAlertWhenNeeded: Bool) {
        UserDefaultsClient.shouldShowAlertWhenNeeded = shouldShowAlertWhenNeeded
    }
}
