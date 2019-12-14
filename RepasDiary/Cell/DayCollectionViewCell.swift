//
//  DayCollectionViewCell.swift
//  RepasDiary
//
//  Created by 박소정 on 28/04/2019.
//  Copyright © 2019 sangwook park. All rights reserved.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
   
   
   @IBOutlet weak var dayLabel: UILabel!
   @IBOutlet private weak var lineView : UIView!
   
   override func awakeFromNib() {
      super.awakeFromNib()
      
      lineView.layer.cornerRadius = 1
   }
   
}
