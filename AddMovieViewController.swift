//
//  AddMovieViewController.swift
//  OneMoreTime
//
//  Created by Lambda_School_Loaner_268 on 2/3/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
      @IBOutlet weak var movieTitle: UITextField!
    var delegate: AddMovieDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    @IBAction func addMovieTapped(_ sender: Any) {
        if let text = movieTitle.text, !text.isEmpty {
            let movie = Movie(title: text)
            delegate?.movieWasAdded(movie)
            dismiss(animated: true, completion: nil)
        
        }
    
    }
}
    
