//
//  MovieTableView.swift
//  Movie List
//
//  Created by James Sedlacek on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MovieLabel: UILabel!
    @IBOutlet weak var SeenButton: UIButton!
    
    @IBAction func SeenButtonTapped(_ sender: Any) {
        guard let movie = movie else { return }
        if movie.seen {
            movie.seen = false
            SeenButton.setTitle("Not Seen", for: .normal)
        } else {
            movie.seen = true
            SeenButton.setTitle("Seen", for: .normal)
        }
    }
    
    var movie: Movie? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        MovieLabel.text = movie.name
        if movie.seen {
            SeenButton.setTitle("Seen", for: .normal)
        } else {
            SeenButton.setTitle("Not Seen", for: .normal)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        updateViews()
    }

}
