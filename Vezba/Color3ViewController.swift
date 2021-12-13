//
//  Color3ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class Color3ViewController: ColorViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Zeleni"
        view.backgroundColor = .lightGray
        nextButton.isHidden = true
    }
    
}
