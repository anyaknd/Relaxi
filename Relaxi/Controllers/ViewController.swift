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

    //MARK:- Buttons Pressed
    @IBAction func exerciseButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToExerciseVC", sender: self)
        
    }
    
    
    @IBAction func foodButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToFoodVC", sender: self)
        
    }
    
    @IBAction func meditationButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToMeditationVC", sender: self)
        
    }
    
    @IBAction func insightsButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToInsightsVC", sender: self)
        
    }
    
    
    
}


