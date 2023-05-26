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
        controlRouter.screenState = .toggle
    }
    
    func didTapSliderButton() {
        controlRouter.screenState = .slider
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
