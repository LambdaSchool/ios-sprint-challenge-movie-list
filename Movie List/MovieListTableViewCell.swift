//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Chris Gonzales on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var HasSeenLabel: UIButton!
    
//    @IBAction func SeenToggleButton(_ sender: UIButton) {
//         var hasSeen: Bool = false
//         hasSeen.toggle()
//            if hasSeen == true{
//                      HasSeenLabel.titleLabel?.text = "Seen"
//                     return
//                  }
//                  else {
//                      HasSeenLabel.titleLabel?.text = "Unseen"
//                     return
//                  }
//     }
    @IBAction func SeenToggleButton(_ sender: UIToggleButton) {
        if sender.isOn {
            sender.setTitle("Seen", for: .normal)
        } else {
            sender.setTitle("Not See", for: .normal)
        }
    }
    
    var movie: Movie?{
        didSet{
            updateViews()
        }
    }
    
    func updateViews(){
        guard let unwrappedMovie = movie else {return}
        MovieTitleLabel.text = unwrappedMovie.title
    }
    
    
    @IBOutlet weak var MovieTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
