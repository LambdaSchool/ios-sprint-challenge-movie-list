//
//  movieTableViewCell.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        
        watchedButton()
        watchButton()
    }
    
    func watchedButton() {
        seenButton.layer.cornerRadius = 5
        seenButton.clipsToBounds = true
        
        seenButton.backgroundColor = UIColor.systemGray
        seenButton.setTitle("Seen", for: UIControl.State.normal)
        seenButton.setTitleColor(.white, for: UIControl.State.normal)
        seenButton.addTarget(self, action: #selector(watchedBtnHandler), for: .touchUpInside)
    }
    
    @objc func watchedBtnHandler() {
        watchButton()
    }
    
    func watchButton() {
        seenButton.layer.cornerRadius = 5
        seenButton.clipsToBounds = true
        
        seenButton.backgroundColor = UIColor.systemBlue
        seenButton.setTitle("Not Seen", for: UIControl.State.normal)
        seenButton.setTitleColor(.white, for: UIControl.State.normal)
        seenButton.addTarget(self, action: #selector(watchBtnHandler), for: .touchUpInside)
    }
    
    @objc func watchBtnHandler() {
        watchedButton()
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
