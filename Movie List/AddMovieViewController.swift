//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Gi Pyo Kim on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTabbed(_ sender: Any) {
        guard let movieName = movieNameTextField.text, !movieName.isEmpty else {return}
        
        let movie = Movie(name: movieName, hasBeenSeen: false)
        delegate?.movieWasAdded(movie)
    }
    
    

}
