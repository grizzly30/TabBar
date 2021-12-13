//
//  Number3ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 10.12.21..
//

import UIKit

class Number3ViewController: NumberViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "3"
        view.backgroundColor = .lightGray
        nextButton.isHidden = true
    }
    

}
