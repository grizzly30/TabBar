//
//  PostCell.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var somTextLabel: UILabel!
    @IBOutlet weak var someImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
