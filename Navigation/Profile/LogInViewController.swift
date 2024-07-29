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
    
    
 
    lazy var scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            
            scrollView.showsVerticalScrollIndicator = true
            scrollView.showsHorizontalScrollIndicator = false
            scrollView.backgroundColor = .systemCyan
            
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            
            return scrollView
        }()
    
  
    
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
        textViewVK.font = .systemFont(ofSize: 16)
        textViewVK.autocapitalizationType = .none
        textViewVK.tintColor = .none
        textViewVK.backgroundColor = .systemGray6
        textViewVK.textColor = .black
        textViewVK.layer.borderWidth = 0.5
        textViewVK.layer.borderColor = UIColor.lightGray.cgColor
        textViewVK.layer.masksToBounds = false
        textViewVK.placeholder = "Imail or Phone"
        textViewVK.isSecureTextEntry = true
        return textViewVK
    }()
    
    
    let textViewVK2: UITextField = {
        let textViewVK = UITextField()
        textViewVK.translatesAutoresizingMaskIntoConstraints = false
        textViewVK.font = .systemFont(ofSize: 16)
        textViewVK.autocapitalizationType = .none
        textViewVK.tintColor = .none
        textViewVK.backgroundColor = .systemGray6
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
        stackView.layer.cornerRadius = 10.0
        stackView.distribution = .fillEqually
        stackView.spacing = 0.0
        stackView.addArrangedSubview(self.textViewVK)
        stackView.addArrangedSubview(self.textViewVK2)
        return stackView
    }()
    
    private lazy var buttonAction: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.layer.cornerRadius = 10.0
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(superButton), for: .touchUpInside)
        return button
    }()
    
    @objc func superButton(_ sender: UIButton){
        let profeleeViewController = ProfileeViewController()
        navigationController?.pushViewController(profeleeViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            setupKeyboardObservers()
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            removeKeyboardObservers()
        }
    @objc func willShowKeyboard(_ notification: NSNotification) {
            let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height
            scrollView.contentInset.bottom += keyboardHeight ?? 0.0
        }
        
        @objc func willHideKeyboard(_ notification: NSNotification) {
            scrollView.contentInset.bottom = 0.0
        }
    

    
    
    func setConstraints(){
        let saveAreaGuide = view.safeAreaLayoutGuide
        
        view.addSubview(vkView)
        view.addSubview(stackView)
        view.addSubview(buttonAction)
        view.addSubview(scrollView)
        
        
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
            buttonAction.heightAnchor.constraint(equalToConstant: 50),
            
            scrollView.leadingAnchor.constraint(equalTo: saveAreaGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: saveAreaGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: saveAreaGuide.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: saveAreaGuide.bottomAnchor)
            ])
        
    }
    
    private func setupKeyboardObservers() {
            let notificationCenter = NotificationCenter.default
            
            notificationCenter.addObserver(
                self,
                selector: #selector(self.willShowKeyboard(_:)),
                name: UIResponder.keyboardWillShowNotification,
                object: nil
            )
            
            notificationCenter.addObserver(
                self,
                selector: #selector(self.willHideKeyboard(_:)),
                name: UIResponder.keyboardWillHideNotification,
                object: nil
            )
        }
        
        private func removeKeyboardObservers() {
            let notificationCenter = NotificationCenter.default
            notificationCenter.removeObserver(self)
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



extension LogInViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(
           _ textField: UITextField
       ) -> Bool {
           textField.resignFirstResponder()
           
           return true
       }
    
}
