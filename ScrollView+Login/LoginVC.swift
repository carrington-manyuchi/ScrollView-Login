//
//  ViewController.swift
//  ScrollView+Login
//
//  Created by DA MAC M1 157 on 2023/08/16.
//

import UIKit

class LoginVC: UIViewController {
    
    //MARK: - UI Componets
    private let loginScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .green
        return scrollView
    }()
    
    private let contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .cyan
        return contentView
    }()
    
    private let headingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.textColor = UIColor.label
        label.font = UIFont(name: "avenir", size: 25)
        label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        label.textAlignment = .center
        return label
    }()
    
    private let headingTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign in and have fun"
        label.textColor = UIColor.white
        label.font = UIFont(name: "avenir", size: 18)
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    private let headingImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "loginLogo")
        return imageView
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter username"
        textField.layer.cornerRadius = 20
        textField.layer.shadowOffset = CGSize(width: 2, height: 1)
        textField.layer.shadowOpacity = 0.5
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.backgroundColor = .systemGray5
        
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 25.0, height: 0.0))
        textField.leftView = leftView
        textField.rightView = leftView
        textField.leftViewMode = .always
        textField.rightViewMode = .always
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter password"
        textField.layer.cornerRadius = 20
        textField.layer.shadowOffset = CGSize(width: 2, height: 1)
        textField.layer.shadowOpacity = 0.5
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.backgroundColor = .systemGray5
        
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 25.0, height: 0.0))
        textField.leftView = leftView
        textField.rightView = leftView
        textField.leftViewMode = .always
        textField.rightViewMode = .always
        return textField
    }()
    
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign in", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.layer.backgroundColor = UIColor.red.cgColor
        button.layer.cornerRadius = 25
        button.layer.shadowOffset = CGSize(width: 2, height: 3)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(loginScrollView)
        loginScrollView.addSubview(contentView)
        contentView.addSubview(headingLabel)
        contentView.addSubview(headingImage)
        contentView.addSubview(usernameTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(headingTwoLabel)
        contentView.addSubview(signInButton)
        configureConstraints()
    }
    
    private func configureConstraints() {
        
        let composeloginScrollView = [
            loginScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            loginScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            loginScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loginScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        let composeContentView = [
            contentView.topAnchor.constraint(equalTo: loginScrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: loginScrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: loginScrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: loginScrollView.trailingAnchor),
            
            contentView.widthAnchor.constraint(equalTo: loginScrollView.widthAnchor),
            //contentView.heightAnchor.constraint(equalTo: loginScrollView.heightAnchor, multiplier: 2)
        ]
        
        let hConst = contentView.heightAnchor.constraint(equalTo: loginScrollView.heightAnchor)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        
        let composeHeadingLabel = [
            headingLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 25),
            headingLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ]
        
        let  composeHeadingImage = [
            headingImage.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 50),
            headingImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            headingImage.heightAnchor.constraint(equalToConstant: 350),
            headingImage.widthAnchor.constraint(equalToConstant: 200)
        ]
        
        let composeHeadingTwoLabel = [
            headingTwoLabel.topAnchor.constraint(equalTo: headingImage.bottomAnchor),
            headingTwoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            headingTwoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25)
            //headingTwoLabel.
        ]
        
        let composeUsernameTextField = [
            usernameTextField.topAnchor.constraint(equalTo: headingTwoLabel.bottomAnchor, constant: 35),
            usernameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            usernameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            usernameTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let composePasswordTextField = [
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            passwordTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        
        let composeSignInButton = [
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
//            signInButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
//            signInButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            signInButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            signInButton.widthAnchor.constraint(equalToConstant: 280),
            signInButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)
        ]
        
        NSLayoutConstraint.activate(composeloginScrollView)
        NSLayoutConstraint.activate(composeContentView)
        NSLayoutConstraint.activate(composeHeadingLabel)
        NSLayoutConstraint.activate(composeHeadingImage)
        NSLayoutConstraint.activate(composeUsernameTextField)
        NSLayoutConstraint.activate(composePasswordTextField)
        NSLayoutConstraint.activate(composeHeadingTwoLabel)
        NSLayoutConstraint.activate(composeSignInButton)
    }

}

