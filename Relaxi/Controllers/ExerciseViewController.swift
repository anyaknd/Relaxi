//
//  ExerciseViewController.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    let allAdvice = AdviceBank()
    
    //this variable tracks the state of our app
    var adviceNumber : Int = 0

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let firstAdvice = allAdvice.list[0]
        
        //text on textView is set to be first advices's text
        textView.text = firstAdvice.adviceText
        textLabel.text = firstAdvice.category

    }
    
    //MARK:- Buttons
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        
        adviceNumber = adviceNumber - 1
        nextAdvice()
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        adviceNumber = adviceNumber + 1
        nextAdvice()
    }
    
    //MARK:- Navigate between Advices Methods
    
    
    func nextAdvice() {

        if adviceNumber >= 0  && adviceNumber <= 3 {
            
            //changes the advice text on advice label and category at the top label to the next advice
            textView.text = allAdvice.list[adviceNumber].adviceText
            textLabel.text = allAdvice.list[adviceNumber].category
        }
        else {
            let alert = UIAlertController(title: "This is the end of all exercises", message: "Would you like to view exercises again?", preferredStyle: .alert)
            
            //create Action
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            //add Action created above
            alert.addAction(restartAction)
            
            //present the action to the viewer
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    func startOver() {
        adviceNumber = 0
        nextAdvice()
    }
    
}
