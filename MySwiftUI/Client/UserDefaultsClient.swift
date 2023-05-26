//
//  UserDefaultsClient.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/26.
//

import Foundation

class UserDefaultsClient {
    
    private static let ud = UserDefaults.standard
    
    private enum Key: String {
        case shouldShowAlertWhenNeeded
    }

    static var shouldShowAlertWhenNeeded: Bool {
        get {
            return ud.bool(forKey: Key.shouldShowAlertWhenNeeded.rawValue)
        }
        set {
            ud.set(newValue, forKey: Key.shouldShowAlertWhenNeeded.rawValue)
        }
    }

    /// UserDefaultsで管理する各Keyに対するデフォルト値を設定する
    static func register() {
        ud.register(defaults: [Key.shouldShowAlertWhenNeeded.rawValue: false])
    }
}
