//
//  PicsumView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/28.
//

import SwiftUI

struct PicsumView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var picsumViewModel = PicsumViewModel()
    
    @State var count: Int = 0
    
    var body: some View {
        
        VStack {
            Text("PicsumView")
                .font(.title)
            
            Divider()
            
            Button(action: {
                count += 1
                picsumViewModel.getImage(id: count)
            }, label: {
                Text("GET IMAGE")
                    .font(.largeTitle)
                    .frame(width: 200, height: 70)
                    .border(Color.red, width: 5)
            })
            
            Divider()
            
            Image(uiImage: picsumViewModel.image)
            
            Text("ID: \(count)")
                .font(.body)
                .bold()
            
            Spacer()
            
            Button(action: {
                // この画面を閉じる
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("閉じる")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(25)
            })
            
            Spacer(minLength: 50).fixedSize()
        }
    }
}

struct PicsumView_Previews: PreviewProvider {
    static var previews: some View {
        PicsumView()
    }
}
