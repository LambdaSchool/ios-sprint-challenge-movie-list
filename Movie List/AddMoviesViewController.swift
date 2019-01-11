//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class AddMovieViewController : UIViewController{
    @IBOutlet weak var textField : UITextField!
    @IBAction func AddMovie(_ sender: Any) {
        let movie = Movie()
        movie.name = textField.text!
    }
}
