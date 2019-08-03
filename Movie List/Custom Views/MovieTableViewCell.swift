//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieWatchedStatus: UIButton!
    
    
    // MARK: - Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Actions
    
    @IBAction func movieWatchedTapped(_ sender: Any) {
    }
    

}
