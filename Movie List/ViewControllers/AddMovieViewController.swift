//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Niranjan Kumar on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded (_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleField: UITextField!
    
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let movieTitle = movieTitleField.text, !movieTitle.isEmpty else { return }
        
        let newMovie = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(newMovie)
        navigationController?.popViewController(animated: true)
        
        
    }

}
