//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nelson Gonzalez on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addButton(_ sender: UIButton) {
        guard let text = textView.text, !text.isEmpty else {return}
        
        MovieViewModel.shared.addMovie(text)
     textView.text = nil
    }
    

}
