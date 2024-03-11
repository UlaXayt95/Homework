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


