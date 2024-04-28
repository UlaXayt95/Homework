//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 28.03.2024.
//

import UIKit

final class PostTableViewCell: UITableViewCell {
    
    
    
    static let id = "PostTableViewCell"
    
    private let photoView: UIImageView = {
        
        let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    private let author: UILabel = {
        let author = UILabel()
        author.translatesAutoresizingMaskIntoConstraints = false
        author.backgroundColor = .black
        author.contentMode = .scaleAspectFit
        return author
    }()
    private let descrip: UILabel = {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    private let like: UILabel = {
        let like = UILabel()
        like.translatesAutoresizingMaskIntoConstraints = false
        like.textColor = .black
        return like
    }()
    private let views: UILabel = {
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
            author.topAnchor.constraint(equalTo: topAnchor),
            author.leadingAnchor.constraint(equalTo: leadingAnchor),
            author.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            descrip.topAnchor.constraint(equalTo: author.bottomAnchor, constant: -16),
            descrip.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            like.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: -16),
            like.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            views.topAnchor.constraint(equalTo: descrip.bottomAnchor, constant: -16),
            views.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
            
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
