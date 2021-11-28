//
//  PicsumView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/28.
//

import SwiftUI

struct PicsumView: View {
    
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
        }
        
        Spacer(minLength: 0)
    }
}

struct PicsumView_Previews: PreviewProvider {
    static var previews: some View {
        PicsumView()
    }
}
