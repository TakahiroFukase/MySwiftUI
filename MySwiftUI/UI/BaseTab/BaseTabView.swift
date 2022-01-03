//
//  BaseTabView.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2022/01/02.
//

import SwiftUI

struct BaseTabView: View {

    @State var title = "Tab View"
    
    var body: some View {
        
        TabView {
            
            ContentView()
                .tabItem {
                    Text("Content")
                }
            
            NetworkingBaseView()
                .tabItem {
                    Text("Network")
                }
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
