//
//  ExerciseViewController.swift
//  Relaxi
//
//  Created by Anya on 01/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit
import RealmSwift

class ExerciseViewController: UIViewController {

    let realm = try! Realm()
    
    var ratings : Results<Rating>?

    let allAdvice = ExerciseBank()
    
    //this variable tracks the of exercise screen
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

        if adviceNumber >= 0  && adviceNumber <= 5 {
            
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
    
    //MARK:- Rating Functionality
    
    @IBAction func onePressed(_ sender: UIButton) {
        
        let newRating = Rating()
        newRating.ratingName = allAdvice.list[adviceNumber].category
        newRating.rated = 1
        save(rating: newRating)

    }
    
    
    @IBAction func twoPressed(_ sender: UIButton) {
        
        let newRating = Rating()
        newRating.ratingName = allAdvice.list[adviceNumber].category
        newRating.rated = 2
        save(rating: newRating)
        
    }
    
    @IBAction func threePressed(_ sender: UIButton) {
        
        let newRating = Rating()
        newRating.ratingName = allAdvice.list[adviceNumber].category
        newRating.rated = 3
        save(rating: newRating)
        
    }
    
    @IBAction func fourPressed(_ sender: UIButton) {
        
        let newRating = Rating()
        newRating.ratingName = allAdvice.list[adviceNumber].category
        newRating.rated = 4
        save(rating: newRating)
        
    }
    
    
    @IBAction func fivePressed(_ sender: UIButton) {
        
        let newRating = Rating()
        newRating.ratingName = allAdvice.list[adviceNumber].category
        newRating.rated = 5
        save(rating: newRating)
        
    }
    
    
    //MARK:- Saving ratings
    func save(rating: Rating) {
        
        do {
            try realm.write {
                realm.add(rating)
            }
        } catch {
            print(error)
        }
    }
    
}
