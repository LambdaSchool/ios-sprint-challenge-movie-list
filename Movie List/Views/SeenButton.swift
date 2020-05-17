//
//  SeenButton.swift
//  Movie List
//
//  Created by Ian Becker on 5/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class SeenButton: UIButton {
    var hasSeen = false
    
    func buttonPressed() {
        activateButton(bool: !hasSeen)
    }
    
    func activateButton(bool: Bool) {
        
        hasSeen = bool
        
        let title = bool ? "Seen" : "Not Seen"
        
        setTitle(title, for: .normal)
        
    }
}
