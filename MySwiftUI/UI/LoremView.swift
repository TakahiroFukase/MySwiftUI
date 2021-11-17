//
//  LoremView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/17.
//

import SwiftUI

struct LoremView: View {
    
    @ObservedObject var loremViewModel = LoremViewModel()
    
    var body: some View {
        
        VStack {
            Text("LoremView")
                .font(.title)
            
            Divider()
            
            Text(loremViewModel.data)
                .font(.body)
                .padding(10)
            
            Divider()
            
            Spacer(minLength: 0)
        }
        
    }
}

struct LoremView_Previews: PreviewProvider {
    static var previews: some View {
        LoremView()
    }
}
