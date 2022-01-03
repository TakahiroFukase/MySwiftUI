//
//  LoremView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/17.
//

import SwiftUI

struct LoremView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var loremViewModel = LoremViewModel()
    
    var body: some View {
        
        VStack {
            Text("LoremView")
                .font(.title)
            
            Divider()
            
            Text(loremViewModel.data)
                .font(.body)
                .padding(10)
            
            Divider()
                        
            Spacer()
            
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

struct LoremView_Previews: PreviewProvider {
    static var previews: some View {
        LoremView()
    }
}
