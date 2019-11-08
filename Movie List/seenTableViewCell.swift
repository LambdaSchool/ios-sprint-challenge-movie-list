//
//  seenTableViewCell.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class seenTableViewCell: UITableViewCell {
    
    var movie: Movie? {
    didSet {
        updateViews()
    }
    }
    
    weak var delegate: MovieListDelegate?
    
    
    @IBAction func seenButtonTapped(_ sender: Any) {
    }
    
    @IBOutlet weak var seenButton: UIButton!
    
    
    
    
}

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

private func updateViews() {
    guard let movie = movie else { return }

    let seenButtonTitle = movie.seen ? "Seen" : "Not Seen"
    seenButton.setTitle(seenButtonTitle, for: [])

    if movie.seen
