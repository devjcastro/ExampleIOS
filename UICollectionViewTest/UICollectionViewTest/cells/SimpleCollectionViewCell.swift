//
//  SimpleCollectionViewCell.swift
//  GrabilityTest
//
//  Created by Jorge Castro on 6/11/18.
//  Copyright © 2018 Jorge Castro. All rights reserved.
//

import UIKit

class SimpleCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let titleItem: UILabel = {
        let label = UILabel()
        label.text = "Title of Item"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews(){
        backgroundColor = UIColor.purple
        addSubview(titleItem)
        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": titleItem])
        )
        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": titleItem])
        )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
