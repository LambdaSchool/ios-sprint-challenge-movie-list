//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Nichole Davidson on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        
        didSet {
            updateViews()
        }
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.name
        if seenButton != nil {
            movie.seen = true
        }
    }
    
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        
        guard let movie = movie else { return }
        if case movie.seen = true {
            seenButton.setTitle("Seen", for: .normal)
            seenButton.currentTitleColor
        }
        
    }
    
    
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
}


