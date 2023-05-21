//
//  SliderView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct SliderView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
        
    @State var topSliderValue = 0.0
    @State var middleSliderValue = 0.0
    @State var bottomSliderValue = 0.0
    @State var allMaxMessage = ""
    
    let imageWidth = UIScreen.main.bounds.width
    let imageHeight = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack {

            ZStack {
                
                Image(uiImage: UIImage(named: "sample")!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth,
                           height: imageHeight)
                
                Text(allMaxMessage)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.red)

                VStack(spacing: 0) {
                    
                    Text("")
                        .frame(width: imageWidth,
                               height: imageHeight / 3)
                        .background(Color(red: 0, green: 0, blue: 0, opacity: 1 - (topSliderValue / 100)))
                    
                    Text("")
                        .frame(width: imageWidth,
                               height: imageHeight / 3)
                        .background(Color(red: 0, green: 0, blue: 0, opacity: 1 - (middleSliderValue / 100)))
                    
                    Text("")
                        .frame(width: imageWidth,
                               height: imageHeight / 3)
                        .background(Color(red: 0, green: 0, blue: 0, opacity: 1 - (bottomSliderValue / 100)))
                }
            }
            
            VStack {
                
                Slider(value: $topSliderValue, in: 0...100, step: 10, onEditingChanged: { started in
                    onSliderEditingChanged(started: started)
                })
                .padding(.horizontal, 20.0)
                
                Slider(value: $middleSliderValue, in: 0...100, step: 10, onEditingChanged: { started in
                    onSliderEditingChanged(started: started)
                })
                .padding(.horizontal, 20.0)
                
                Slider(value: $bottomSliderValue, in: 0...100, step: 10, onEditingChanged: { started in
                    onSliderEditingChanged(started: started)
                })
                .padding(.horizontal, 20.0)
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
    
    private func onSliderEditingChanged(started: Bool) {
        
        if started {
            // 編集が開始されたら文言を非表示にする
            allMaxMessage = ""
            
        } else {
            
            if topSliderValue == 100 && middleSliderValue == 100 && bottomSliderValue == 100 {
                // 編集終了時に全てのスライダーがマックスになっていたら文言を表示する
                allMaxMessage = "ALL MAX!"
            }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
