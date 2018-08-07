//
//  FoodBank.swift
//  Relaxi
//
//  Created by Anya on 05/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation

class FoodBank {
    
    //property of class Advice Bank that's gonna hold all the advices. It's an array holding all advices
    var list = [Advice]()

    init() {

        list.append(Advice(text: "When it comes to stress and anxiety, peppermint tea is one of your best allies. The menthol that is naturally present in the herb is a known muscle relaxant; this physical manifestation of relaxation can translate to stress and anxiety relief as well. Try sipping a cup of peppermint tea and listening to your favorite song for a five-minute break during a hectic afternoon to get the most out of this benefit.", rating: 0, belongsTo: "Peppermint Tea"))
        
        list.append(Advice(text: "Just a square (about 1.4 ounces) of the sweet stuff can calm your nerves. Dark chocolate regulates levels of the stress hormone cortisol and stabilizes metabolism", rating: 0, belongsTo: "Dark Chocolate"))
        
        list.append(Advice(text: "Replace stress with sweetness and try a spoonful of honey. Besides being a natural skin moisturizer and antibiotic, honey also provides compounds that reduce inflammation in the brain, meaning it fights depression and anxiety.", rating: 0, belongsTo: "Honey"))
        
        list.append(Advice(text: "Minty, fruity, or bubble-gum flavor, a stick of gum is a surprisingly quick and easy way to beat stress. Just a few minutes of chewing can actually reduce anxiety and lower cortisol levels", rating: 0, belongsTo: "Chewing Gum"))
        
        list.append(Advice(text: "We crave carbs when we're stressed because they increase serotonin levels in the brain, but it's important to choose complex carbohydrates that are high in fiber to keep blood sugar levels stable. \nOatmeal is also a warming comfort food, so it's a perfect combination of getting the comfort food while maintaining blood sugar levels", rating: 0, belongsTo: "Oatmeal"))
        
        list.append(Advice(text: "Nuts contain an assortment of nutrients such as magnesium, B vitamins, and omega-3 fatty acids, which all work to fight stress. \nNuts such as walnuts, that contain alpha-linolenic acid, can help protect your heart against the effects of stress.", rating: 0, belongsTo: "Nuts"))
        
        
    }
}

