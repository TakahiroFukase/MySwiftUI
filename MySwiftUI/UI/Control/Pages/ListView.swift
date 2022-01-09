//
//  ListView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/09.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
