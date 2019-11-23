//
//  MovieAddViewController.swift
//  Movie List
//
//  Created by LambdaSchoolVM_Catalina on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ flix: Movie)
}

class MovieAddViewController: UIViewController {

    //iboutlets
    @IBOutlet weak var movieNameField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
//ib Actions
    
    @IBAction func addMovieBtnPressed(_ sender: UIButton) {
        guard let movieName = movieNameField.text,
            !movieName.isEmpty else { return }
        
        var flix = Movie(movieName: movieName, seen: true)
        
        if let movieName = movieNameField.text,
            !movieName.isEmpty {
            flix.movieName.append(movieName)
        }
        delegate?.movieWasAdded(flix)
        dismiss(animated: true, completion: nil)
    }
    
}

