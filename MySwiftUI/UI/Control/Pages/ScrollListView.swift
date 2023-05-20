//
//  ScrollListView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/09.
//

import SwiftUI

struct ScrollListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let noticeViews: [NoticeView] = [
        NoticeView(title: "【先日のお詫び】\n本日全商品99%OFF!", isNew: true),
        NoticeView(title: "システムエラーのお詫び（大泣）", isNew: true),
        NoticeView(title: "下北沢店リニューアルOPEN!", isNew: false),
        NoticeView(title: "吉祥寺店リニューアルOPEN!", isNew: false),
        NoticeView(title: "渋谷店リニューアルOPEN!", isNew: false),
        NoticeView(title: "新宿店リニューアルOPEN!", isNew: false),
        NoticeView(title: "池袋店リニューアルOPEN!", isNew: false),
        NoticeView(title: "秋葉原店リニューアルOPEN!", isNew: false),
        NoticeView(title: "東京店リニューアルOPEN!", isNew: false),
        NoticeView(title: "名古屋店リニューアルOPEN!", isNew: false),
        NoticeView(title: "博多店リニューアルOPEN!", isNew: false),
        NoticeView(title: "倉敷店リニューアルOPEN!", isNew: false),
        NoticeView(title: "軽井沢店リニューアルOPEN!", isNew: false),
        NoticeView(title: "札幌店リニューアルOPEN!", isNew: false),
        NoticeView(title: "松山店リニューアルOPEN!", isNew: false),
        NoticeView(title: "徳山店リニューアルOPEN!", isNew: false)
    ]
    
    var body: some View {
        
        VStack {
            
            Text("最新情報（ScrollView）")
                .font(.title)
            
            ScrollView {
                
                ForEach(noticeViews) { noticeView in
                    noticeView
                    Divider()
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

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollListView()
    }
}
