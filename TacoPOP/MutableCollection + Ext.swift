//
//  MutableCollection + Ext.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int { //only if a mutable collection has an integer index are we going to extend it, want to randomize
    
    mutating func shuffle() {
        
        if count < 2 { return } //not worried about shuffling if less than 2
        
        for i in startIndex..<endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            
            //must guard that i and j aren't equal, if they are, we need to just continue
            guard i != j else { continue }
            
            //& is a reference to variable, since it's a mutating function it uses in-out parameters, so basically swapping items around
            swap(&self[i], &self[j])
        }
    }
}
