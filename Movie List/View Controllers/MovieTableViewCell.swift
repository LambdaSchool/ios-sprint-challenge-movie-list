//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Sam Gutierrez on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var MovieTitleLabel: UILabel!

    @IBAction func NotSeenButtonTapped(_ sender: UIButton) {
         
    }
    
    // THE BUTTON'S VALUE IS SET TO AUTOMATICALLY BE FALSE. CHANGE THE BOOLEAN PROPERTY INSIDE OF THE NOTSEENBUTTONTAPPED ACTION BUTTON
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var movie: Movie? {
        didSet {
            self.updatedViews()
        }
    }

    private func updatedViews() {
        guard let movie = movie.self else {return}
        
        MovieTitleLabel.text = movie.name
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        
    
        
    }
}
