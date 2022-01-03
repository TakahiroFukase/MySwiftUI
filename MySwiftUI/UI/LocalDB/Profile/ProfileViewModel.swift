//
//  ProfileViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/26.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var registeredName = "" // プロフィール画面に表示する登録中の名前
    @Published var editingName = ""    // 登録画面におけるTextFieldの文字列
    
    let textFileService = TextFileService()
    
    init() {
        setRegisteredName(name: textFileService.getText())
    }
    
    func setEditingName() {
        editingName = textFileService.getText()
    }
    
    func save() {
        textFileService.save(text: editingName)
        setRegisteredName(name: editingName)
    }
    
    private func setRegisteredName(name: String) {
        if name.isEmpty {
            registeredName = "未登録"
        } else {
            registeredName = name
        }
    }
}
