//
//  MoviesTableViewCell.swift
//  Movie List
//
//  Created by LambdaSchoolVM_Catalina on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    //iboutlets for custom cell
    @IBOutlet weak var movieLbl: UILabel!
    
    var flix: Movie? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let flix = flix else { return }
        movieLbl.text = flix.movieName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //ibactions
    @IBAction func seenBtnWasPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
        
        }
    }
    

}
