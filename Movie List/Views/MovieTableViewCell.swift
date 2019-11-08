//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Donella Barcelo on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func isSeenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
