//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jon Bash on 2019-10-11.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasSaved(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieTitleField: UITextField!
    //@IBOutlet weak var seenSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelWasPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveWasPressed(_ sender: UIBarButtonItem) {
        guard let title = movieTitleField.text, !title.isEmpty else {
            print("Empty movie title field!")
            return
        }
        //let seen = seenSwitch.isOn
        let movie = Movie(title: title, seen: false)
        
        delegate?.movieWasSaved(movie)
    }
}
