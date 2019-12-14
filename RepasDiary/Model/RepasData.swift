//
//  RepasData.swift
//  RepasDiary
//
//  Created by 박소정 on 20/02/2019.
//  Copyright © 2019 sangwook park. All rights reserved.
//

import Foundation
import RealmSwift

// Year
class YearRecord: Object {
   // Property
   @objc dynamic var year = 0
   var monthsRecord = List<MonthRecord>()
   
   // Convenience init
   convenience init(year: Int) {
      self.init()
      self.year = year
   }
}

// Month
class MonthRecord: Object {
   // Property
   @objc dynamic var month: Int = 0
   var daysRecord = List<DayRecord>()
   
   // Convenience init
   convenience init(month: Int) {
      self.init()
      self.month = month
   }
}

// Day
class DayRecord: Object {
   // Property
   @objc dynamic var breakfast: [String] = []
   @objc dynamic var lunch: [String] = []
   @objc dynamic var dinner: [String] = []
   
   @objc dynamic var water: Double = 0.0
   
   @objc dynamic var intensity = ""
   @objc dynamic var workout = ""
}
