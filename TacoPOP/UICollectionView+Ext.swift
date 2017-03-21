//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    //creating a generic collection view cell where the type is a reusable view and type is NibLoadableView
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T:UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {fatalError("coul not dequeue cell with identifier \(T.reuseIdentifier)")}
        return cell
    }
    
}

extension UICollectionViewCell: ReusableView {} //make it aware of above UICollView ext above
