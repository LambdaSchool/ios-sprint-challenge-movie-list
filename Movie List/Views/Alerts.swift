//
//  Alerts.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class Alerts {
    // TODO: put other alert in here as well?
    static var EmptyField: UIAlertController {
        get {
            let alert = UIAlertController(title: "Required field empty!", message: "'Title' field must be non-empty.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .cancel,
                handler: nil
            ))
            return alert
        }
    }
}
