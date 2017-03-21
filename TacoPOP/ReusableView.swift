//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView: class {
    
    
}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
        
        //this protocol takes name of class and turns it into string to use as reuseIdentifier so avoid typos ( big source of bugs and can be difficult to track all the time)
    }
}
