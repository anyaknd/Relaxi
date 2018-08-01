//
//  Advice.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation
import RealmSwift

class Advice {
    
    let adviceText : String
    let adviceLiked : Bool
    
    //created an initialiser method that determines the initial values of these 2 properties, that will be passed on through the parameters when we create our Advice objects
    init(text: String, isLiked: Bool) {
        adviceText = text
        adviceLiked = isLiked
    }
    
}
