//
//  AdviceBank.swift
//  Relaxi
//
//  Created by Anya on 02/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

// the prupose of this class is to store all of the questions we're gonna use in our app

import Foundation

class AdviceBank {
    
    //property of class Advice Bank that's gonna hold all the advices. It's an array holding all advices
    var list = [Advice]()
    
    init() {
        
        // Creating an advice item and appending it to the list
        let item = Advice(text: "Stretching technique", isLiked: false, belongsTo: "Stretching")
        
        // Add the advice object to the list of advices
        list.append(item)
        
        // skipping one step and just creating an advice object item inside the append function
        list.append(Advice(text: "Yoga technique", isLiked: false, belongsTo: "Yoga"))
        
        list.append(Advice(text: "Dance technique", isLiked: false, belongsTo: "Dance"))
        
        list.append(Advice(text: "Breathing technique", isLiked: false, belongsTo: "Breathing"))
        
    }
    
    
}

