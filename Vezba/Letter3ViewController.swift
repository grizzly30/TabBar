//
//  Letter3ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class Letter3ViewController: LetterViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "c"
        view.backgroundColor = .lightGray
        nextButton.isHidden = true
    }

}
