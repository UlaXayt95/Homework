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
        buttonPress()
        setupLayout()
    }
    
    func buttonPress() {
        let myButton = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 70))
        myButton.setTitle("Button", for: .normal)
        myButton.backgroundColor = .blue
        myButton.center = view.center
        myButton.layer.cornerRadius = 12
        myButton.layer.masksToBounds = true
        myButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
    }
    @objc func buttonAction(){}
    
    func setupLayout() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}


