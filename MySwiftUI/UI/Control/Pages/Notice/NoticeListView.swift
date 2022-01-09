//
//  NoticeListView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/09.
//

import SwiftUI

struct NoticeListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let noticeViews: [NoticeView] = [
        NoticeView(title: "本日全商品99%OFF!", isNew: true),
        NoticeView(title: "システムエラーのお詫び（大泣）", isNew: true),
        NoticeView(title: "下北沢店リニューアルOPEN!", isNew: false)
    ]
    
    var body: some View {
        
        VStack {
            
            Text("最新情報")
                .font(.title)
            
            Form {
                
                Section {
                    
                    List(noticeViews) { noticeView in
                        noticeView
                    }
                }
            }
            
            Button(action: {
                // この画面を閉じる
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("閉じる")
                    .bold()
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(25)
            })
            
            Spacer(minLength: 50).fixedSize()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeListView()
    }
}
