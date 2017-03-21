//
//  DataService.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation


protocol DataServiceDelegate: class {
        func deliciousTacoDataLoaded()
}


class DataService {
    static let instance = DataService() //need singleton so using class. singleton only one instance exits through entire app so can use from anywhere.
    
    // a way to acces and hold data, often used to access/connect to an API or firebase and download data we're looking for. But in this case we're just going to store data
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        //Chicken Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellID: 1, proteinID: 2, condimentID: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellID: 2, proteinID: 2, condimentID: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellID: 1, proteinID: 2, condimentID: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellID: 2, proteinID: 2, condimentID: 2))
        
        //Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellID: 1, proteinID: 1, condimentID: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn  Beef Taco", shellID: 2, proteinID: 1, condimentID: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour  Beef Taco", shellID: 1, proteinID: 1, condimentID: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellID: 2, proteinID: 1, condimentID: 2))
        
        //Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellID: 1, proteinID: 3, condimentID: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn  Brisket Taco", shellID: 2, proteinID: 3, condimentID: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellID: 1, proteinID: 3, condimentID: 2))
        tacoArray.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shellID: 2, proteinID: 3, condimentID: 2))
        
        //Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellID: 1, proteinID: 4, condimentID: 1))
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn  Fish Taco", shellID: 2, proteinID: 4, condimentID: 1))
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellID: 1, proteinID: 4, condimentID: 2))
        tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellID: 2, proteinID: 4, condimentID: 2))
        
        delegate?.deliciousTacoDataLoaded() // at this point, all of our data is loaded so firing off delegate method. Any type that conforms to DataServiceDelegate protocol will fire this function and DataService will be notified that taco got loaded. Can also pass references back to DataService.
        
    }
}
