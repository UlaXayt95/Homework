//
//  InfoViewController.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 15.01.2024.
//

import UIKit

class InfoViewController: UIViewController {
    
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Info"
        view.backgroundColor = .systemGreen
        
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
        button.center = view.center
        button.backgroundColor = .purple
        button.setTitle("alert", for: .normal)
        button.addTarget(self, action: #selector(startGame), for: .touchUpInside)
    }
    @objc func startGame(){
        showAlertAction()
    }
}
    
    extension InfoViewController {
        func showAlertAction(){
            let alert = UIAlertController(title: "Внимание", message: "Осторожно злая кошка", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default){_ in
                print("Ok action")
            }
            let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel){_ in
                print("Cancel action")
            }
            alert.addAction(okBtn)
            alert.addAction(cancelBtn)
            present(alert, animated: true){
                print("Alert controller is presented")
            }
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

