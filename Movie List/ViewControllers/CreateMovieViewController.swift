//
//  CreateMovieViewController.swift
//  Movie List
//
//  Created by Violet Lavender Love on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol CreateMovieDelegate {
    
    func createMovie(movie: Movie)
    
}


class CreateMovieViewController: UIViewController {

    @IBOutlet var titleTextField: UITextField!
    
    var delegate: CreateMovieDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func createMovieButton(_ sender: Any) {
        guard let title = titleTextField.text,
            !title.isEmpty,
        let delegate = delegate else  {
            print("create movie button tapped")
            return
        }
        let movie = Movie(title: title)
        delegate.createMovie(movie: movie)
        dismiss(animated: true, completion: nil
        )
        print("create movie button tapped")
    }

}
