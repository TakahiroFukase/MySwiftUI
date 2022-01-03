//
//  NeetQuestionView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import SwiftUI

struct NeetQuestionView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
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
            
            Spacer(minLength: 20).fixedSize()
            
            Button(action: {
                // この画面を閉じる
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("閉じる")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(25)
            })
            
            Spacer(minLength: 50).fixedSize()
        }
    }
}

struct NeetQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NeetQuestionView()
    }
}
