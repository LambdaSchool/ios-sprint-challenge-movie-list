//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nikita Thomas on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieModelProtocol {
    var moviewModel: MovieModel?
    
    @IBOutlet weak var textField: UITextField!

    @IBAction func submitButton(_ sender: Any) {
        guard let text = textField.text else {return}
        moviewModel?.createMovie(name: text)
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
