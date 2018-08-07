//
//  SelectCategoryViewController.swift
//  Relaxi
//
//  Created by Anya on 07/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class SelectCategoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func exerciseButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToExerciseInsights", sender: self)
        
    }
}
