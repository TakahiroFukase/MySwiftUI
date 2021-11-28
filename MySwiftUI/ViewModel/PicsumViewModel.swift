//
//  PicsumViewModel.swift
//  MySwiftUI
//
//  Created by Takahiro Fukase on 2021/11/28.
//

import UIKit

class PicsumViewModel: ObservableObject {
    
    @Published var image: UIImage = UIImage()
    
    func getImage(id: Int) {
        PicsumService().getImage(id: id) { fetchedImage in
            self.image = fetchedImage
        }
    }
}
