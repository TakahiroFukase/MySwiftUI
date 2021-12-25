//
//  TextFileService.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/06.
//

import Foundation

// アプリ内に用意するsample.txtファイルにテキストを保存したり、取得したりするためのサービスクラス
class TextFileService {

    let textFileName = "sample.txt"
    
    // アプリ内に用意するsample.txtファイルのパス
    var pathToTextFile: URL? = nil
    
    init() {
        
        let urls: [URL] = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        if let url = urls.first {
            pathToTextFile = url.appendingPathComponent(textFileName)
        }
    }
    
    func getText() -> String {
        
        guard let pathToTextFile = pathToTextFile else {
            // そもそもパスを作るのに失敗している場合
            return "Failed to create path."
        }
        
        guard let text = try? String(contentsOf: pathToTextFile, encoding: .utf8) else {
            // パスのテキストファイルからUTF-8形式で文字列を取り出すのに失敗した場合（まだファイルに何も保存してなければここに来る）
            return "Failed to get data."
        }
        
        return text
    }
    
    func save(text: String) {
        
        guard let pathToTextFile = pathToTextFile else {
            // そもそもパスを作るのに失敗している場合
            return
        }
        
        do {
            // ファイルに対して、指定のテキストで上書きする
            try text.write(to: pathToTextFile, atomically: false, encoding: .utf8)
        } catch {
            print("Failed to save data.")
        }
    }
}
