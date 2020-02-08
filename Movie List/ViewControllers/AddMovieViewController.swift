//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_259 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: UITextFieldDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var addMovieTextField: UITextField!
    
    
    // MARK: IBActions
    @IBAction func addTapped(_ sender: UIButton!) {
        guard let movieName = addMovieTextField.text,
            !movieName.isEmpty else { return }
        let movie: Movie = Movie(movieName: movieName)
        
        delegate?.movieWasAdded(movie)
    }
    
    
    // MARK: Properties
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        //addMovieTextField{$0.delegate = self}
    }

}


