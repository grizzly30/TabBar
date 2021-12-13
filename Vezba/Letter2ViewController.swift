//
//  Letter2ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 12.12.21..
//

import UIKit

class Letter2ViewController: LetterViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "b"
        view.backgroundColor = .purple
        nextButton.addTarget(self, action: #selector(pressed2Button), for: .touchUpInside)
    
    }
    @objc private func pressed2Button(){
        let vcn3 = Letter3ViewController()
        
        navigationController?.popViewController(animated: false)
        navigationController?.pushViewController(vcn3, animated: false)
    }
    

}
