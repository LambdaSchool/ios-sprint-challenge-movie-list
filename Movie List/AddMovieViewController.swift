//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_268 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var movieTF: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addTapped(_ sender: UIButton) {
        guard let title = movieTF.text,
                  !title.isEmpty else { return }

            let movie = Movie(title: title, seen: false)

        delegate?.movieAdded(movie: movie)
            navigationController?.popViewController(animated: true)
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
