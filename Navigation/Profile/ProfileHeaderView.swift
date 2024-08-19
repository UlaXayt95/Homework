//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    //let image = UIImage(named: "lion")!
    

    

   

    lazy var actioButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        button.backgroundColor = .systemOrange
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        return button
        }()
    let label :UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dirty Lebedev"
        label.textColor = .black
        return label
    }()
    let textView: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Waitinig for Lebedev"
        text.textColor = .black
        return text
    }()
    
    
    let catView:UIImageView = {
        let image = UIImage(named: "lebedev")
        let catView = UIImageView(image: image)
        //catView.clipsToBounds = true
        //let image = UIImage(named: "lion")
        catView.translatesAutoresizingMaskIntoConstraints = false
        //catView.layer.contents = UIImage(named: "lion")?.cgImage
        catView.layer.masksToBounds = true
        catView.layer.contentsGravity = .resizeAspect
        catView.layer.cornerRadius = 60
        catView.layer.borderColor = UIColor.white.cgColor
        catView.layer.borderWidth = 3.0
        catView.clipsToBounds = true
        //catView.image = image
        
        return catView
    }()
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        
      
        
        
      
        
        
        
        
    }
    
    required init?(coder: NSLayoutConstraint) {
        super.init(frame: CGRect())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func buttonTap() {
        print("Статус")
    }
   
    func setupLayout(){
       addSubview(actioButton)
       addSubview(label)
       addSubview(catView)
       addSubview(textView)
       
        
   
      
       
        
        NSLayoutConstraint.activate([
            actioButton.topAnchor.constraint(equalTo: catView.bottomAnchor, constant: 16),
            actioButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            actioButton.heightAnchor.constraint(equalToConstant:50),
            actioButton.widthAnchor.constraint(equalToConstant: 360),
            actioButton.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 34),
        
            
            
            label.topAnchor.constraint(equalTo: topAnchor, constant: 129),
            label.leadingAnchor.constraint(equalTo: catView.trailingAnchor, constant: 16 ),
            label.heightAnchor.constraint(equalToConstant: 18),
            label.widthAnchor.constraint(equalToConstant: 100),
            
            catView.topAnchor.constraint(equalTo: topAnchor , constant: 112),
            catView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            catView.heightAnchor.constraint(equalToConstant: 120),
            catView.widthAnchor.constraint(equalToConstant: 120),
            
            //textView.bottomAnchor.constraint(equalTo: actioButton.topAnchor, constant: 34),
            textView.leadingAnchor.constraint(equalTo: catView.trailingAnchor, constant: 16),
            textView.heightAnchor.constraint(equalToConstant: 14),
            textView.widthAnchor.constraint(equalToConstant: 200)
        
        ])
    }
}
