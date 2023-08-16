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
        label.text = "Login"
        label.textColor = UIColor.label
        label.font = UIFont(name: "avenir", size: 25)
        label.textAlignment = .center
        
        return label
    }()
    
    private let headingImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "loginLogo")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(loginScrollView)
        loginScrollView.addSubview(contentView)
        contentView.addSubview(headingLabel)
        contentView.addSubview(headingImage)
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
            contentView.heightAnchor.constraint(equalTo: loginScrollView.heightAnchor, multiplier: 2)
        ]
        
//        let hConst = contentView.heightAnchor.constraint(equalTo: loginScrollView.heightAnchor)
//        hConst.isActive = true
//        hConst.priority = UILayoutPriority(50)
        
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
        
        NSLayoutConstraint.activate(composeloginScrollView)
        NSLayoutConstraint.activate(composeContentView)
        NSLayoutConstraint.activate(composeHeadingLabel)
        NSLayoutConstraint.activate(composeHeadingImage)
    }

}

