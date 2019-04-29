//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Kobe McKee on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func hasSeenButtonPressed(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        if movie.hasSeen == true {
            hasSeenButton.setTitle("Seen", for: .normal)
        } else {
            hasSeenButton.setTitle("Not Seen", for: .normal)
        }
        movieLabel.text = movie.title
        
    }
    
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBAction func hasSeenButtonPressed(_ sender: Any) {
        delegate?.hasSeenButtonPressed(on: self)
    }
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    

    


}
