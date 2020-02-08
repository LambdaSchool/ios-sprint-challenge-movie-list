//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_241 on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func MovieWasCreated(_ mov: Movie)
}

class AddNewMovieViewController: UIViewController {
    
    // Mark - IBOutlets
    @IBOutlet weak var movieTextField: UITextField!
    

    override func viewDidLoad() {
           super.viewDidLoad()
          
           

           // Do any additional setup after loading the view.
       }
       
       
       // Mark - Private Properties
       var delegate: AddMovieDelegate?
       
       
       
       
     
      
       
       // Mark - IBActions
       @IBAction func addMovieButton(_ sender: Any) {
           guard let movie = movieTextField.text else { return }
           
           var film = Movie(name: movie)
           
           delegate?.MovieWasCreated(film)
           self.dismiss(animated: true)
           
               
               
           }
       
       }
       
     
       
       /*
       // MARK: - Navigation

       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
       */


