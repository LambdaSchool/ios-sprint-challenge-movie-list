//
//  AddMovieViewController.swift
//  movieListREDO
//
//  Created by B$hady on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addedMovie(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text, !movieTitle.isEmpty else { return }
        let movie = Movie(title: movieTitle)
        delegate?.addedMovie(movie)
        navigationController?.popViewController(animated: true)
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
}
