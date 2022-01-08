//
//  FormView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/08.
//

import SwiftUI

struct FormView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var id = ""
    @State var password = ""
    @State var showPassword = false
    
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
            
            Spacer()
            
            Button(action: {
                // この画面を閉じる
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("閉じる")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(25)
            })
            
            Spacer(minLength: 50).fixedSize()
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
