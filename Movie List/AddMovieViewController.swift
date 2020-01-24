//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Chris Gonzales on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    var delegate: AddMovieDelegate?

    @IBOutlet weak var MovieTextField: UITextField!
    
    @IBAction func SaveButton(_ sender: UIButton) {
        guard let movieTitle = MovieTextField.text else {return}
        let newMovie = Movie(title: "\(movieTitle)")
        print("\(newMovie)")
        delegate?.movieWasAdded(newMovie)
        self.navigationController?.popViewController(animated: true)    }
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
