//
//  Advice.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation

class Advice {
    
    let adviceText : String
    var adviceRating : Int
    let category : String
    
    //created an initialiser method that determines the initial values of these 2 properties, that will be passed on through the parameters when we create our Advice objects
    init(text: String, rating: Int, belongsTo: String) {
        adviceText = text
        adviceRating = rating
        category = belongsTo
    }
    

}
