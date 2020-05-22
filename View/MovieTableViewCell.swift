//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movielLabel: UILabel!
    @IBOutlet weak var SeenButtonDefault: UIButton!
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func SeenNotSeenButton(_ sender: UIButton) {
        self.movie?.hasBeenSeen.toggle()
        switch self.movie?.hasBeenSeen {
        case true:
            self.SeenButtonDefault.setTitle("Seen", for: .normal)
        default:
            self.SeenButtonDefault.setTitle("Not Seen", for: .normal)
        }
    }
    
    private func updateViews() {
        guard let unwrappedMovie = movie else { return }
        movielLabel.text = unwrappedMovie.name
        
    }
    
    //        sender.isSelected.toggle()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

