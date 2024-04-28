//
//  File.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//
import Foundation
import UIKit

struct Post {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
}



class ProfileeViewController: UIViewController, UIGestureRecognizerDelegate {
  
    
    let profileHeaderView = ProfileHeaderView()
    let appearance = UINavigationBarAppearance()
    private var dataSource: [Post] = [
        Post(author: "Superman", description: "Man of Steel", image: "superman", likes: 4556, views: 8855),
        Post(author: "Naruto", description: "Hokage", image: "naruto", likes: 6473, views: 8696),
        Post(author: "Kurasaki Ichigo", description: "Shinigami", image:"Ichigo", likes: 8696, views: 9000),
        Post(author: "Monkey D. Luffy", description: "The Sun God", image:"luffy", likes: 6575, views: 7654)
    ]
    
    let tableView: UITableView = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //appearance.backgroundColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //view.backgroundColor = .white
        title = "Profile"
        
        #if DEBUG
        self.view.backgroundColor = .white
        #else
        self.view.backgroundColor = .systemCyan
        #endif
        
     
        setupUI()
        setupTableView()
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
    }
    
    private func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    private func setupUI(){
        view.addSubview(tableView)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
    }

}


extension ProfileeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as? PostTableViewCell else {return UITableViewCell()}
        let post = dataSource [indexPath.row]
        cell.configure(with: post)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let profileHeaderView = ProfileHeaderView()
        return profileHeaderView
        }
}
