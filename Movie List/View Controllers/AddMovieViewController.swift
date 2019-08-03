//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Joel Groomer on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    @IBOutlet weak var txtMovieTitle: UITextField!
    
    var delegate: MovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let title = txtMovieTitle.text else { return }
        delegate?.addMovie(Movie(title: title, seen: false))
    }
}
