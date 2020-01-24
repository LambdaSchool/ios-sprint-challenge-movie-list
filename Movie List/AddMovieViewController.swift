//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by beth on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!

    var delegate: AddMovieDelegate?


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func addTapped(_ sender: UIButton) {
        guard let title = movieTextField.text,
                  !title.isEmpty else { return }

        let movie = Movie(title: title, hasSeen: false)

        delegate?.movieWasAdded(movie)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
