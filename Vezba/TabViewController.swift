//
//  TabViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 8.12.21..
//

import UIKit

class TabViewController: UITabBarController {
    let button = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let vc1 = NumberViewController()
        let vc2 = LetterViewController()
        let vc3 = ColorViewController()
        vc1.view.backgroundColor = .red
        vc2.view.backgroundColor = .green
        vc3.view.backgroundColor = .blue
        
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        setViewControllers([nav1,nav2,nav3], animated: false)
        modalPresentationStyle = .fullScreen
        tabBar.backgroundColor = .gray
        
        //let button = UIButton()
        button.setTitle("Numbers", for: .normal)
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)

        //let button2 = UIButton()
        button2.setTitle("Letters", for: .normal)
        button2.backgroundColor = UIColor.gray
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.addTarget(self, action: #selector(pressed2), for: .touchUpInside)

        //let button3 = UIButton()
        button3.setTitle("Colors", for: .normal)
        button3.backgroundColor = UIColor.brown
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.addTarget(self, action: #selector(pressed3), for: .touchUpInside)
        
        let buttonStackView   = UIStackView()
        buttonStackView.axis  = NSLayoutConstraint.Axis.horizontal

        buttonStackView.addArrangedSubview(button)
        buttonStackView.addArrangedSubview(button2)
        buttonStackView.addArrangedSubview(button3)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        buttonStackView.alignment = .fill
        buttonStackView.distribution = .fillEqually
        buttonStackView.spacing = 8.0
        
        self.view.addSubview(buttonStackView)
        self.tabBar.isHidden = true
        buttonStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        buttonStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        buttonStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        buttonStackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    @objc func pressed() {
        print("Numbers pressed")
        selectedIndex = 0
    }
    @objc func pressed2() {
        print("Letters pressed")
        self.selectedIndex = 1
    }
    @objc func pressed3() {
        print("Colors pressed")
        selectedIndex = 2
    }

}
 
