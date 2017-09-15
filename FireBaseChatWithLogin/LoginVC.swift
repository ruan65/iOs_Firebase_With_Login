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
    
    let logoView: UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor.white
        lb.text = "ЦО"
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 50)
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.backgroundColor = UIColor(r: 110, g: 131, b: 191)
        lb.layer.cornerRadius = 15
        lb.layer.masksToBounds = true
        return lb
    }()
    
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
        return tf
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let pwdTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    let userSeparator = ViewSeparator()
    let emailSeparator = ViewSeparator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        view.addSubview(inputFrame)
        view.addSubview(loginBtn)
        view.addSubview(logoView)
        setupInputContainer()
        setupLoginButton()
        setupLogo()
    }
    
    // MARK: - Setup logo

    private func setupLogo() {
        
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoView.bottomAnchor.constraint(equalTo: inputFrame.topAnchor, constant: -50).isActive = true
        
        logoView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 120).isActive = true

    }
    

    
    // MARK: - Set up inputs
    private func setupInputContainer() {
        
        inputFrame.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputFrame.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        inputFrame.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        inputFrame.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        // MARK: Setup user input
        
        inputFrame.addSubview(userTextField)
        inputFrame.addSubview(userSeparator)
        
        userTextField.leftAnchor.constraint(equalTo: inputFrame.leftAnchor, constant: 12).isActive = true
        userTextField.topAnchor.constraint(equalTo: inputFrame.topAnchor).isActive = true
        userTextField.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        userTextField.heightAnchor.constraint(equalTo: inputFrame.heightAnchor, multiplier: 1/3).isActive = true
        
        userSeparator.leftAnchor.constraint(equalTo: inputFrame.leftAnchor).isActive = true
        userSeparator.topAnchor.constraint(equalTo: userTextField.bottomAnchor).isActive = true
        userSeparator.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        userSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // MARK: Setup email input
        
        inputFrame.addSubview(emailTextField)
        inputFrame.addSubview(emailSeparator)
        
        emailTextField.leftAnchor.constraint(equalTo: inputFrame.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputFrame.heightAnchor, multiplier: 1/3).isActive = true
        
        emailSeparator.leftAnchor.constraint(equalTo: inputFrame.leftAnchor).isActive = true
        emailSeparator.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparator.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        emailSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // MARK: Setup pwd input
        
        inputFrame.addSubview(pwdTextField)
        
        pwdTextField.leftAnchor.constraint(equalTo: inputFrame.leftAnchor, constant: 12).isActive = true
        pwdTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        pwdTextField.widthAnchor.constraint(equalTo: inputFrame.widthAnchor).isActive = true
        pwdTextField.heightAnchor.constraint(equalTo: inputFrame.heightAnchor, multiplier: 1/3).isActive = true
        

    }
    
    private func setupLoginButton() {
        
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.topAnchor.constraint(equalTo: inputFrame.bottomAnchor, constant: 12).isActive = true
        
        loginBtn.widthAnchor.constraint(equalTo: inputFrame.widthAnchor ).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
}
