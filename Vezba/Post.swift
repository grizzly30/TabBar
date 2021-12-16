//
//  Post.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import Foundation
import UIKit

struct Post {
    let name: String
    let text: String
    let image: UIImage?
    
    init(name: String, text: String, image: UIImage?) {
        self.name = name
        self.text = text
        self.image = image
    }
}
