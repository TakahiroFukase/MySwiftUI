//
//  TextFileView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/12/26.
//

import SwiftUI

struct TextFileView: View {
    
    @ObservedObject var viewModel = TextFileViewModel()
    
    @State var message = "Enter and Save!"
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.title)
            
            Divider()
            
            TextField("", text: $viewModel.text)
                .font(.body)
            
            Divider()
            
            Button("SAVE!", action: {
                viewModel.save()
                message = "Saved!"
            }).frame(width: 200, height: 50)
            .border(Color.blue, width: 5)
            
            Spacer()
        }
    }
}

struct TextFileView_Previews: PreviewProvider {
    static var previews: some View {
        TextFileView()
    }
}
