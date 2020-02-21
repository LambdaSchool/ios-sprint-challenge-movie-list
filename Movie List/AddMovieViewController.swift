//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Bradley Diroff on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    @IBOutlet var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func movieButtonTapped(_ sender: Any) {
        
        guard let movieText = movieTextField.text else {return}
        
        let movie = Movie(name: movieText, seen: false)
        delegate?.movieWasAdded(movie)
        
        navigationController?.popViewController(animated: true)
    }
}
