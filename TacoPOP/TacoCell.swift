//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Bettina on 3/21/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco : Taco!
    
    func configureCell(taco:Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinID.rawValue)
        tacoLabel.text = taco.productName
    
    }
}
