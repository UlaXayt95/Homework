//
//  FeedViewController.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 07.01.2024.
//

import UIKit

class FeedViewController: UIViewController {
    var post = Post(title: "Мой пост")
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        myButton()
    }
   
    func myButton(){
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 160, height: 50))
        view.addSubview(button)
        button.setTitle("FirstButton", for: .normal)
        button.backgroundColor = .orange
        button.center = view.center
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
    }
    @objc func buttonAction(_ sender: UIButton) {
        /*let postViewController = UINavigationController(rootViewController: PostViewController())
        postViewController.modalTransitionStyle = .coverVertical
        postViewController.modalPresentationStyle = .fullScreen
        
        present(postViewController, animated: true)*/
        let postViewController = PostViewController()
        navigationController?.pushViewController(postViewController, animated: true)
        
        }
    
        
    struct Post {
        var title: String
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
