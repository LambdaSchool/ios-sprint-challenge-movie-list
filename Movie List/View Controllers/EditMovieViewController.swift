//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieWasEdited(_ movie: Movie)
}

class EditMovieViewController: UIViewController {

    @IBOutlet weak var movieEditTextField: UITextField!
    
    var movie: Movie?
    var delegate: EditMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneEditTapped(_ sender: UIBarButtonItem) {
        guard let movie = movie else { return }
        
        // Only called if the text field changes else no changes were made
        if movie.name != movieEditTextField.text {
            delegate?.movieWasEdited(movie)
        }
        
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieEditTextField.text = movie.name
    }
}
