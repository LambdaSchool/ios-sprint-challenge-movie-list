//
//  MovieViewController.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard isViewLoaded else { return }
        guard let movieText = movieTextField.text, !movieText.isEmpty else { return }
        movieController?.create(movie: movieText)


    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }



    @IBOutlet weak var movieTextField: UITextField!
    var movieController: MovieController?
    var movie: Movie?
    


}
