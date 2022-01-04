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
    
    @Published var registeredBirthday = String()
    @Published var date = Date()
    @Published var canRegisterBirthday = true
    
    // UserDefaults関連（本来は専用のクライアントを作るべきだけど、一旦はこれで）
    let userDefaults = UserDefaults.standard
    let userDefaultsKeyGender = "gender"
    let userDefaultsKeyBirthday = "birthday"
    
    init() {
        getRegisteredGender()
        getRegisteredBirthday()
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
        
        // 性別の登録表示を切り替える
        registeredGender = currentSelectedGender
    }
    
    private func getRegisteredBirthday() {
        
        if let birthday = userDefaults.string(forKey: userDefaultsKeyBirthday) {
            // 保存されていた生年月日を表示
            registeredBirthday = birthday
            
            // 生年月日が保存されていたら、もう登録（編集）はできない
            canRegisterBirthday = false
        } else {
            // 生年月日が保存されていなければ「未登録」の表示
            registeredBirthday = "未登録"
            
            // 生年月日が保存されていなければ、登録できる
            canRegisterBirthday = true
        }
    }
    
    func registerBirthday() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .none
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "ja_JP")

        // 日付ピッカーの選択されている値から、日付の文字列を生成
        let dateToSave = dateFormatter.string(from: date)
        
        // 生年月日を保存する
        userDefaults.set(dateToSave, forKey: userDefaultsKeyBirthday)
        
        // 生年月日の登録表示を切り替える
        registeredBirthday = dateToSave
        
        // 一度生年月日を保存したら、もう登録（編集）はできない
        canRegisterBirthday = false
    }
}
