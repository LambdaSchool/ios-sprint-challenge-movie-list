//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Nihal Erdal on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    @IBOutlet weak var seenButton: UIButton!
    
    var movie : Movie?{
        didSet{
           updateViews()
        }
    }
    
    func updateViews(){
        
        guard let movie = movie else {return}
        
        movieNameLabel.text = movie.name
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func seenButtonTapped(_ sender: Any) {
        
        if let button = sender as? UIButton {
            
            if button.isSelected == true {
                seenButton.setTitle("Seen", for: .normal)
                button.isSelected = false
            }else{
                seenButton.setTitle("Not Seen", for: .normal)
                button.isSelected = true
        }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
