//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    @IBAction func seenButtonPressed(_ sender: Any) {
    }
    

}
