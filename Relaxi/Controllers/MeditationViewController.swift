//
//  MeditationViewController.swift
//  Relaxi
//
//  Created by Anya on 05/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit

class MeditationViewController: UIViewController {

    let allMeditations = MeditationBank()
    
    //variable tracks state of Meditation Screen
    var meditationNumber : Int = 0
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstMeditation = allMeditations.list[0]
        
        textView.text = firstMeditation.adviceText
        textLabel.text = firstMeditation.category
        
    }
    
    //MARK:- Buttons
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        meditationNumber = meditationNumber + 1
        nextMeditation()
        
    }
    
    @IBAction func previousButtonPressed(_ sender: UIButton) {
        
        meditationNumber = meditationNumber - 1
        nextMeditation()
        
    }
    
    
    //MARK:- 'Navigate Between Advices' Methods
    
    func nextMeditation() {
        
        if meditationNumber >= 0  && meditationNumber <= 4 {
            
            //changes the advice text on advice label and category at the top label to the next advice
            textView.text = allMeditations.list[meditationNumber].adviceText
            textLabel.text = allMeditations.list[meditationNumber].category
        }
        else {
            let alert = UIAlertController(title: "This is the end of all meditation suggestions", message: "Would you like to view them again?", preferredStyle: .alert)
            
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
        meditationNumber = 0
        nextMeditation()
    }
    
    //MARK: - Rating Functionality
    
    
    
    
}
