//
//  ControlBaseView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct ControlBaseView: View {
    
    @State var isTogglePresented = false
    @State var isSliderPresented = false
    @State var isStepperPresented = false
    @State var isPickerPresented = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack {
                
                Button(action: {
                    isTogglePresented = true
                }, label: {
                    Text("Toggleページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                .fullScreenCover(isPresented: $isTogglePresented) {
                    ToggleView()
                }
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
                
                Button(action: {
                    isSliderPresented = true
                }, label: {
                    Text("Sliderページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                .fullScreenCover(isPresented: $isSliderPresented) {
                    SliderView()
                }
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    isStepperPresented = true
                }, label: {
                    Text("Stepperページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                .fullScreenCover(isPresented: $isStepperPresented) {
                    StepperView()
                }
                
                Spacer(minLength: 50).fixedSize()
            }
            
            VStack {
            
                Button(action: {
                    isPickerPresented = true
                }, label: {
                    Text("Pickerページへ")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
                .fullScreenCover(isPresented: $isPickerPresented) {
                    PickerView()
                }
                
                Spacer(minLength: 50).fixedSize()
            }
        }
    }
}

struct ControlBaseView_Previews: PreviewProvider {
    static var previews: some View {
        ControlBaseView()
    }
}
