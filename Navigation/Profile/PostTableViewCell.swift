//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 28.03.2024.
//

import UIKit
import StorageService
import iOSIntPackage


final public class PostTableViewCell: UITableViewCell {
    
    
    
    static let id = "PostTableViewCell"
    
    let photoView: UIImageView = {
        
        let photo = UIImageView()
        photo.backgroundColor = .black
        photo.contentMode = .scaleAspectFit
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    let author: UILabel = {
        let author = UILabel()
        author.textColor = .black
        author.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        author.numberOfLines = 2
        author.translatesAutoresizingMaskIntoConstraints = false
        return author
    }()
    let descrip: UILabel = {
        let description = UILabel()
        description.textColor = .black
        description.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        description.numberOfLines = 0
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    let like: UILabel = {
        let like = UILabel()
        like.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        like.textColor = .black
        like.translatesAutoresizingMaskIntoConstraints = false
        return like
    }()
    let views: UILabel = {
        let views = UILabel()
        views.textColor = .black
        views.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func meth2(completion:UIImage?){
    }
    func meth (){
        let originalImage = UIImage(named: "image12") ?? UIImage()
        let meth = ImageProcessor()
        meth.processImage(sourceImage: originalImage, filter: .bloom(intensity: 0.5)){_ in }
    }
    
    
    
    private func setupUI() {
        addSubview(like)
        addSubview(author)
        addSubview(photoView)
        addSubview(views)
        addSubview(descrip)
        
        
        NSLayoutConstraint.activate([
            author.topAnchor.constraint(equalTo: topAnchor, constant: 16),
                        author.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                        author.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                        
                        photoView.topAnchor.constraint(equalTo: author.bottomAnchor),
                        photoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                        photoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                        photoView.bottomAnchor.constraint(equalTo: descrip.topAnchor),
                        
                        descrip.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 16),
                        descrip.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                        
                        like.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: 16),
                        like.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                        
                        views.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: 16),
                        views.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure(with post: Post) {
        let postImage = UIImage(named: post.image)
        photoView.image = postImage
        descrip.text = post.description
        author.text = post.author
        views.text = "View: \(post.views)"
        like.text = "Like: \(post.likes)"
    }
}
