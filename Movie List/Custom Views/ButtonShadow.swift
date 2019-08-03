//
//  ButtonShadow.swift
//  Movie List
//
//  Created by Fabiola S on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class ButtonShadow: UIButton {
    
    override func awakeFromNib() {
        layer.shadowPath = CGPath(rect: layer.bounds, transform:  nil)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 5.0
        
        layer.cornerRadius = 5.0
    }
}
