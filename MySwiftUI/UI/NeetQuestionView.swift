//
//  NeetQuestionView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import SwiftUI

struct NeetQuestionView: View {
    
    @ObservedObject var neetQuestionViewModel = NeetQuestionViewModel()
    
    var body: some View {
        
        VStack {
            Text("NeetQuestionView")
                .font(.title)
            
            Divider()
            
            List(neetQuestionViewModel.questions) { question in
                Text(question.text)
                    .font(.body)
            }
        }
    }
}

struct NeetQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NeetQuestionView()
    }
}
