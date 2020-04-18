//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Josh Kocsis on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var seenNotSeen: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBAction func seenNotSeen(_ sender: Any?) {
        guard let button = sender as? UIButton else {return}
        
        button.isSelected.toggle()
    }
    
    var newMovie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let movie = self.newMovie else { return }
        
        movieTitleLabel.text = movie.moviesName.joined(separator: "")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
