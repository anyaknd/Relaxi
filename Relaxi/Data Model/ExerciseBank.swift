//
//  AdviceBank.swift
//  Relaxi
//
//  Created by Anya on 02/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

// the prupose of this class is to store all of the questions we're gonna use in our app

import Foundation

class ExerciseBank {
    
    //property of class Advice Bank that's gonna hold all the advices. It's an array holding all advices
    var list = [Advice]()
    
    init() {
        
        // Creating an advice item and appending it to the list
        let item = Advice(text: "1. Lie on your back with both legs extended. \n2. Pull your right knee into your chest, while keeping the left leg straight and your lower back pressed into the floor. \n3. Hold for 30 seconds up to 2 minutes. \n4. Repeat on the other leg", rating: 0, belongsTo: "Lower Body Stretch")
        
        // Add the advice object to the list of advices
        list.append(item)
        
        // skipping one step and just creating an advice object item inside the append function
        list.append(Advice(text: "1. Stand with feet shoulder-width apart, or sit down with your back straight and chest lifted. \n2. Drop your left ear to your left shoulder. \n3. To deepen the stretch, gently press down on your head with your left hand. \n4. Hold for 30 seconds up to 2 minutes", rating: 0, belongsTo: "Upper Body Stretch"))
        
        list.append(Advice(text: "Lie on your back on the floor and rest your legs up against a wall. \nThis Vipariti Kirani yoga pose helps create peace of mind", rating: 0, belongsTo: "Yoga 1"))
        
        list.append(Advice(text: "Savasana Pose. \n1. Lie on your back. Place a yoga bolster or a stack of folded blankets under your knees. \n2. Let your feet rest on the floor and allow your legs to drop open. \n3. Close your eyes. You may want to cover your body with a blanket. \n4. Allow your body to feel heavy on the ground. \n5. Release each body part from the soles of your feet to the crown of your head. \n6. Turn your awareness inward and relax completely.", rating: 0, belongsTo: "Yoga 2"))
        
        list.append(Advice(text: "Not only is dancing a good way to exercise and to stay fit, but it can also improve general and psychological being and help you relax. Find a dance style you like and sign up for a class near you. \nAlternatively, simply put the music on, feel the rhythm and let your body flow into it.", rating: 0, belongsTo: "Dance"))
        
        list.append(Advice(text: "1. Sit or lie flat in a comfortable position. Put one hand on your belly just below your ribs and the other hand on your chest. \n2. Take a deep breath in through your nose, and let your belly push your hand out. Your chest should not move. \n3. Breathe out through pursed lips as if you were whistling. Feel the hand on your belly go in, and use it to push all the air out. \n4. Do this breathing 3 to 10 times. Take your time with each breath. \n5. Notice how you feel at the end of the exercise.", rating: 0, belongsTo: "Belly Breathing"))
        
        
    }
    
    
}

