//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 10.05.2024.
//

import Foundation
import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private lazy var photos: UILabel = {
        let photos = UILabel()
        photos.textColor = .black
        return photos
    }()
    
    
    private lazy var imageView0: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var imageView1: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var imageView2: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var imageView3: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init?(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    func setup(){
        addSubview(imageView0)
        addSubview(imageView1)
        addSubview(imageView2)
        addSubview(imageView3)
        
        NSLayoutConstraint.activate([
            imageView0.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            imageView0.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            imageView0.trailingAnchor.constraint(equalTo: imageView1.leadingAnchor, constant: 8),
            imageView0.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12),
            
            imageView1.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            imageView1.leadingAnchor.constraint(equalTo: imageView0.trailingAnchor, constant: 8),
            imageView1.trailingAnchor.constraint(equalTo: imageView2.leadingAnchor, constant: 8),
            imageView1.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12),
            
            imageView2.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            imageView2.leadingAnchor.constraint(equalTo: imageView1.trailingAnchor, constant: 8),
            imageView2.trailingAnchor.constraint(equalTo: imageView3.leadingAnchor, constant: 8),
            imageView2.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12),
            
            imageView3.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            imageView3.leadingAnchor.constraint(equalTo: imageView2.trailingAnchor, constant: 8),
            imageView3.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12),
            imageView3.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12),
            
            
        
        ])
    }
}
