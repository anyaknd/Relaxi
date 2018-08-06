//
//  FoodViewController.swift
//  Relaxi
//
//  Created by Anya on 05/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

    let allFood = FoodBank()
    
    //variable tracks state of food screen
    var foodNumber : Int = 0
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let firstFood = allFood.list[0]
        
        textView.text = firstFood.adviceText
        textLabel.text = firstFood.category
        
    }
    
    //MARK:- Buttons
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        
        foodNumber = foodNumber - 1
        nextFood()
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        foodNumber = foodNumber + 1
        nextFood()
        
    }
    
    
    //MARK:- 'Navigate between Advices' Methods
    
    func nextFood() {
        
        if foodNumber >= 0  && foodNumber <= 5 {
            
            //changes the advice text on advice label and category at the top label to the next advice
            textView.text = allFood.list[foodNumber].adviceText
            textLabel.text = allFood.list[foodNumber].category
        }
        else {
            let alert = UIAlertController(title: "This is the end of all food suggestions", message: "Would you like to view them again?", preferredStyle: .alert)
            
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
    
    func likeAdvice() {
        
        allFood.list[foodNumber].adviceLiked = true
        
    }
    
    
    
    func startOver() {
        foodNumber = 0
        nextFood()
    }
    
}
