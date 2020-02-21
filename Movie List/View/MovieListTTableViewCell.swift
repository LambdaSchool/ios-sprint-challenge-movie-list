//
//  MovieListTTableViewCell.swift
//  Movie List
//
//  Created by Harmony Radley on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTTableViewCell: UITableViewCell {


    @IBOutlet weak var seenButton: UIButton!
       
    @IBOutlet weak var movieName: UILabel!
    
       override func awakeFromNib() {
           super.awakeFromNib()
       }

       override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)
       }

       private func updateViews() {
           guard let movie = movie else { return }
           movieName.text = movie.title

       }

       var movie: Movie? {
           didSet {
               updateViews()
           }
       }

       @IBAction func seenTapped(_ sender: Any) {
           // switch value for seen bool
           self.movie?.seen.toggle()

           // Change title for the UIButton
           if self.movie?.seen == true {
               self.seenButton.setTitle("seen", for: .normal)
           } else {
               self.seenButton.setTitle("not seen", for: .normal)
           }
       }
   }
