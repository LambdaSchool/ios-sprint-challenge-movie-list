//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Cameron Collins on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    //Variables
    var movie: Movie? {
        didSet {
            viewCell()
        }
    }
    
    //Object| Outlets
    @IBOutlet weak var labelMovie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //Functions
    func viewCell() {
        if let myMovie = movie {
            labelMovie.text = myMovie.name
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
