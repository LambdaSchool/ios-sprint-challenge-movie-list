//
//  MoviesListTableViewCell.swift
//  Movie List
//
//  Created by conner on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var seenButton: UIButton!
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        label.text = movie.title

    }
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    @IBAction func seenTapped(_ sender: Any) {
        // switch value for seen bool
        self.movie?.seen.toggle()
        
        // Change title for the UIButton
        if self.movie?.seen == true {
            self.seenButton.setTitle("seen", for: .normal)
        } else {
            self.seenButton.setTitle("not seen", for: .normal)
        }
    }
}
