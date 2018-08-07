//
//  Rating.swift
//  Relaxi
//
//  Created by Anya on 06/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation
import RealmSwift

class Rating: Object {
    
    //@objc dynamic var thoughtTitle : String = ""
    
    @objc dynamic var ratingName: String = ""
    @objc dynamic var rated: Int = 0
    
}
