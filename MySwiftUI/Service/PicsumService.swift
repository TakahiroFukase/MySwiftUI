//
//  PicsumService.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/28.
//

import UIKit

/// Picsumから画像を取得するサービスクラス
class PicsumService {
    
    func getImage(id: Int, res: @escaping (UIImage)->()) {
        
        guard let url = URL(string: "https://picsum.photos/id/\(id)/200/200.jpg") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else {
                // 取得したデータがnilであればリターン
                return
            }
            
            guard let result = UIImage(data: data) else {
                // 取得したデータから画像に変換できなければリターン
                return
            }
            
            DispatchQueue.main.async {
                res(result)
            }
        
        }.resume()
    }
}
