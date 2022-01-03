//
//  SliderView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct SliderView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Hello, Slider!")
        
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

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
