//
//  LoremViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/12.
//

import Foundation

class LoremViewModel: ObservableObject {
    
    @Published var data = String()
    
    init() {
        getData()
    }
    
    private func getData() {
        LoremService().getText { text in
            self.data = text
        }
    }
}
