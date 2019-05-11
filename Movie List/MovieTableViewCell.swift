//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nathan Hedgeman on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func seenButtonTapped(on cell:
    MovieTableViewCell)
}
class MovieTableViewCell: UITableViewCell {

    var movie: Movie? {
        didSet{
            self.updateViews()
        
        }
    }
    @IBOutlet weak var MovieTitle: UILabel!
    @IBOutlet weak var SeenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    
    @IBAction func SeenButtonTapped(_ sender: Any) {
        self.delegate?.seenButtonTapped(on: self)
    }
    private func updateViews(){
        guard let movie = self.movie else {return}
        self.MovieTitle.text = movie.title
        if(movie.isSeen) {
            SeenButton.setTitle("Seen", for: .normal)
        }else {
            SeenButton.setTitle("Not Seen", for: .normal)
        }
        
    }
    

}
