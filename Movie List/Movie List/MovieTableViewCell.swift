//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Rebecca Overare on 5/15/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    
    @IBAction func seenButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
