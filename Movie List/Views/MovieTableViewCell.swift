//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Niranjan Kumar on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol MovieSeen {
    func buttonToggled (_ cell: MovieTableViewCell)
    
}

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var unseenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    var delegate: MovieSeen?

    @IBAction func unseenTapped(_ sender: UIButton) {
        delegate?.buttonToggled(self)
        }
        

    private func updateViews() {
        guard let movie = movie else { return }
        
        movieName.text = movie.name
        
        if movie.hasBeenSeen {
            unseenButton.setTitle("Seen", for: .normal)
        } else {
            unseenButton.setTitle("Unseen", for: .normal)
        }
        
    }
    
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
