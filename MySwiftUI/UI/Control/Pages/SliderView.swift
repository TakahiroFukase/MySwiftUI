//
//  SliderView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct SliderView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var sliderValue = 0.0
    
    var body: some View {
        
        Spacer(minLength: 50).fixedSize()
        
        ZStack {
            
            Image(uiImage: UIImage(named: "sample")!)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.width / 1096 * 1644)
            
            Text("")
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.width / 1096 * 1644)
                .background(Color(red: 0, green: 0, blue: 0, opacity: 1 - (sliderValue / 100)))
        }
        
        Slider(value: $sliderValue, in: 0...100, step: 10)
            .padding(20)
        
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
