//
//  MovieTableViewCell.swift
//  MovieList
//
//

import UIKit


protocol ToggleSeenDelegate {
    func isSeenButtonTapped(cell:MovieTableViewCell)
    
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var delegate: ToggleSeenDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBAction func toggleIsSeen(_ sender: UIButton) {
        
        delegate?.isSeenButtonTapped(cell: self)
        
        if movie?.seen == true {
            sender.setTitle("Seen", for: .normal)
        } else {
            sender.setTitle("Not Seen", for: .normal)
        }
    
    }
    

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.movieName
       
    }
}
