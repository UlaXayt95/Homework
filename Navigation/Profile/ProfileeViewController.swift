//
//  File.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//
import Foundation
import UIKit

class ProfileeViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()
    let appearance = UINavigationBarAppearance()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appearance.backgroundColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        view.backgroundColor = .lightGray
        title = "Profile"
        
        setupLayout()
    }
    
    let buttonPress: UIButton = {
        let myButton = UIButton(frame: CGRect(x: 150, y: 340, width: 100, height: 50))
        myButton.setTitle("Button", for: .normal)
        myButton.backgroundColor = .blue
        myButton.layer.cornerRadius = 12
        myButton.layer.masksToBounds = true
        myButton.addTarget(ProfileeViewController.self, action: #selector(buttonAction), for: .touchUpInside)
        return myButton
    }()
    @objc func buttonAction(){}
    
    func setupLayout() {
        let saveAreaGuide = view.safeAreaLayoutGuide
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        profileHeaderView.addSubview(buttonPress)
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            buttonPress.topAnchor.constraint(equalTo: view.topAnchor),
            buttonPress.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonPress.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonPress.bottomAnchor.constraint(equalTo: saveAreaGuide.bottomAnchor)
        ])
    }

}


