//
//  ControlSelectViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/27.
//

import Foundation

class ControlSelectViewModel: ObservableObject {
        
    @Published var controlRouter = ControlRouter.shared
        
    func didTapToggleButton() {
        if UserDefaultsClient.shouldShowAlertWhenNeeded {
            controlRouter.screenState = .alert(.toggle)
        } else {
            controlRouter.screenState = .toggle
        }
    }
    
    func didTapSliderButton() {
        if UserDefaultsClient.shouldShowAlertWhenNeeded {
            controlRouter.screenState = .alert(.slider)
        } else {
            controlRouter.screenState = .slider
        }
    }
    
    func didTapStepperButton() {
        controlRouter.screenState = .stepper
    }
    
    func didTapPickerButton() {
        controlRouter.screenState = .picker
    }
    
    func didTapListButton() {
        controlRouter.screenState = .list
    }
    
    func didTapScrollButton() {
        controlRouter.screenState = .scroll
    }
}
