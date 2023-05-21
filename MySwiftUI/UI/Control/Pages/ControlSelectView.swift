//
//  ControlSelectView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/21.
//

import SwiftUI

struct ControlSelectView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack {
                
                Button(action: {
                    controlRouter.screenState = .toggle
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
                    controlRouter.screenState = .slider
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
                    controlRouter.screenState = .stepper
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
                    controlRouter.screenState = .picker
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
                    controlRouter.screenState = .list
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
                    controlRouter.screenState = .scroll
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
