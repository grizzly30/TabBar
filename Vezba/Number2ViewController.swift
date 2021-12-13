//
//  Number2ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 10.12.21..
//

import UIKit

class Number2ViewController: NumberViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "2"
        view.backgroundColor = .purple
        nextButton.addTarget(self, action: #selector(pressed2Button), for: .touchUpInside)
        
    }
    @objc private func pressed2Button(){
        let vcn3 = Number3ViewController()
        
        navigationController?.popViewController(animated: false)
        navigationController?.pushViewController(vcn3, animated: false)
    }
    

}
