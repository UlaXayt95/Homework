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
    }
    override func viewWillLayoutSubviews() {
        view.backgroundColor = .lightGray
        title = "Profile"
        view.addSubview(profileHeaderView)
    }

    
}


