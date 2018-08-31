//
//  CreateMovieViewController.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class CreateMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addMovie(_ sender: Any) {
        guard let title = movieTextField.text else { return }
        movieController?.createNewMovie(title: title)
        print(movieController?.movies.count)
        //movieTextField.text = ""
    }
    
    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
    
    var movieController: MovieController?
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
