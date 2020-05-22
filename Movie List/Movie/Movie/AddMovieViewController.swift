//
//  AddMovieViewController.swift
//  Movie
//
//  Created by Drew Miller on 5/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addNewMovie(movie: Movie)
}

class AddMovieViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var movieTitleOutlet: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieAction(_ sender: Any) {
        guard let title = movieTitleOutlet.text,
            !title.isEmpty else { return }
        var movie = Movie(movie: title, seen: false)
        
        delegate?.addNewMovie(movie: movie)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
 //   func textFieldShouldReturn(_ textView: UITextView) -> Bool {
        
 //   }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    
    
}
