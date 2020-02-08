//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Claudia Contreras on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    //IBOutlets
    
    @IBOutlet var addMovieTextField: UITextField!
    @IBOutlet var addMovieButton: UIButton!
    
    //MARK: - Private Propoerty
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //IBAction
    @IBAction func addButtonTapped(_ sender: Any) {
        guard let title = addMovieTextField.text,
            !title.isEmpty else {return}
        
        let movie = Movie(name: title)
        delegate?.movieWasCreated(movie)
    }
}


