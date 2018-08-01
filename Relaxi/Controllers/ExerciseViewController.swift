//
//  ExerciseViewController.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    
    @IBOutlet weak var textViewLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setText()
        
    }

    func setText() {
        
        textViewLabel.text = "Standing up for a quick stretch can relieve muscle tension and help us relax during a stressful workday . Why not try a shoulder roll-out or a chest-opening stretch right from the desk chair?"
        
    }

}
