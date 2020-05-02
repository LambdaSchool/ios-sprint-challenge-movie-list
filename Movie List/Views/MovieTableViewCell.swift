//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Juan M Mariscal on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
    func didTapMovieSeenBtn(movieBool: Bool)
}

class MovieTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet weak var movieSeenBtn: UIButton!
    @IBOutlet weak var movieNameLabel: UITextField!
    
    var delegate: MovieCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        movieNameLabel.text = movie.movieName
        
        if movie.movieSeenBool == true {
            movieSeenBtn.titleLabel?.text = "Not Seen"
        } else if movie.movieSeenBool == false {
            movieSeenBtn.titleLabel?.text = "Seen"
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func movieSeenTapped(_ sender: Any) {
        delegate?.didTapMovieSeenBtn(movieBool: movie!.movieSeenBool)
        
//        if movie?.movieSeenBool == true {
//    movie?.movieSeenBool = false
//    movieSeenBtn.titleLabel?.text = "Not Seen"
//} else if movie?.movieSeenBool == false {
//    movie?.movieSeenBool = true
//    movieSeenBtn.titleLabel?.text = "Seen"
//}
//        updateViews()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
