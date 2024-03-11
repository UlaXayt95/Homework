//
//  PostViewController.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 10.01.2024.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Мой пост"
        view.backgroundColor = .systemPink
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "star"), style: .plain, target: self, action: #selector(didTapButton))
        }
    
    @objc private func didTapButton() {
        
        let infoViewController = InfoViewController()
        navigationController?.pushViewController(infoViewController, animated: true)
        
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
