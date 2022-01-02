//
//  NetworkingBaseView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/02.
//

import SwiftUI

struct NetworkingBaseView: View {
    
    @State var isLoremPresented = false
    @State var isNeetQuestionPresented = false
    @State var isPicsumPresented = false
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Button(action: {
                isLoremPresented = true
            }, label: {
                Text("Loremページへ")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(25)
            })
            .fullScreenCover(isPresented: $isLoremPresented) {
                LoremView()
            }
            
            Spacer(minLength: 50).fixedSize()
            
            Button(action: {
                isNeetQuestionPresented = true
            }, label: {
                Text("ニート診断一覧へ")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(25)
            })
            .fullScreenCover(isPresented: $isNeetQuestionPresented) {
                NeetQuestionView()
            }
            
            Spacer(minLength: 50).fixedSize()
            
            Button(action: {
                isPicsumPresented = true
            }, label: {
                Text("Picsumページへ")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            .fullScreenCover(isPresented: $isPicsumPresented) {
                PicsumView()
            }
            
            Spacer(minLength: 50).fixedSize()
        
        }
    }
}

struct NetworkingBaseView_Previews: PreviewProvider {
    static var previews: some View {
        NetworkingBaseView()
    }
}
