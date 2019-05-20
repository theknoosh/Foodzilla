//
//  StoreVC.swift
//  Foodzilla
//
//  Created by DARRELL A PAYNE on 5/15/19.
//  Copyright © 2019 DARRELL A PAYNE. All rights reserved.
//

import UIKit

class StoreVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView .dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ItemCell else {return UICollectionViewCell()}
        
        let item = foodItems[indexPath.row]
        
        cell.configureCell(forItem: item)
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    

    @IBAction func restorePurchases(_ sender: Any) {
    }
    
}

