//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Juan M Mariscal on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: IBOutlets
    
    @IBOutlet weak var enterMovieTextField: UITextField!
    @IBOutlet weak var addMovieBtn: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //[enterMovieTextField].forEach { $0.delegate = self }
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movie = enterMovieTextField.text, !movie.isEmpty else { return }
        
        let movieListed = Movie(movieName: [movie], movieSeenBool: false)
        
        delegate?.movieWasAdded(movieListed)
        
        self.dismiss(animated: true, completion: nil)
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

