//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit




    class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

        @IBOutlet var movieLabel: UILabel!
        @IBAction func movieStatusPushed(_ sender: Any) {
        }
        override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
       
        
        private func updateViews() {
            guard let movie = movie else { return }
            
            movieLabel.text = movie.name
        }
       var movie: Movie? {
            didSet {
                updateViews() }
    
}

}
