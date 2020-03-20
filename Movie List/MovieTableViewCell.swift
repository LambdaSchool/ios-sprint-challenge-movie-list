//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Mark Poggi on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol MovieCellDelegate {
    func viewedTapped()
}


class MovieTableViewCell: UITableViewCell {

    
      var movie: MOVIE? {
            didSet {
              updateViews()
            }
        }
    
    var delegate: MovieCellDelegate?
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var viewedButton: UIButton!
    
    @IBAction func viewedButtonTapped(_ sender: Any) {
        movie!.viewed = !movie!.viewed
        delegate?.viewedTapped()
    }
    
    
    private func updateViews() {
           guard let movie = movie  else { return }
           
        movieLabel.text = movie.movies
        
        if movie.viewed == true  {
            viewedButton.setTitle("viewed", for: .normal)
        } else {
            viewedButton.setTitle("not viewed", for: .normal)
        }
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

}
