//
//  TextFileView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/26.
//

import SwiftUI

struct TextFileView: View {
    
    @State var message = "Enter and Save!"
    @State var isPopoverPresented = false
    @State var isAlertPresented = false
    
    @ObservedObject var viewModel = TextFileViewModel()
    
    var body: some View {
        
        VStack {
            
            Spacer(minLength: 20).fixedSize()
            
            Text("First Page")
                .font(.title)
            
            Divider()
            
            Spacer()
            
            Button(action: {
                viewModel.load()
                isPopoverPresented = true
            }) {
                Text("登録画面へ")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            
            Spacer(minLength: 50).fixedSize()
        }
        .fullScreenCover(isPresented: $isPopoverPresented) {
            VStack {
                
                Spacer(minLength: 20).fixedSize()
                
                Text(message)
                    .font(.title)
                
                HStack {
                    Spacer(minLength: 10).fixedSize()
                    
                    Text("お名前")
                        .bold()
                    
                    Spacer()
                }
                
                VStack {
                    Divider()
                    
                    TextField("", text: $viewModel.text)
                        .font(.body)
                        .padding(10)
                    
                    Divider()
                }
                
                Spacer()
                
                Button(action: {
                    isAlertPresented = true
                }){
                    Text("保存")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(25)
                }
                
                Spacer(minLength: 20).fixedSize()
                
                Button(action: {
                    isPopoverPresented = false
                }){
                    Text("閉じる")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(25)
                }
                
                Spacer(minLength: 50).fixedSize()
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(title: Text("保存しますか？"),
                      primaryButton: .default(Text("保存"), action: {
                        viewModel.save()
                        message = "Saved!"
                      }),
                      secondaryButton: .default(Text("キャンセル"))
                )
            }
        }
    }
}

struct TextFileView_Previews: PreviewProvider {
    static var previews: some View {
        TextFileView()
    }
}
