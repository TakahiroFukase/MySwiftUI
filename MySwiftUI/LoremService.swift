//
//  LoremService.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/11.
//

import Foundation

/// loripsum netのAPIからダミーテキストを取得するサービスクラス
class LoremService {
    
    let urlText = "https://loripsum.net/api/plaintext"
    
    func getText(res: @escaping (String)->()) {
        
        guard let url = URL(string: urlText) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            
            guard let fetchedText = String(data: data, encoding: String.Encoding.utf8) else { return }
            
            DispatchQueue.main.async {
                // 取得したテキストを呼び出し元に渡す
                res(fetchedText)
            }
            
        }.resume()
    }
}
