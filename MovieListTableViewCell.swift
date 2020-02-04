//
//  MovieListTableViewCell.swift
//  OneMoreTime
//
//  Created by Lambda_School_Loaner_268 on 2/3/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var isSeenButton: UIButton!

    var movie: Movie? {
    didSet {
        updateViews()
    }
}
    func setupSeenSwitch() {
           if let movie = movie{
               switch movie.seen {
               case .Seen:
                   isSeenButton.setTitle(SeenString.seen.rawValue, for: .normal)
               
               
               case .notSeen:
                   isSeenButton.setTitle(SeenString.notSeen.rawValue, for: .normal)
                   
               }
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
    
    @IBAction func isSeenButtonTapped(_ sender: Any) {
        if let movie = movie {
            var newMovie = movie
            if newMovie.seen == .notSeen {
                newMovie.seen = .Seen
            } else {
                newMovie.seen = .notSeen
                
            }
            self.movie = newMovie
            setupSeenSwitch()
        }
    }
   
    
    
    
    func updateViews() {
        if let movie = movie {
            title.text = movie.title
            setupSeenSwitch()
        }
    }
}
    
    
    


