//
//  ControlSelectView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/21.
//

import SwiftUI

struct ControlSelectView: View {
    
    @ObservedObject var viewModel = ControlSelectViewModel()
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack {
                
                Button(action: {
                    viewModel.didTapToggleButton()
                }, label: {
                    Text("Toggleページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
                
                Button(action: {
                    viewModel.didTapSliderButton()
                }, label: {
                    Text("Sliderページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    viewModel.didTapStepperButton()
                }, label: {
                    Text("Stepperページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    viewModel.didTapPickerButton()
                }, label: {
                    Text("Pickerページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    viewModel.didTapListButton()
                }, label: {
                    Text("Listページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    viewModel.didTapScrollButton()
                }, label: {
                    Text("ScrollListページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                
                Spacer(minLength: 50).fixedSize()
            }
        }
    }
}

struct ControlSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ControlSelectView()
    }
}
