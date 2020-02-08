//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_241 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // Mark - IBOutlets
    @IBOutlet weak var movieLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Mark - IBActions
    @IBAction func seenOrNotSeenButton(_ sender: Any) {
    }
    
     override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        
        var film: Movie? {
            didSet {
                self.updateViews()
            }
            
        }
        
        private func updateViews(){
            guard let movies = film else { return }
            movieLabel.text = movies.name
           
            
        }

    }
