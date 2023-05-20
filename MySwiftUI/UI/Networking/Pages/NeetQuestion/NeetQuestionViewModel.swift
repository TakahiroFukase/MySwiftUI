//
//  NeetQuestionViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import Foundation

class NeetQuestionViewModel: ObservableObject {
    
    @Published var questions: [NeetQuestion] = []
    
    private let neetQuestionService: NeetQuestionServiceProtocol = NeetQuestionService()
    
    init() {
        getAllQuestions()
    }
    
    private func getAllQuestions() {
        neetQuestionService.getAllQuestions { questions in
            self.questions = questions
        }
    }
}
