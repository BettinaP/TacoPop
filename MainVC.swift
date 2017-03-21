//
//  MainVC.swift
//  TacoPOP
//
//  Created by Bettina on 3/20/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        ds.loadDeliciousTacoData() //as soon as data done loading, fire message
        ds.tacoArray.shuffle() //randomize array
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
        /*
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
 */
        collectionView.register(TacoCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func deliciousTacoDataLoaded() {
        print("delicious taco data loaded")
        collectionView.reloadData() // not really necessary here since everything is stored locally but if we were making network call or connecting to Firebase, would need to reload data because once async call is done, you can let your other classes know data loaded via this delegate method. Or if incorporated activity spinner, delegate method fires and you'd stop activity spinned and reload collection view.
    }
   

}

//set up delegate and datasource for collectionView using extension

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            cell.configureCell(taco: ds.tacoArray[indexPath.row])
//            return cell
//        }
        //        return UICollectionViewCell()
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
}
