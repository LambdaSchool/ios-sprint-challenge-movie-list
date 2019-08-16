//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Alex Rhodes on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class addMovieViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var movieController: MovieController?
    
    var tableView: UITableView?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var directorTextField: UITextField!
    @IBOutlet weak var uploadImageButton: UIButton!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var addMovieButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    func setViews() {
        view.backgroundColor = .black
        
        titleTextField.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        titleTextField.textColor = .white
        
        directorTextField.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        directorTextField.textColor = .white
        
        uploadImageButton.backgroundColor = #colorLiteral(red: 0, green: 0.9343987703, blue: 0.7370827794, alpha: 1)
        uploadImageButton.layer.cornerRadius = 12
        uploadImageButton.setTitle("UPLOAD PHOTO", for: .normal)
        uploadImageButton.setTitleColor(.white, for: .normal)
        
        
        addMovieButton.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0.3244272768, alpha: 1)
        addMovieButton.layer.cornerRadius = 12
        addMovieButton.setTitle("ADD MOVIE", for: .normal)
        addMovieButton.setTitleColor(.white, for: .normal)

        
        datePicker.backgroundColor = .black
        datePicker.setValue(UIColor.white, forKey: "textColor")
        
        releaseDateLabel.text = "RELEASE DATE"
        releaseDateLabel.textColor = .white
        releaseDateLabel.font = UIFont(name: "System Bold", size: 30)
        
        
        imageView.backgroundColor = .gray
        
        
    }
    
    @IBAction func uploadImageButtonTapped(_ sender: UIButton) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Please select your photo source.", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action: UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            } else {
                let alert =  UIAlertController(title: "Camera Unavailable", message: "We were unable to gain access to your camera.", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)
                
            }
            
            
        }))
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action: UIAlertAction) in
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil ))
        
        present(actionSheet, animated: true, completion: nil)
        
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageView.image = selectedImage
        
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let title = titleTextField.text,
        let director = directorTextField.text,
            let datePicker = datePicker,
            let image = imageView.image else {return}
        movieController?.addMovie(name: title, director: director, date: datePicker.date, image: image)
        tableView?.reloadData()
        dismiss(animated: true, completion: nil)
        
    }
}
