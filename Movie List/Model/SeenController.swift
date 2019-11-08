//
//  SeenController.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SeenController {
    
    var switches: [Movie] = []
    
    func toggleSeen(seenSwitch: Movie) {
        guard let lightIndex = switches.firstIndex(of: seenSwitch) else { return }
        switches[lightIndex].hasSeen.toggle()
    }
}
