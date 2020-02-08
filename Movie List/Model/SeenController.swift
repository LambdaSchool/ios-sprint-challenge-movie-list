//
//  SeenController.swift
//  Movie List
//
//  Created by Patrick Millet on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class SeenController {
    var seen: [Movie] = []
    
    
    func toggleSeen(hasSeen: Movie) {
        guard let seenIndex = seen.firstIndex(of: hasSeen) else { return }
        seen[seenIndex].hasSeen.toggle()
    }
    
    func swipeTo(delete: Movie) {
        guard let indexPath = seen.firstIndex(of: delete) else { return }
        seen.remove(at: indexPath)
    }
}


