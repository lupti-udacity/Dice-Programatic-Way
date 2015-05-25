//
//  RollViewController.swift
//  Dice
//
//  Create Segue Programatic way:
//  Here you Control-drag "Roll The Dice" button to the IBAction in a normal fashion.
//  In the IBAction function, you call the UIViewController's "instantiateViewControllerWithIdentifier"
//  to define link property of the Roll View Controller with the Dice View Controller programatically.
//  Next remember to call "presentViewController" method in the IBAction to trigger the actual transition.
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    @IBAction func rollTheDice() {
        var controller: DiceViewController
        // Identifier DiceViewController needs to be registered in DiceViewController Identity section labeled "storyboard." So remember to register it there.
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    
}

