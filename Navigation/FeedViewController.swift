//
//  FeedViewController.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 07.01.2024.
//

import UIKit
import StorageService


class FeedViewController: UIViewController {
     
    //var post = Post(title: "Мой пост")
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stackView)
        setupConstrait()
    }
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        stackView.axis = .vertical
        stackView.spacing = 10.0
        stackView.addArrangedSubview(self.myButton)
        stackView.addArrangedSubview(self.myButtonSecond)
        return stackView
    }()
    
   
   
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("FirstButton", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(FeedViewController.self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    let myButtonSecond: UIButton = {
        let button = UIButton()
        button.setTitle("SecondButton", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(FeedViewController.self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    @objc func buttonAction(_ sender: UIButton) {
        let postViewController = PostViewController()
        navigationController?.pushViewController(postViewController, animated: true)
        
        }
   
    
    func setupConstrait(){
        let saveAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: saveAreaGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: saveAreaGuide.centerYAnchor)
            ])
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
