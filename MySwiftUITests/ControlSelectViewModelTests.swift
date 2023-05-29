//
//  ControlSelectViewModelTests.swift
//  MySwiftUITests
//
//  Created by Takahiro Fukase on 2023/05/29.
//

import XCTest
@testable import MySwiftUI

class ControlSelectViewModelTests: XCTestCase {

    func testDidTapToggleButton() throws {
        
        // テストなので、ViewModelにはモックのModelを持たせる
        let mock = MockUserSettingModel()
        let viewModel = ControlSelectViewModel(userSettingModel: mock)
        
        XCTContext.runActivity(named: "アラートを表示しない時") { _ in
            // shouldShowAlertWhenNeededがfalseになるようにモックにセットする
            mock.shouldShowAlertWhenNeeded = false
            
            viewModel.controlRouter.screenState = .select
            
            viewModel.didTapToggleButton()
            
            // shouldShowAlertWhenNeededがfalseでトグルボタンがタップされたら、screenStateは.toggleになることをテスト
            if case .toggle = viewModel.controlRouter.screenState {
                
            } else {
                XCTFail()
            }
        }
        
        XCTContext.runActivity(named: "アラートを表示する時") { _ in
            // shouldShowAlertWhenNeededがtrueになるようにモックにセットする
            mock.shouldShowAlertWhenNeeded = true
            
            viewModel.controlRouter.screenState = .select
            
            viewModel.didTapToggleButton()
            
            // shouldShowAlertWhenNeededがtrueでトグルボタンがタップされたら、screenStateは.alert(.toggle)になることをテスト
            if case .alert(.toggle) = viewModel.controlRouter.screenState {
                
            } else {
                XCTFail()
            }
        }
    }
    
    func testDidTapSliderButton() throws {
        
        // テストなので、ViewModelにはモックのModelを持たせる
        let mock = MockUserSettingModel()
        let viewModel = ControlSelectViewModel(userSettingModel: mock)
        
        XCTContext.runActivity(named: "アラートを表示しない時") { _ in
            // shouldShowAlertWhenNeededがfalseになるようにモックにセットする
            mock.shouldShowAlertWhenNeeded = false
            
            viewModel.controlRouter.screenState = .select
            
            viewModel.didTapSliderButton()
            
            // shouldShowAlertWhenNeededがfalseでスライダーボタンがタップされたら、screenStateは.sliderになることをテスト
            if case .slider = viewModel.controlRouter.screenState {
                
            } else {
                XCTFail()
            }
        }
        
        XCTContext.runActivity(named: "アラートを表示する時") { _ in
            // shouldShowAlertWhenNeededがtrueになるようにモックにセットする
            mock.shouldShowAlertWhenNeeded = true
            
            viewModel.controlRouter.screenState = .select
            
            viewModel.didTapSliderButton()
            
            // shouldShowAlertWhenNeededがtrueでスライダーボタンがタップされたら、screenStateは.alert(.slider)になることをテスト
            if case .alert(.slider) = viewModel.controlRouter.screenState {
                
            } else {
                XCTFail()
            }
        }
    }
}
