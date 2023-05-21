//
//  ControlBaseView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/03.
//

import SwiftUI

struct ControlBaseView: View {
    
    @ObservedObject var controlRouter = ControlRouter.shared
    
    var body: some View {
        
        ZStack {
            switch controlRouter.screenState {
            case .select:
                ControlSelectView()
            case .toggle:
                ToggleView()
            case .slider:
                SliderView()
            case .stepper:
                StepperView()
            case .picker:
                PickerView()
            case .list:
                NoticeListView()
            case .scroll:
                ScrollListView()
            }
        }
    }
}

struct ControlBaseView_Previews: PreviewProvider {
    static var previews: some View {
        ControlBaseView()
    }
}
