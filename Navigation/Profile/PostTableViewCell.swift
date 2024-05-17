//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 28.03.2024.
//

import UIKit


final public class PostTableViewCell: UITableViewCell {
    
    
    
    static let id = "PostTableViewCell"
    
    let photoView: UIImageView = {
        
        let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        return photo
    }()
    let author: UILabel = {
        let author = UILabel()
        author.translatesAutoresizingMaskIntoConstraints = false
        author.textColor = .black
        author.contentMode = .scaleAspectFit
        return author
    }()
    let descrip: UILabel = {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    let like: UILabel = {
        let like = UILabel()
        like.translatesAutoresizingMaskIntoConstraints = false
        like.textColor = .black
        return like
    }()
    let views: UILabel = {
        let views = UILabel()
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
    
    
    private func setupUI() {
        addSubview(photoView)
        addSubview(descrip)
        addSubview(author)
        addSubview(views)
        addSubview(like)
        
        
        
        
        
        NSLayoutConstraint.activate([
            author.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            author.leadingAnchor.constraint(equalTo: leadingAnchor),
            author.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            photoView.topAnchor.constraint(equalTo: author.bottomAnchor),
            photoView.leadingAnchor.constraint(equalTo: leadingAnchor),
            photoView.trailingAnchor.constraint(equalTo: trailingAnchor),
            photoView.bottomAnchor.constraint(equalTo: descrip.topAnchor),
            
            descrip.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 16),
            descrip.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            like.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: 16),
            like.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            //like.bottomAnchor.constraint(equalTo: author.topAnchor),
            
            views.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: 16),
            views.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16),
            //views.bottomAnchor.constraint(equalTo: author.topAnchor),
            
        ])
    }
    
    func configure(with post: Post) {
        let postImage = UIImage(named: post.image)
        photoView.image = postImage
        descrip.text = post.description
        author.text = post.author
        views.numberOfLines = post.views
        like.numberOfLines = post.likes
    }
}
