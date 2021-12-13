//
//  ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 8.12.21..
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let tabBarVC = TabViewController()
        
        //PREBACI KOD U TABBAR CONTROLLER
        //VIEWCONTROLLERI TAB BAR CONTROLLERA TREBA DA POSTANU NAVIGACIONI CONTROLLERI KOJIMA JE PRVI NUMBER/LETTER/COLOR
        
        present(tabBarVC,animated: true)
    }
    
}

