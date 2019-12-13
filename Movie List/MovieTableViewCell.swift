//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by Ufuk Türközü on 13.12.19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBOutlet weak var testButton: UIButton!
    @IBAction func unseen(_ sender: Any) {
    
    changeTitle()
    //delegate?.movieHasBeenSeen(cell: self)
    
    }
    
    func changeTitle() {
        if testButton.currentTitle == "unseen" {
            testButton.setTitle("seen", for: .normal)
        } else {
        testButton.setTitle("unseen", for: .normal)
        }
    }
    
    
    var moviesName: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
            guard let movie = moviesName else { return }
            
        movieLabel.text = movie.moviesName
        
        }

    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
