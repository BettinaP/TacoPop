//
//  Taco.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    
    case Loaded = 1
    case Plain = 2
}

//delegation pattern, builder pattern

struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellID: TacoShell!
    private var _proteinID: TacoProtein!
    private var _condimentID: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellID: TacoShell {
        return _shellID
    }
    
    var proteinID: TacoProtein {
        return _proteinID
    }
    
    var condimentID: TacoCondiment {
        return _condimentID
    }
    
    
    //structs don't require initializers (classes always do) but implementing initializer here becuase going to use checks as we build our Taco
    
    init(id: Int, productName: String, shellID: Int, proteinID: Int, condimentID: Int) {
        
        _id = id
        _productName = productName
        
        //Taco Shell
        switch shellID {
        case 2:
            self._shellID = TacoShell.Corn
        default:
            self._shellID = TacoShell.Flour
            
        }
        
        switch proteinID {
        case 2:
            self._proteinID = TacoProtein.Chicken
        case 3:
            self._proteinID = TacoProtein.Brisket
        case 4:
            self._proteinID = TacoProtein.Fish
        default:
            self._proteinID = TacoProtein.Beef
        }
        
        switch condimentID {
        case 2:
            self._condimentID = TacoCondiment.Plain
        default:
            self._condimentID = TacoCondiment.Loaded
        }
    }
}
