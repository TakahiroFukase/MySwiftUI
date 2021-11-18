//
//  NeetQuestion.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/18.
//

import Foundation

struct NeetQuestion: Codable, Identifiable {
    
    // Identifiableに準拠するためにidを定義する
    var id: UUID? = UUID()
    
    // APIから取得する情報は以下の3項目
    let text: String
    let yesIsNeet: Bool
    let extraNeetPoint: Int
}
