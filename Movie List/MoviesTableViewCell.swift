//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    var movie: Movie?
    
    @IBOutlet weak var movieListLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
    }

}
