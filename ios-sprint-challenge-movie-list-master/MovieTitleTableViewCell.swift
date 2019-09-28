//
//  MovieTitleTableViewCell.swift
//  Movie List
//
//  Created by Alex Thompson on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol MovieTitleTableViewDelegate: AnyObject {
    func seenNotSeenWasTapped(cell: MovieTitleTableViewCell)
}
class MovieTitleTableViewCell: UITableViewCell {
    
    
    
    weak var delegate: MovieTitleTableViewDelegate?

    var movie: String? {
        didSet { setupViews() }
    }
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var seenNotSeenButton: UIButton!
    
    @IBAction func seenNotSeenPressed(_ sender: Any) {
        delegate?.seenNotSeenWasTapped(cell: self)
    }
    
    private func setupViews() {
        
        
        guard let movie = movie else {return}
        movieLabel.text = movie
        seenNotSeenButton.setTitle("Not Seen", for: [])
        
    }
    


    
    

}
