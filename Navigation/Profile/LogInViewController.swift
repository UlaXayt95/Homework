//
//  LogInViewController.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 17.03.2024.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationBar = UINavigationBar()
        navigationBar.isHidden = true
        view.backgroundColor = .white
        
        setConstraints()
    }
   /*let line: UIView = {
        let line  = UIView()
        line.backgroundColor = .cyan
        return line
    }()*/
    
    let vkView: UIImageView = {
        let image = UIImage(named: "ImageVK")
        let vkView = UIImageView(image: image)
        vkView.translatesAutoresizingMaskIntoConstraints = false
        vkView.layer.masksToBounds = true
        vkView.clipsToBounds = true
        return vkView
    }()
    
    let textViewVK: UITextField = {
        let textViewVK = UITextField()
        textViewVK.translatesAutoresizingMaskIntoConstraints = false
        textViewVK.layer.cornerRadius = 10
        textViewVK.font = UIFont.systemFont(ofSize: 16)
        textViewVK.backgroundColor = .systemGray
        textViewVK.textColor = .black
        textViewVK.layer.borderWidth = 0.5
        textViewVK.layer.borderColor = UIColor.lightGray.cgColor
        textViewVK.layer.masksToBounds = false
        textViewVK.placeholder = "Imail or Phone number"
        textViewVK.isSecureTextEntry = true
        return textViewVK
    }()
    
    let textViewVK2: UITextField = {
        let textViewVK = UITextField()
        textViewVK.translatesAutoresizingMaskIntoConstraints = false
        textViewVK.layer.cornerRadius = 10
        textViewVK.font = UIFont.systemFont(ofSize: 16)
        textViewVK.backgroundColor = .systemGray
        textViewVK.textColor = .black
        textViewVK.layer.borderWidth = 0.5
        textViewVK.layer.borderColor = UIColor.lightGray.cgColor
        textViewVK.layer.masksToBounds = false
        textViewVK.placeholder = "Password"
        textViewVK.isSecureTextEntry = true
        return textViewVK
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0.0
        stackView.addArrangedSubview(self.textViewVK)
        //stackView.addArrangedSubview(self.line)
        stackView.addArrangedSubview(self.textViewVK2)
        return stackView
    }()
    
    let buttonAction: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10.0
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.titleLabel?.textColor = .white
        return button
    }()
    

    
    
    func setConstraints(){
        let saveAreaGuide = view.safeAreaLayoutGuide
        
        view.addSubview(vkView)
        view.addSubview(stackView)
        view.addSubview(buttonAction)
        
        
        NSLayoutConstraint.activate([
            vkView.centerXAnchor.constraint(equalTo: saveAreaGuide.centerXAnchor),
            vkView.topAnchor.constraint(equalTo: saveAreaGuide.topAnchor, constant: 120),
            vkView.heightAnchor.constraint(equalToConstant: 100),
            vkView.widthAnchor.constraint(equalToConstant: 100),
            
            stackView.topAnchor.constraint(equalTo: saveAreaGuide.topAnchor, constant: 340),
            stackView.leadingAnchor.constraint(equalTo: saveAreaGuide.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: saveAreaGuide.trailingAnchor, constant: -16),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            
            buttonAction.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            buttonAction.trailingAnchor.constraint(equalTo: saveAreaGuide.trailingAnchor, constant: -16),
            buttonAction.leadingAnchor.constraint(equalTo: saveAreaGuide.leadingAnchor, constant: 16),
            buttonAction.heightAnchor.constraint(equalToConstant: 50)
            
            
            
            
        
        
        
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
