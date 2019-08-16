//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Alex Rhodes on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            setViews()
        }
    }
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var seenUnseenButton: UIButton!
    
    func setViews() {
        
        backgroundColor = .black
        
        titleLabel.text = movie?.name
        directorLabel.text = movie?.director
        movieImageView.image = movie?.image
        
        
        movieImageView.backgroundColor = .gray
        
        titleLabel.text = movie?.name
        titleLabel.textColor = .white
        
        directorLabel.text = movie?.director
        directorLabel.textColor = .white
        
        releaseDateLabel.textColor = .white
        releaseDateLabel.text = movie?.releaseDate
        
        seenUnseenButton.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.3485707641, alpha: 1)
        seenUnseenButton.setTitle("UNSEEN", for: .normal)
        seenUnseenButton.layer.cornerRadius = 8
        seenUnseenButton.setTitleColor(.white, for: .normal)

        
    }
    
    @IBAction func seenButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if seenUnseenButton.isSelected {
            seenUnseenButton.layer.masksToBounds = true
            seenUnseenButton.setTitle("SEEN", for: .selected)
            seenUnseenButton.setTitleColor(.white, for: .selected)
            seenUnseenButton.layer.cornerRadius = 8
            seenUnseenButton.setBackgroundColor(#colorLiteral(red: 0.9989847541, green: 0.006771328859, blue: 0.3470637798, alpha: 1), for: .selected)
        }
    }
    
}

extension UIButton {
    private func imageWithColor(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        self.setBackgroundImage(imageWithColor(color: color), for: state)
    }
}
