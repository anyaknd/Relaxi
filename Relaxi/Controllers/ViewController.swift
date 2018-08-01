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
        
        print("Exercise button pressed")
        
        performSegue(withIdentifier: "goToExerciseVC", sender: self)
        
        
    }
    
    
}

