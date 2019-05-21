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
        
        IAPService.instance.delegate = self
        IAPService.instance.loadProducts()
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC else {return}
        let item = foodItems[indexPath.row]
        detailVC.initData(forItem: item)
        present(detailVC, animated: true, completion: nil)
        
    }
    
    

    @IBAction func restorePurchases(_ sender: Any) {
    }
    
}

extension StoreVC: IAPServiceDelegate {
    
    func iapProductsLoaded() {
        print("IAP Products Loaded")
    }
}

