//
//  Color3ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class Color3ViewController: UIViewController {
    
    
    @IBOutlet weak var imageTop: UIImageView!
    @IBOutlet weak var imageDown: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var opis1Label: UILabel!
    @IBOutlet weak var opis2Label: UILabel!
    @IBOutlet weak var opis3Label: UILabel!
    @IBOutlet weak var tabela: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabela.dataSource = self
        tabela.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
}
extension Color3ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return messages.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            <#code#>
    }

}
