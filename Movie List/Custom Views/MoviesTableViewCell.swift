//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieListLabel: UILabel!
    @IBOutlet weak var isSeenLabel: UIButton!
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func updateViews() {
        
        guard let movie = movie else { return }
        
        self.movieListLabel.text = movie.moviesName
        let isSeenString = movie.isSeen ? "Not Seen" : "Seen"
        self.isSeenLabel.setTitle(isSeenString, for: .normal)
    }

}
