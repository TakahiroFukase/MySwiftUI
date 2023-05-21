//
//  StepperView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct StepperView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
        
    @State var items: [String] = []
    
    var body: some View {
        
        VStack {
            
            Spacer(minLength: 50).fixedSize()
            
            Stepper("商品数を選択（最大5つまで）", onIncrement: {
                if items.count < 5 {
                    items.append("商品")
                }
            }, onDecrement: {
                if 0 < items.count {
                    items.removeLast()
                }
            })
            .padding(.horizontal, 20)
            
            Divider()
            
            Spacer(minLength: 20).fixedSize()
            
            ForEach(items, id: \.self) { item in
                VStack {
                    Text(item)
                        .padding(10)
                    
                    Divider()
                }
            }
            
            Spacer()
            
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

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
