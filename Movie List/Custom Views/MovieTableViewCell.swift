//
//  MovieTableViewCell.swift
//  MovieList
//
//

import UIKit


protocol ToggleSeenDelegate {
    func isSeenButtonTapped(movie: Movie)
    
}

class MovieTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var movieName: UILabel!
    
    var delegate: ToggleSeenDelegate?
    
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func toggleIsSeen(_ sender: UIButton) {
        
//        delegate?.isSeenButtonTapped(movie: self.movie)
        
        movie?.toggleSeen()
        
        updateViews()

    }
    

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieName.text = movie.movieName
        
       if movie.seen == true {
               seenButton.setTitle("Seen", for: .normal)
           } else {
               seenButton.setTitle("Not Seen", for: .normal)
           }
       
    }
}
