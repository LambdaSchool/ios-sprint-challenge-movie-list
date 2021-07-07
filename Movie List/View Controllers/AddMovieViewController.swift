//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Alex Shillingford on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        if let movieTitle = addMovieTextField.text, !movieTitle.isEmpty {
            let newMovie = Movie(title: movieTitle, isSeen: false)
            delegate?.movieWasCreated(newMovie)
        }
        
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
