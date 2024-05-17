//
//  File.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//

import UIKit


class ProfileeViewController: UIViewController, UIGestureRecognizerDelegate {
  
    
    let profileHeaderView = ProfileHeaderView()
    let appearance = UINavigationBarAppearance()
    var dataSource: [Post] = [
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
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
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
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 250
        }
}
