//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Eoin Lavery on 05/08/2019.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    //Declare UI Elements
    @IBOutlet weak var nameTextField: UITextField!
    
    //Declare Delegate property
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addMovieTapped(_ sender: Any) {
        guard let name = nameTextField.text else { return }
        let newMovie = Movie(name: name)
        delegate?.movieWasAdded(newMovie)
        dismiss(animated: true, completion: nil)
    }
}
