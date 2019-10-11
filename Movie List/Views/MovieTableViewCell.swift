//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Niranjan Kumar on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieName: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func unseenTapped(_ sender: UIButton) {
            
        }
        

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieName.text = movie.name
    }
    
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
