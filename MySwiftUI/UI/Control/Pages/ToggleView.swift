//
//  ToggleView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct ToggleView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
        
    @State var isToggleOn = false
    
    var body: some View {
        
        VStack {
            
            Image(uiImage: isToggleOn ? UIImage(named: "sample")! : UIImage())
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width,
                       height: UIScreen.main.bounds.width)
            
            HStack {
                
                Spacer()
                
                Text(isToggleOn ? "スイッチON" : " ")
                    .foregroundColor(.red)
                    .bold()
                
                Spacer(minLength: 10).fixedSize()
            }
            
            Spacer()
            
            Toggle(isOn: $isToggleOn, label: {
                Text("画像を表示")
            })
            .padding(.horizontal, 20)
            
            Button(action: {
                // 選択画面に戻る
                controlRouter.screenState = .select
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

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
