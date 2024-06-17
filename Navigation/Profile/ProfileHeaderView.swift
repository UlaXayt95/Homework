//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//

import Foundation
import UIKit



class ProfileHeaderView: UIView {
    
   
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.addTarget(ProfileHeaderView.self, action: #selector(statusTextChanged), for: .editingChanged)
        textField.layer.cornerRadius = 12
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.masksToBounds = false
        textField.placeholder = "Type your text"
        return textField
    }()
    
    lazy var actioButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.cornerRadius = 12
        button.layer.shadowOffset = CGSize(width: 7, height: 7)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.systemBlue.cgColor
        button.layer.masksToBounds = false
        return button
    }()
    let nameLabel :UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dirty Lebedev"
        label.textColor = .black
        return label
    }()
    let statusLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .gray
        text.text = "Waitinig for Lebedev"
        return text
    }()
    let catView:UIImageView = {
        let image = UIImage(named: "lebedev")
        let catView = UIImageView(image: image)
        catView.translatesAutoresizingMaskIntoConstraints = false
        catView.layer.masksToBounds = true
        catView.layer.contentsGravity = .resizeAspect
        catView.layer.cornerRadius = 60
        catView.layer.borderColor = UIColor.white.cgColor
        catView.layer.borderWidth = 3.0
        catView.clipsToBounds = true
        return catView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        setupLayout()
    }
    required init?(coder: NSLayoutConstraint) {
        super.init(frame: CGRect())
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func statusTextChanged(_ textField: UITextField) {
        
    }
    
    @objc func buttonTap() {
        print("Статус")
    }
    func setupLayout(){
        addSubview(actioButton)
        addSubview(nameLabel)
        addSubview(catView)
        addSubview(statusLabel)
        addSubview(textField)
        
       
        
        
        NSLayoutConstraint.activate([
            actioButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
            actioButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            actioButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            actioButton.heightAnchor.constraint(equalToConstant:50),
            actioButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 129),
            nameLabel.leadingAnchor.constraint(equalTo: catView.trailingAnchor, constant: 16 ),
            nameLabel.heightAnchor.constraint(equalToConstant: 18),
            nameLabel.widthAnchor.constraint(equalToConstant: 100),
            
            catView.topAnchor.constraint(equalTo: topAnchor , constant: 112),
            catView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            catView.heightAnchor.constraint(equalToConstant: 120),
            catView.widthAnchor.constraint(equalToConstant: 120),
            
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            statusLabel.leadingAnchor.constraint(equalTo: catView.trailingAnchor, constant: 16),
            statusLabel.heightAnchor.constraint(equalToConstant: 14),
            statusLabel.widthAnchor.constraint(equalToConstant: 200),
            
            textField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16),
            textField.leadingAnchor.constraint(equalTo: catView.trailingAnchor, constant: 16),
            textField.heightAnchor.constraint(equalToConstant: 40),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
            
        ])
        
    }
    
    
}
