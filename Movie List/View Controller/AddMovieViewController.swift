//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Uptiie on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var enterMovieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var delegate: AddMovieDelegate?
    }
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movie = enterMovieTextField.text else { return }
        
        var movie = 
        
    }
}
