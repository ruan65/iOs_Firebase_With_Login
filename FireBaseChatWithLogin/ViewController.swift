//
//  ViewController.swift
//  FireBaseChatWithLogin
//
//  Created by a on 14/09/2017.
//  Copyright © 2017 Andreyka. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        
        let loginVC = LoginVC()
        
        present(loginVC, animated: true, completion: nil)
    }
}

