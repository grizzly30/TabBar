//
//  LetterViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 10.12.21..
//

import UIKit

class LetterViewController: UIViewController {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    let nextButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "a"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = .orange
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextButton)
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        nextButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        
    }
    @objc private func pressedButton(){
        let vcn2 = Letter2ViewController()
        navigationController?.pushViewController(vcn2, animated: false)
    }
    

}
