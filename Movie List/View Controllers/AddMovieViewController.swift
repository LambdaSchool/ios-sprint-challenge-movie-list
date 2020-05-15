//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {

    @IBOutlet weak var seenSwitch: UISwitch!
    @IBOutlet weak var movieTitle: UITextField!
    
    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        guard let movieTitle = movieTitle.text
            else { return }
        
        let movie: Movie = Movie(title: movieTitle, haveSeen: seenSwitch.isOn)
        
        moviesList.append(movie)
        
        delegate?.movieWasAdded(movie)
        dismiss(animated: true, completion: nil)
        
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

/*
extension AddMovieViewController: AddMovieDelegate {
    func movieWasAdded(_ movie: Movie) {
        guard let movie = movie.title, movie != "" else {
            return false
        }
    return true
    }
*/
    
