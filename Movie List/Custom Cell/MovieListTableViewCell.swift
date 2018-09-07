//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Madison Waters on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class{
    func seenButtonWasTapped(on cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    @IBAction func seenButtonToggle(_ sender: Any) {
        
        //delegate?.
    }
    
    func updateViews () {
        
        guard let movie = movie else { return }
        movieTitleLabel.text = movie.title
        let seenButtonTitle = movie.hasSeen ? "Not Seen" : "Seen"
        seenButton.setTitle(seenButtonTitle, for: .normal)
        
    }
    
    weak var delegate: MovieListTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
