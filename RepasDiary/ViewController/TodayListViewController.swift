//
//  ViewController.swift
//  RepasDiary
//
//  Created by 박상욱 on 12/02/2019.
//  Copyright © 2019 sangwook park. All rights reserved.
//

import UIKit

class TodayListViewController: UIViewController {

    @IBOutlet private weak var collectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}

extension TodayListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: self.view.frame.width / 3,
                                                  height: self.view.frame.width / 3))
    }
    
    
}

extension TodayListViewController: UICollectionViewDelegate {
    
}
