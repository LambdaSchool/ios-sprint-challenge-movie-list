//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol movieTableViewCellDelegate: class {
    func shareMovie(for cell:MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    
    @IBAction func hasSeenToggleAction(_ sender: Any) {
        guard var movie = movie else { return}
        if movie.hasSeen{
            hasSeenButtonLabel.setTitle("Not Seen", for: .normal)
            movie.hasSeen = false
        } else {
            hasSeenButtonLabel.setTitle("Seen", for: .normal)
            movie.hasSeen = true
        }
    }
    
    private func updateViews(){
        guard let movie = movie else {return}
        titleLabel.text = movie.title
        let hasSeenStr = movie.hasSeen ? "Seen" : "Not See"
        hasSeenButtonLabel.setTitle(hasSeenStr, for: .normal)
    }
    
    //MARK: - Properties
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    
    
    weak var delege: movieTableViewCellDelegate?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var hasSeenButtonLabel: UIButton!
}
