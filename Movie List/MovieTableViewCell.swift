//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate: class {
    func toggleIsSeen(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        
        //Put the data from the movie into the cell
        titleLabel.text = movie.title
        isSeenButton.setTitle(movie.isSeen ? "Seen" : "Not Seen", for: .normal)
        isSeenButton.setTitleColor(movie.isSeen ? .green : .red , for: .normal)
        
    }
    
    @IBAction func isSeenTapped(_ sender: UIButton) {
        delegate?.toggleIsSeen(on: self)
    }
    
}
