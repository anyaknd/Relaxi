//
//  MeditationBank.swift
//  Relaxi
//
//  Created by Anya on 05/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import Foundation

class MeditationBank {
    
    var list = [Advice]()
    
    init() {
        
        list.append(Advice(text: "Counting Backwards with a twist. \nPick a big number like 637 and then pick an odd, random number, for example 19 and start counting backwards to zero from 637 by 19. \nFocused efforts to actually try and do that math engage your brain in a way, that can distract from the stress and flooding emotions you may be experiencing, and help you relax.", rating: 0, belongsTo: "Count Backward"))
        
        list.append(Advice(text: "1. Sit or lie comfortably and close your eyes. Make no effort to control the breath; breathe naturally. \n2. Focus your attention on the breath and on how the body moves with each inhalation and exhalation. \n3. Notice the movement of your body as you breathe. Observe your chest, shoulders, rib cage, and belly. \n4. Simply focus your attention on your breath without controlling its pace or intensity. \nIf your mind wanders, return your focus back to your breath. \nMaintain this meditation practice for two to three minutes to start, and then try it for longer periods. ", rating: 0, belongsTo: "Simple Meditation"))
        
        list.append(Advice(text: "The ancient Sanskrit word, “aum” is a mystical syllable often used in chants or as a meditative mantra. By repeating a sacred word or meaningful phrase (including short affirmations) you can bring your mind to a state of focused tranquility. \nYou can say the mantra aloud or repeat it silently.", rating: 0, belongsTo: "Mantra Meditation"))
        
        list.append(Advice(text: "This meditation technique allows you to be aware without any specific focus. \nSimply sit quietly with your eyes closed and allow thoughts to float freely in and out of your mind. \nAs they come and go, observe them without judgment or attachment.", rating: 0, belongsTo: "Empty Mind Meditation"))
        
        list.append(Advice(text: "If sitting still for too long makes you squirm, try the walking meditation technique. You can do this just about anywhere, although a garden or other pleasing environment is ideal. \nSimply focus on your body as it moves: your arms as they swing, your legs as they lift and extend, your feet as they rise and touch the ground. \nAs with all meditation techniques, when you find your mind wandering, gently bring your attention back to the movement. \nTry not to judge, just observe the sensation of walking.", rating: 0, belongsTo: "Walking Meditation"))
        
    }
}
