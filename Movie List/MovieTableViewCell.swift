//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBAction func seenButton(sender: UIButton) {
        if sender.
    }
    
    
    var movie: Movie? { didSet { updateViews() }}
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel?.text = movie.name
        
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
