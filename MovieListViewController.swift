//
//  MovieListViewController.swift
//  OneMoreTime
//
//  Created by Lambda_School_Loaner_268 on 2/3/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit
var movieList: [Movie] = [Movie(title: "Metal Gear")]

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellToAdd" {
            if let addMovieVC = segue.destination as? AddMovieViewController  {
                addMovieVC.delegate = self as? AddMovieDelegate
            }
    }

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieListTableViewCell else {return UITableViewCell()}
        let movie = movieList[indexPath.row]
        cell.textLabel?.text = movie.title
        return cell
    }
    func movieWasAdded(_ movie: Movie) {
            movieList.append(movie)
            tableView.reloadData()
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
     



                // Do any additional setup after loading the view.
        

