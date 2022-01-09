//
//  LoginView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/08.
//

import SwiftUI

struct LoginView: View {
    
    @State var id = ""
    @State var password = ""
    @State var showPassword = false
    @State var isBaseTabViewPresented = false
    
    // ログインエラー系
    @State var loginErrorTitle = ""
    @State var isLoginErrorPresented = false
    
    var body: some View {
        
        VStack {
            
            Text("ログイン画面")
                .font(.title)
            
            Form {
                                
                Section(header: Text("ID / Password").font(.headline)) {
                    
                    TextField("ID", text: $id)
                    
                    if showPassword {
                        TextField("Password", text: $password)
                    } else {
                        SecureField("Password", text: $password)
                    }
                }
                
                Section(header: Text("")) {
                    Toggle(isOn: $showPassword, label: {
                        Text("Show Password")
                    })
                }
            }
            
            Button(action: {
                // ログインする
                login(id: id, password: password)
                
            }, label: {
                Text("ログイン")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(25)
            })
            .fullScreenCover(isPresented: $isBaseTabViewPresented, content: {
                BaseTabView()
            })
            .alert(isPresented: $isLoginErrorPresented) {
                Alert(title: Text(loginErrorTitle),
                      dismissButton: .default(Text("OK"))
                )
            }
            
            Spacer(minLength: 50).fixedSize()
        }
    }
    
    private func login(id: String, password: String) {
        
        guard !id.isEmpty, !password.isEmpty else {
            // IDかPasswordに未入力がある場合はアラートを表示
            loginErrorTitle = "IDとPasswordを入力してください。"
            isLoginErrorPresented = true
            return
        }
        
        if id == "a" && password == "b" {
            // ID, Passwordが正しければメイン画面に進む
            isBaseTabViewPresented = true
        } else {
            // ID, Passwordが正しくなければアラートを表示
            loginErrorTitle = "IDもしくはPasswordが違います。"
            isLoginErrorPresented = true
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
