//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func hasSeenButton(_ sender: Any) {
    }
    
    
    //MARK: - Properties
    
    @IBOutlet weak var titleLabel: UILabel!
}
