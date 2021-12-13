//
//  Color2ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class Color2ViewController: ColorViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Crveni"
        view.backgroundColor = .purple
        nextButton.addTarget(self, action: #selector(pressed2Button), for: .touchUpInside)
    
    }
    @objc private func pressed2Button(){
        let vcn3 = Color3ViewController()
        
        navigationController?.popViewController(animated: false)
        navigationController?.pushViewController(vcn3, animated: false)
    }
    

}
