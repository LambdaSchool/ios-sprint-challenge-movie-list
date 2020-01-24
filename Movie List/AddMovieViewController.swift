//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by John Thomas on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveMovie(_ sender: Any) {
        guard let name = movieTitle.text,
             !name.isEmpty else { return }
         let movie = Movie(name: name)
         delegate?.movieWasAdded(movie: movie)
         dismiss(animated: true, completion: nil)
        
    }
}


