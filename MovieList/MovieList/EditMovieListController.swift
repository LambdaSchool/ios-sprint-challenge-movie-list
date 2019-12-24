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
        
        //Make this ViewController the UITableView delegate and data source
        tableView.dataSource = self
        tableView.delegate = self
        
        //Set the background image
        let blueSmoothBG = UIImage(named: "bluesmooth.png")
        let blueSmootBackground = UIImageView(image: blueSmoothBG)
        self.tableView.backgroundView = blueSmootBackground
        
        //Initial load of the movie list
        MovieData.shared.loadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Refresh the movie list in the tableView
        self.tableView.reloadData()
    }
    
    //Get the count of the movie titles in the movieslist array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieData.shared.titleCount()
    }
    
    //Populate the tableView cell with the movie titles
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTitle", for: indexPath)
        
        //Make the cell background clear so background image will show
        cell.backgroundColor = .clear
        
        //Get the movie title
        let title = MovieData.shared.itemTitle(at: indexPath.row)
        
        //Display the movie title to the cell
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

    //Move row  functionality
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        MovieData.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    
    @IBAction func editMovieList(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingList(_:)))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc
    func stopEditingList(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editMovieList(_:)))
        navigationItem.rightBarButtonItem = editButton
    }
    
    //Add seen/unseen button to cell
    @IBAction func seenButton(_ sender: UIButton) {
        sender.setTitle("Seen", for: .normal)
        sender.setTitleColor(.gray, for: .normal)
    }
    
}
