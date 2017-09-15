//
//  CustomView.swift
//  FireBaseChatWithLogin
//
//  Created by a on 15/09/2017.
//  Copyright © 2017 Andreyka. All rights reserved.
//

import UIKit

class BaseUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {}
}

class ViewSeparator: BaseUIView {
    
    override func setupViews() {
        backgroundColor = UIColor(r: 220, g: 220, b: 220)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
