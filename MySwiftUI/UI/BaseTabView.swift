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
            
            LoremView()
                .tabItem {
                    Text("Lorem")
                }
            
            NeetQuestionView()
                .tabItem {
                    Text("NeetQuestion")
                }
            
            PicsumView()
                .tabItem {
                    Text("Picsum")
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
