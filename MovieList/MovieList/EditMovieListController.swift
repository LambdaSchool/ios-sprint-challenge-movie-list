//
//  EditMovieListController.swift
//  MovieList
//
//  Created by Sameera Leola on 11/16/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit

class EditMovieListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func seen(_ sender: UIButton) {
        
    }
    
    //Add functionality to delete movies from movies array, edit movies
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieData.shared.titleCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTitle", for: indexPath)
        let title = MovieData.shared.itemTitle(at: indexPath.row)
        
        //Set up cell with the model
        cell.textLabel?.text = title
        
        return cell
    }
    
      //Delete functionality
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //Make sure we are using the delete editing style
        guard editingStyle == .delete else {return}
        //first update the table model then do the tableView.  It will be an error if we don't
        MovieData.shared.removeMovie(at: indexPath.row)
        //Now we need to update the tableview
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }

    //Edit move functionality
//    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        //Update the model
//        AnimalModel.shared.moveAnimal(from: sourceIndexPath.row, to: destinationIndexPath.row)
//        //Update Table View
//        //This is a more efficient way to update the tableview instead of reloading the entire table
//        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
//    }
    
    
    
    
    
    
    @IBAction func editMovieList(_ sender: Any) {
    }
    
    
}
