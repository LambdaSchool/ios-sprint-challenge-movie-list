//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Zack Larsen on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

//protocol MovieListDelegate {
//func movieWasAdded(_movie: Movie ) {
//}

class addMovieViewController: UIViewController {

    @IBOutlet weak var moveToList: UITextField!
    
    var movieController: MovieController?
//    var delegate: MovieListDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let enterMovieTitle = moveToList.text,
            !enterMovieTitle.isEmpty else { return }
        let movie = Movie(name: enterMovieTitle)
        movieController?.addMovie(movie: movie)
        
        navigationController?.popViewController(animated: true)
    }
}
    
    
    
    
    
    
    
    
    
    
//    extension addMovieViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if let text = textField.text,
//            !text.isEmpty {
//            switch textField {
//            case moveToList:
               
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


