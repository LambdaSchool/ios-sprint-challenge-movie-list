//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Hannah Bain on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

   // MARK: - Actions
      
      @IBAction func hasSeenButtonTapped(_ sender: Any) {
          delegate?.hasSeenButtonWasTapped(onCell: self)
      }
      
      // MARK: - Private Functions
      
      private func updateViews() {
          guard let movie = movie else { return }
          
          movieNameLabel.text = movie.title
          
          let hasSeenButtonTitle = movie.hasSeen ? "Seen" : "Not Seen"
          
          hasSeenButton.setTitle(hasSeenButtonTitle, for: [])
      }
      
      // MARK: - Properties
      
      weak var delegate: MovieTableViewCellDelegate?
      
      var movie: Movie? {
          didSet {
              updateViews()
          }
      }
      
      @IBOutlet weak var movieNameLabel: UILabel!
      @IBOutlet weak var hasSeenButton: UIButton!
}
