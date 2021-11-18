//
//  NeetQuestion.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import Foundation

struct NeetQuestion: Codable, Identifiable {
    
    var id: Int
    let text: String
    let yesIsNeet: Bool
    let extraNeetPoint: Int
}
