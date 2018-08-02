//
//  ViewController.swift
//  Relaxi
//
//  Created by Anya on 31/07/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func exerciseButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToExerciseVC", sender: self)
        
    }
    
    
}



//creating a new advice object and adding it to our realm database
//        let advice1 = Advice()
//        advice1.adviceText = "Stretch"
//        advice1.adviceLiked = false
//        saveAdvice(advice: advice1)
//
//        let advice2 = Advice()
//        advice2.adviceText = "Do some Yoga"
//        advice2.adviceLiked = false
//        saveAdvice(advice: advice2)
//
//        let advice3 = Advice()
//        advice3.adviceText = "Dance"
//        advice3.adviceLiked = false
//        saveAdvice(advice: advice3)
//
//        let advice4 = Advice()
//        advice4.adviceText = "Breathe"
//        advice4.adviceLiked = false
//        saveAdvice(advice: advice4)

