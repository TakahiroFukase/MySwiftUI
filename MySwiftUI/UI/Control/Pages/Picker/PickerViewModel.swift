//
//  PickerViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/04.
//

import Foundation

class PickerViewModel: ObservableObject {
    
    @Published var registeredGender = String()
    @Published var genders: [String] = ["女性", "男性", "その他"]
    @Published var selectedIndex = 0
        
    let userDefaults = UserDefaults.standard
    let userDefaultsKeyGender = "gender"
    
    init() {
        getRegisteredGender()
    }
    
    private func getRegisteredGender() {
        if let gender = userDefaults.string(forKey: userDefaultsKeyGender) {
            // 保存されていた性別を表示
            registeredGender = gender
            
            // ピッカーのデフォルト位置を保存されていた性別に合わせる
            switch gender {
            case "女性":
                selectedIndex = 0
            case "男性":
                selectedIndex = 1
            case "その他":
                selectedIndex = 2
            default:
                selectedIndex = 0 // 基本的にここには来ない想定
            }
        } else {
            // 性別が保存されていなければ「未登録」の表示
            registeredGender = "未登録"
        }
    }
    
    func registerGender() {
        
        let currentSelectedGender = genders[selectedIndex]
        
        // 性別を保存する
        userDefaults.setValue(currentSelectedGender, forKey: userDefaultsKeyGender)
        
        // 現在の登録表示を切り替える
        registeredGender = currentSelectedGender
    }
}
