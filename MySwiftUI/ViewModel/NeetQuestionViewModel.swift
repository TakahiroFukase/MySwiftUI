//
//  NeetQuestionViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import Foundation

class NeetQuestionViewModel: ObservableObject {
    
    @Published var questions: [NeetQuestion] = []
    
    init() {
        getAllQuestions()
    }
    
    private func getAllQuestions() {
        NeetQuestionService().getAllQuestions { questions in
            self.questions = questions
        }
    }
}
