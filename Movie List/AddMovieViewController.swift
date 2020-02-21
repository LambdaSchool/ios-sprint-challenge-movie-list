//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lydia Zhang on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
protocol AddMovieDelegate {
    func movieAdd(movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var addedMovieNameLabel: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieToList(_ sender: UIButton) {
        guard let addedMovie = addedMovieNameLabel.text, !addedMovie.isEmpty else {
            return
        }
        
        let movies: Movie = Movie(name: addedMovie, isSeen: false)
        delegate?.movieAdd(movie: movies)
        self.navigationController!.popViewController(animated: true)
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
