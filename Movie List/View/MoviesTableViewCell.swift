//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

        // MARK - Properties
    var seen: Movie? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: HasSeenDelegate?
    
    
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonTapped(_ sender: Any) {
        delegate?.toggleseen(on: self)
    }
    
    private func updateViews() {
        guard let seen = seen else { return }
        
        let seenTitle = seen.seen ? "Seen" : "Not Seen"
        seenButton.setTitle(seenTitle, for: [])
    }
    
    
}
