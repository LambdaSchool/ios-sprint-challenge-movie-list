//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Chad Parker on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameLabel: UITextField!

    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        movieNameLabel.becomeFirstResponder()
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        guard let movieName = movieNameLabel.text,
            !movieName.isEmpty else { return }
        let movie = Movie(name: movieName)
        delegate?.movieWasAdded(movie)
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
