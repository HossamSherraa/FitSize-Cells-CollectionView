//
//  FLow.swift
//  FitSize-Cells
//
//  Created by Hossam on 3/24/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit
class Flow : UICollectionViewFlowLayout {
    override init() {
        super.init()
         self.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
