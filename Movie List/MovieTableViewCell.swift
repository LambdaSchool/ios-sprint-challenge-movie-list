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
    //Struct for holding colors
    struct Colors {
        static let green = UIColor(red: 35/255, green: 158/255, blue: 56/255, alpha: 1)
        static let red = UIColor(red: 219/255, green: 20/255, blue: 16/255, alpha: 1)
    }
    
    // MARK: - Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!
    
    weak var delegate: MovieTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - UI Methods
    @IBAction func isSeenTapped(_ sender: UIButton) {
        delegate?.toggleIsSeen(on: self)
    }
    
    // MARK: - Utility Methods
    func updateViews() {
        guard let movie = movie else { return }
        
        //Put the data from the movie into the cell
        titleLabel.text = movie.title
        isSeenButton.setTitle(movie.isSeen ? "Seen" : "Not Seen", for: .normal)
        isSeenButton.setTitleColor(movie.isSeen ? Colors.green : Colors.red , for: .normal)
        
    }
    
}
