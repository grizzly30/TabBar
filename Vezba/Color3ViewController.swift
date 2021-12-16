//
//  Color3ViewController.swift
//  Vezba
//
//  Created by Mihailo Jovanovic on 13.12.21..
//

import UIKit

class Color3ViewController: UIViewController {
    
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var tableview: UITableView!
    
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    //let reachability = Reachability()!
    
    var posts: [Post] = [
        Post(name: "Mike", text: "Text 1", image: UIImage(named: "DiceThree")),
        Post(name: "Ben", text: "Text 2", image: UIImage(named: "DiceThree")),
        Post(name: "Jerry", text: "Text 3", image: UIImage(named: "DiceThree")),
        Post(name: "Dan", text: "Text 4", image: UIImage(named: "DiceThree")),
        Post(name: "Rose", text: "Text 5", image: UIImage(named: "DiceThree")),
        Post(name: "James", text: "Text 6", image: UIImage(named: "DiceThree"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapProfileImageRecognizer = UITapGestureRecognizer(target: self, action: #selector(profileImageTapped))
        profileImageView.isUserInteractionEnabled = true
        profileImageView.addGestureRecognizer(tapProfileImageRecognizer)
        
        let tapCoverImageRecognizer = UITapGestureRecognizer(target: self, action: #selector(coverImageTapped))
        coverImageView.isUserInteractionEnabled = true
        coverImageView.addGestureRecognizer(tapCoverImageRecognizer)
//
//        let vc = UIImagePickerController()
//        vc.sourceType = .camera
//        vc.allowsEditing = true
//        vc.delegate = self
//        present(vc, animated: true)
        
        //descriptionLabel.text = ""
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.numberOfLines = 0
        
        followButton.backgroundColor = .clear
        followButton.layer.cornerRadius = 5
        followButton.layer.borderWidth = 1
        followButton.layer.borderColor = UIColor.black.cgColor
        
        coverImageView.image = UIImage(named: "background")
        profileImageView.image = UIImage(named: "ball3")
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
        profileImageView.backgroundColor = .red
        
        tableview.dataSource = self
        tableview.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
    @objc func profileImageTapped() {
        print("strava")
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
    @objc func coverImageTapped() {
        let vc1 = UIImagePickerController()
        vc1.sourceType = .photoLibrary
        vc1.allowsEditing = true
        vc1.delegate = self
        present(vc1, animated: true)
    }
}

extension Color3ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! PostCell
        cell.nameLabel.text = posts[indexPath.row].name
        cell.postTextLabel.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        
        return cell
    }

}
extension Color3ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if picker.sourceType == .camera {
                profileImageView.image = image
            }else if picker.sourceType == .photoLibrary{
                coverImageView.image = image
            }
            
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
