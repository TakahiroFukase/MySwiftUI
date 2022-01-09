//
//  NoticeView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/09.
//

import SwiftUI

struct NoticeView: View, Identifiable {
    
    var id = UUID()
    let title: String
    let isNew: Bool
    
    var body: some View {

        HStack {
            
            Text(title)
                .bold()
            
            Spacer()
            
            if isNew {
                Text("NEW!")
                    .foregroundColor(.red)
                    .bold()
            }
        }
        .padding(10)
    }
}
