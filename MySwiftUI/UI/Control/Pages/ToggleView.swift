//
//  ToggleView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct ToggleView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var isToggleOn = false
    
    var body: some View {
        
        Toggle(isOn: $isToggleOn, label: {
            Text("画像を表示")
        })
        .padding(20)
        
        Image(uiImage: isToggleOn ? UIImage(named: "sample")! : UIImage())
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.width / 1096 * 1644)
        
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

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
