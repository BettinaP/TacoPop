//
//  MutableCollection + Ext.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int { //only if a mutable collection has an integer index are we going to extend it
    
    mutating func shuffle() {
        
        if count < 2 { return } //not worried about shuffling if less than 2
        
        for i in startIndex ..<endIndex - 1 {
            let j = int(arc4random_uniform(endIndex - i))) + i
        }
    }
}
