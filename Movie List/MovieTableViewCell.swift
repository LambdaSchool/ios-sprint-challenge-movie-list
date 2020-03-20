//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Chris Dobek on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol SeenButtonDelegate {
    func seenButton()
}

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet{
            updateViews()
    }
}
    var delegate: SeenButtonDelegate?
    
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
   @IBAction func seenButtonTapped(_ sender: Any) {
        movie?.seen = !movie!.seen
       delegate?.seenButton()
   }

    private func updateViews(){
        guard let movie = movie else { return }
        titleLabel.text = movie.title
        if movie.seen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Watch", for: .normal)
        }
}
}
