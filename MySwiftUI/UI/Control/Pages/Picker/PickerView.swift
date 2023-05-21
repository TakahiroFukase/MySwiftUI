//
//  PickerView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/04.
//

import SwiftUI

struct PickerView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
        
    @ObservedObject var viewModel = PickerViewModel()
    
    var body: some View {
        
        Spacer(minLength: 50).fixedSize()
        
        VStack {
            
            HStack {
                Spacer(minLength: 50).fixedSize()
                
                Text("ユーザーの性別: \(viewModel.registeredGender)")
                    .bold()

                Spacer()
            }
            
            Spacer(minLength: 20).fixedSize()
            
            Divider()
        
            Picker("", selection: $viewModel.selectedIndex, content: {
                ForEach(0..<viewModel.genders.count) { index in
                    Text(viewModel.genders[index])
                }
            })
            .labelsHidden()
            
            Button(action: {
                viewModel.registerGender()
            }, label: {
                Text("保存")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(25)
            })
        }
        
        Spacer(minLength: 30).fixedSize()
        
        VStack {
            
            HStack {
                Spacer(minLength: 50).fixedSize()
                
                Text("ユーザーの生年月日: \(viewModel.registeredBirthday)")
                    .bold()

                Spacer()
            }
            
            if !viewModel.canRegisterBirthday {
                HStack {
                    Spacer(minLength: 50).fixedSize()
                    
                    Text("生年月日は変更できません。")
                        .foregroundColor(.red)
                        .bold()

                    Spacer()
                }
            }
            
            Spacer(minLength: 20).fixedSize()
            
            Divider()
            
            if viewModel.canRegisterBirthday {
                DatePicker("", selection: $viewModel.date, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                
                Button(action: {
                    viewModel.registerBirthday()
                }, label: {
                    Text("保存")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
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

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
