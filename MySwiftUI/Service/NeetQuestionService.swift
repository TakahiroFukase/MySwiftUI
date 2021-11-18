//
//  NeetQuestionService.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/17.
//

import Foundation

/// ニート診断の質問一覧を取得するサービスクラス
class NeetQuestionService {
    
    let url = URL(string: "https://takahirofukase.com/sample/questions.json")
    
    func getAllQuestions(res: @escaping ([NeetQuestion])->()) {
        
        guard let url = url else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            
            guard let neetQuestions = try? JSONDecoder().decode([NeetQuestion].self, from: data) else {
                return
            }
            
            DispatchQueue.main.async {
                // 取得したテキストを呼び出し元に渡す
                res(neetQuestions)
            }
            
        }.resume()
    }
}
