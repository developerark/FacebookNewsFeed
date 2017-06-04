//
//  ViewController.swift
//  FacebookNewsFeed
//
//  Created by Aswin Raj Kharel on 6/4/17.
//  Copyright © 2017 Aswin Raj Kharel. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var posts = [Post]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "News Feed"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
        let samplePost1 = Post(posterName: "Mark Zuckerberg", posterImage: UIImage(named: "mark")!, postImage: UIImage(named: "post")!, postContent: "Meanwhile in Los Angeles", date: "December 17, 2016", location: "Los Angeles", likes: 40509, comments: 10700)
        let samplePost2 = Post(posterName: "Mark Zuckerberg", posterImage: UIImage(named: "mark")!, postImage: UIImage(named: "post")!, postContent: "Meanwhile in Los Angeles", date: "December 17, 2016", location: "Los Angeles", likes: 40509, comments: 10700)
        let samplePost3 = Post(posterName: "Mark Zuckerberg", posterImage: UIImage(named: "mark")!, postImage: UIImage(named: "post")!, postContent: "Meanwhile in Los Angeles", date: "December 17, 2016", location: "Los Angeles", likes: 40509, comments: 10700)
        let samplePost4 = Post(posterName: "Mark Zuckerberg", posterImage: UIImage(named: "mark")!, postImage: UIImage(named: "post")!, postContent: "Meanwhile in Los Angeles", date: "December 17, 2016", location: "Los Angeles", likes: 40509, comments: 10700)
        let samplePost5 = Post(posterName: "Mark Zuckerberg", posterImage: UIImage(named: "mark")!, postImage: UIImage(named: "post")!, postContent: "Meanwhile in Los Angeles", date: "December 17, 2016", location: "Los Angeles", likes: 40509, comments: 10700)
        self.posts.append(samplePost1)
        self.posts.append(samplePost2)
        self.posts.append(samplePost3)
        self.posts.append(samplePost4)
        self.posts.append(samplePost5)
       //self.collectionView?.backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        self.collectionView?.backgroundColor = UIColor(red: 223/255, green: 227/255, blue: 238/255, alpha: 1)
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: "cellID")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let post = posts[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! CustomCell
        cell.posterImageView.image = post.posterImage
        cell.posterNameLabel.text = post.posterName
        cell.dateLocation.text = post.date! + " . " + post.location!
        cell.postTitle.text = post.postContent
        cell.postImageView.image = post.postImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 350)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
}

class CustomCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    var posterImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    var posterNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    var dateLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints  = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 0.9)
        return label
    }()
    
    var postTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    var postImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    var interactionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 0.9)
        label.text = "10.7K Likes 2.2K Comments"
        return label
    }()
    
    var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Like", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 0.9), for: .normal)
        return button
    }()
    
    var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Comment", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 0.9), for: .normal)
        return button
    }()
    
    var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Share", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 0.9), for: .normal)
        return button
    }()
    
    func setupViews(){
        self.backgroundColor = .white
        self.addSubview(self.posterImageView)
        self.addSubview(self.posterNameLabel)
        self.addSubview(self.dateLocation)
        self.addSubview(self.postTitle)
        self.addSubview(self.postImageView)
        self.addSubview(self.interactionLabel)
        self.addSubview(self.likeButton)
        self.addSubview(self.commentButton)
        self.addSubview(self.shareButton)
        
//        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-6-[piv(50)]-6-[pnl]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["piv": posterImageView, "pnl": posterNameLabel]))
//        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-6-[piv(50)]-6-[dl(70)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["piv": posterImageView, "dl": dateLocation]))
//        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-6-[piv(50)]-4-[dl(20)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["piv": posterImageView, "dl": dateLocation]))

        NSLayoutConstraint.activate([
            posterImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6),
            posterImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 6),
            posterImageView.widthAnchor.constraint(equalToConstant: 50),
            posterImageView.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        NSLayoutConstraint.activate([
            posterNameLabel.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: 6),
            posterNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 6),
            posterNameLabel.widthAnchor.constraint(equalToConstant: 150),
            posterNameLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            dateLocation.topAnchor.constraint(equalTo: posterNameLabel.bottomAnchor, constant: 6),
            dateLocation.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: 6),
            dateLocation.widthAnchor.constraint(equalToConstant: 300),
            dateLocation.heightAnchor.constraint(equalToConstant: 20)
            ])

        NSLayoutConstraint.activate([
            postTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6),
            postTitle.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 6),
            postTitle.rightAnchor.constraint(equalTo: self.rightAnchor),
            postTitle.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            postImageView.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 0),
            postImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            postImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            postImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50)
            ])
        
        NSLayoutConstraint.activate([
            interactionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 4),
            interactionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6)
            ])
        
        NSLayoutConstraint.activate([
            commentButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            commentButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -6)
            ])
        
        NSLayoutConstraint.activate([
            likeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -6),
            likeButton.centerXAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.15)
            ])
        
        NSLayoutConstraint.activate([
            shareButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -6),
            shareButton.centerXAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.8)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

