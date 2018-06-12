//
//  ViewController.swift
//  GrabilityTest
//
//  Created by Jorge Castro on 6/10/18.
//  Copyright © 2018 Jorge Castro. All rights reserved.
//

import UIKit

class CategoryController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellIdentifier = "cellIdentifier"
    let categories = ["Drama", "Comedia", "Acción", "Ciencia Ficción", "Fantasía", "Terror", "Romance", "Musical", "Melodrama", "Suspense"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView?.backgroundColor = UIColor.lightGray
        collectionView?.register(SimpleCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! SimpleCollectionViewCell
        cell.titleItem.text = categories[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 250)
    }
    
}
