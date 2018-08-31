//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MoviePresenter {
    
    var movieController: MovieController?
    @IBOutlet weak var titleField: UITextField!
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitMovie(_ sender: Any) {
        
        guard let movieTitle = titleField.text else {return}
        movieController?.createMovie(name: movieTitle, seenState: false)
//        print(movieTitle)
//        print(movieController?.movies)
        view.endEditing(true)
        
        // Changes the tab controller to the table view (aka next tab)
        tabBarController?.selectedIndex = 1
        
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
