//
//  MyTableViewCell.swift
//  Bhagavad Gita
//
//  Created by IMAC3 on 02/11/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageOutlet.layer.cornerRadius = imageOutlet.frame.height/2
        view.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
