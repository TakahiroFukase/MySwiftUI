//
//  AlertView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/27.
//

import SwiftUI

struct AlertView: View {
    
    @ObservedObject var viewModel: AlertViewModel
    
    var body: some View {
        
        VStack(spacing: 100) {
            Text("本当に表示しますか？")
                .font(.largeTitle)
            
            
            HStack(spacing: 50) {
                
                Button(action: {
                    viewModel.didTapYes()
                }, label: {
                    Text("はい")
                        .font(.largeTitle)
                        .frame(width: 300, height: 200)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(25)
                })
                
                Button(action: {
                    viewModel.didTapNo()
                }, label: {
                    Text("いいえ")
                        .font(.largeTitle)
                        .frame(width: 300, height: 200)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(25)
                })
            }
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(viewModel: AlertViewModel(nextScreen: .toggle))
    }
}
