//
//  ProfileView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/26.
//

import SwiftUI

struct ProfileView: View {
    
    @State var registerMessage = ""
    @State var isPopoverPresented = false
    @State var isAlertPresented = false
    
    @ObservedObject var viewModel = ProfileViewModel()
    
    var body: some View {
        
        VStack {
                        
            Text("プロフィール")
                .font(.title)
            
            Divider()
            
            HStack {
                Text("お名前: ")
                
                Text(viewModel.registeredName)
            }
            
            Spacer()
            
            Button(action: {
                
                // 登録画面を表示した時のメッセージをセット
                registerMessage = "Register Your Name!"
                
                // 登録画面に遷移する際、登録済みの名前をセットする
                viewModel.setEditingName()
                
                isPopoverPresented = true
            }) {
                Text("登録 / 編集")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            
            Spacer(minLength: 50).fixedSize()
        }
        .fullScreenCover(isPresented: $isPopoverPresented) {
            
            // 登録画面
            VStack {
                
                Spacer(minLength: 20).fixedSize()
                
                Text(registerMessage)
                    .font(.title)
                
                HStack {
                    Spacer(minLength: 10).fixedSize()
                    
                    Text("お名前")
                        .bold()
                    
                    Spacer()
                }
                
                VStack {
                    Divider()
                    
                    TextField("", text: $viewModel.editingName)
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
                        registerMessage = "Saved!"
                      }),
                      secondaryButton: .default(Text("キャンセル"))
                )
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
