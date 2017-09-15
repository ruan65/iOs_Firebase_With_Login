//
//  LoginVC.swift
//  FireBaseChatWithLogin
//
//  Created by a on 15/09/2017.
//  Copyright © 2017 Andreyka. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let inputsContainerView: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 5
        v.layer.masksToBounds = true
        return v
    }()
    
    let loginButton: UIButton = {
        let b = UIButton(type: .system)
        b.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        b.setTitleColor(UIColor.white, for: .normal)
        b.setTitle("Login/Register", for: .normal)
        b.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.layer.cornerRadius = 5
        b.layer.masksToBounds = true

        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        view.addSubview(inputsContainerView)
        view.addSubview(loginButton)
        setupInputContainer()
        setupLoginButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupInputContainer() {
        
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    private func setupLoginButton() {
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        
        loginButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor ).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
}
