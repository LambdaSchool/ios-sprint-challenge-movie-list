//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        guard let addMovieText = addMovieTextField.text,
            !addMovieText.isEmpty else { return }
        
        let movie = Movie(name: addMovieText)
        
        delegate?.movieWasAdded(movie)
    }
}
