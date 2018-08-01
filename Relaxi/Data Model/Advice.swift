//
//  Advice.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation
import RealmSwift

class Advice: Object {
    
    @objc dynamic var adviceText : String = ""
    @objc dynamic var adviceLiked : Bool = false
    
}
