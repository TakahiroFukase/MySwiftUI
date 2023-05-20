//
//  NeetQuestionService.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/17.
//

import Foundation

protocol NeetQuestionServiceProtocol {
    func getAllQuestions(res: @escaping ([NeetQuestion])->())
}

/// ニート診断の質問一覧を取得するサービスクラス
class NeetQuestionService: NeetQuestionServiceProtocol {
    
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

/// ニート診断の質問一覧を取得するサービスクラス（モック）
class NeetQuestionServiceMock: NeetQuestionServiceProtocol {
    
    func getAllQuestions(res: @escaping ([NeetQuestion])->()) {
        
        let neetQuestions = [
            NeetQuestion(id: 0, text: "文化祭などのイベント事には\n積極的だ", yesIsNeet: false, extraNeetPoint: 0),
            NeetQuestion(id: 1, text: "満員電車が苦痛に感じる", yesIsNeet: true, extraNeetPoint: 0),
            NeetQuestion(id: 2, text: "朝の目覚めは良い方だ", yesIsNeet: false, extraNeetPoint: 0),
            NeetQuestion(id: 3, text: "SNSで自分の投稿をアップする\n習慣がある", yesIsNeet: true, extraNeetPoint: 1),
            NeetQuestion(id: 4, text: "1人時間を楽しむのが得意だ", yesIsNeet: true, extraNeetPoint: 2),
            NeetQuestion(id: 5, text: "ITスキルは人並み以上だと思う", yesIsNeet: true, extraNeetPoint: 3),
            NeetQuestion(id: 6, text: "お金のかかる趣味が多い", yesIsNeet: false, extraNeetPoint: 1),
            NeetQuestion(id: 7, text: "社会的な地位・肩書きは大事だと思う", yesIsNeet: false, extraNeetPoint: 0),
            NeetQuestion(id: 8, text: "自分の机は綺麗に保つタイプだ", yesIsNeet: false, extraNeetPoint: 0),
            NeetQuestion(id: 9, text: "休日に散歩をすることがある", yesIsNeet: true, extraNeetPoint: 0),
            NeetQuestion(id: 10, text: "体調を崩しやすい", yesIsNeet: false, extraNeetPoint: 2),
            NeetQuestion(id: 11, text: "レシピを見ないでチャーハンが作れる", yesIsNeet: true, extraNeetPoint: 0),
            NeetQuestion(id: 12, text: "共通の趣味を持つ友達を作るのが\n得意だ", yesIsNeet: true, extraNeetPoint: 3),
            NeetQuestion(id: 13, text: "必要になったら明日までに100万円\n借りるアテがある", yesIsNeet: true, extraNeetPoint: 0),
            NeetQuestion(id: 14, text: "異性の友達が多い", yesIsNeet: true, extraNeetPoint: 0),
            NeetQuestion(id: 15, text: "ものは所有しなくてもシェアで\n満足できる", yesIsNeet: true, extraNeetPoint: 0)
        ]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            res(neetQuestions)
        }
    }
}
