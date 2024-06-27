//
//  File.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 29.01.2024.
//

import UIKit
import StorageService


class ProfileeViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    let profileHeaderView = ProfileHeaderView()
    let appearance = UINavigationBarAppearance()
    var dataSource = Post.make()
    
    private var tableView: UITableView = {
        let tableView = UITableView.init(
            frame: .zero,
            style: .grouped
        )
        return tableView
    } ()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        title = "Profile"
        
#if DEBUG
        self.view.backgroundColor = .white
#else
        self.view.backgroundColor = .systemCyan
#endif
        setup()
        tuneTableView()
        setupUI()
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
        self.tableView.rowHeight = UITableView.automaticDimension
        setupConstraint()
    }
    
    
    
    
    private func setup(){
        navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Profile"
        view.backgroundColor = .white
    }
    
    private func setupUI(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstraint(){
        let safeAreaGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
        ])
    }
    private func tuneTableView() {
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        
        let headerView = ProfileHeaderView()
        tableView.setAndLayout(headerView: headerView)
        tableView.tableFooterView = UIView()
        
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0.0
        }
        
        
        tableView.dataSource = self
        tableView.delegate = self
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
        
        /*func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         let profileHeaderView = ProfileHeaderView()
         return profileHeaderView
         }*/
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 450
        }
        
        
    }

