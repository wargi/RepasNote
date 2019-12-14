//
//  MainViewController.swift
//  RepasDiary
//
//  Created by 박소정 on 03/04/2019.
//  Copyright © 2019 sangwook park. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
   
   @IBOutlet private weak var collectionView: UICollectionView!
   @IBOutlet private weak var sunLabel : UILabel!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      collectionView.register(UINib.init(nibName: "DayCollectionViewCell", bundle: nil),
                              forCellWithReuseIdentifier: "DayCollectionViewCell")
      print(self.collectionView.frame.height)
   }
   
   
}

extension MainViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 31
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DayCollectionViewCell", for: indexPath) as? DayCollectionViewCell {
         cell.dayLabel.text = "\(indexPath.row + 1)"
         
         print("\(cell.frame)")
         return cell
      } else {
         return UICollectionViewCell()
      }
      
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      let width = (UIScreen.main.bounds.width - 32) / 7
      
      return CGSize(width: width, height: (self.collectionView.bounds.height - 25) / 7)
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
      return UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 4)
   }
}
