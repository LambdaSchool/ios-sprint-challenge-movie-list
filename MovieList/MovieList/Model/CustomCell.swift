//
//  CustomCell.swift
//  MovieList
//
//  Created by Nick Nguyen on 1/24/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

protocol CellButtonDelegate {
    func didTapButton(for button: UIButton)
}

class CustomCell: UITableViewCell {

    @IBAction func cellButtonTapped(_ sender: UIButton) {
        delegate?.didTapButton(for: cellButton)
    }
    
    @IBOutlet weak var cellButton: UIButton!
    
    var delegate: CellButtonDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
