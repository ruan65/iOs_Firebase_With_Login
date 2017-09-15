//
//  LoginVC.swift
//  FireBaseChatWithLogin
//
//  Created by a on 15/09/2017.
//  Copyright © 2017 Andreyka. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    let inputFrame: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor.white
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 5
        v.layer.masksToBounds = true
        return v
    }()
    
    let loginBtn: UIButton = {
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
    
    let userTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "User"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.layer.masksToBounds = true
        return tf
    }()
    
    let inputSeparator: UIView = {
        let v = UIView()
        v.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        view.addSubview(inputFrame)
        view.addSubview(loginBtn)
        setupInputContainer()
        setupLoginButton()
    }
    

    
    // MARK: - Set up inputs
    private func setupInputContainer() {
        
        inputFrame.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputFrame.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        inputFrame.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        inputFrame.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        // MARK: Set up user input
        
        inputFrame.addSubview(userTextField)
        inputFrame.addSubview(inputSeparator)
        
        userTextField.leftAnchor.constraint(equalTo: inputFrame.leftAnchor, constant: 12).isActive = true
        userTextField.topAnchor.constraint(equalTo: inputFrame.topAnchor).isActive = true
        userTextField.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        userTextField.heightAnchor.constraint(equalTo: inputFrame.heightAnchor, multiplier: 1/3).isActive = true
        
        inputSeparator.leftAnchor.constraint(equalTo: inputFrame.leftAnchor).isActive = true
        inputSeparator.topAnchor.constraint(equalTo: userTextField.bottomAnchor).isActive = true
        inputSeparator.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        inputSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupLoginButton() {
        
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.topAnchor.constraint(equalTo: inputFrame.bottomAnchor, constant: 12).isActive = true
        
        loginBtn.widthAnchor.constraint(equalTo: inputFrame.widthAnchor ).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
}
