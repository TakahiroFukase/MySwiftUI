//
//  TextFileViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/26.
//

import Foundation

class TextFileViewModel: ObservableObject {
    
    @Published var text = ""
    
    let textFileService = TextFileService()
    
    init() {
        load()
    }
    
    private func load() {
        text = textFileService.getText()
    }
    
    func save() {
        textFileService.save(text: text)
    }
}
