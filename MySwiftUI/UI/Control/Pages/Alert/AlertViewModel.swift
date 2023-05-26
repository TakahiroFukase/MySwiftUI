//
//  AlertViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/27.
//

import Foundation

class AlertViewModel: ObservableObject {
    
    let nextScreen: ControlScreen
            
    @Published var controlRouter = ControlRouter.shared
    
    init(nextScreen: ControlScreen) {
        self.nextScreen = nextScreen
    }
        
    func didTapYes() {
        controlRouter.screenState = nextScreen
    }
    
    func didTapNo() {
        controlRouter.screenState = .select
    }
}
