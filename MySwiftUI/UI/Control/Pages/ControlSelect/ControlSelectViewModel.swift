//
//  ControlSelectViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2023/05/27.
//

import Foundation

class ControlSelectViewModel: ObservableObject {
        
    @Published var controlRouter = ControlRouter.shared
    
    private let userSettingModel: UserSettingModelProtocol
    
    init(userSettingModel: UserSettingModelProtocol = UserSettingModel()) {
        self.userSettingModel = userSettingModel
    }
        
    func didTapToggleButton() {
        if userSettingModel.getShouldShowAlertWhenNeeded() {
            controlRouter.screenState = .alert(.toggle)
        } else {
            controlRouter.screenState = .toggle
        }
    }
    
    func didTapSliderButton() {
        if userSettingModel.getShouldShowAlertWhenNeeded() {
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
