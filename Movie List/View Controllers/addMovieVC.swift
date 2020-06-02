//
//  addMovieVC.swift
//  Movie List
//
//  Created by Norlan Tibanear on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieVCDelegate {
    func movieWasAdded(movie: Movie)
}

class addMovieVC: UIViewController {
    
    // Outlets
    @IBOutlet var addMovieTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    // Variables
    var delegate: addMovieVCDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        addButton.layer.cornerRadius = 8
        addButton.clipsToBounds = true
    }
    
    @IBAction func addButton_TouchUpInside(_ sender: UIButton) {
        guard let newTitle = addMovieTextField.text, !newTitle.isEmpty else { return }
        
        addButton.isEnabled = true
        let addMovie = Movie(title: newTitle, seen: false)
        delegate?.movieWasAdded(movie: addMovie)
        
        addMovieTextField.text = ""
    }
    

} // END
