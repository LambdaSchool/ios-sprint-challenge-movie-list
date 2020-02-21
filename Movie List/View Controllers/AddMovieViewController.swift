//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Karen Rodriguez on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {

    @IBOutlet weak var newMovieTextField: UITextField!
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let delegate = delegate,
            let title = newMovieTextField.text else {return}
        let newMovie = Movie(name: title, isSeen: false)
        delegate.movieWasAdded(newMovie)
    }
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
