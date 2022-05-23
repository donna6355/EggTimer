//
//  ViewController.swift
//  EggTimer
//
//  Created by Donna on 2022/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["soft":5*60,"medium":7*60, "hard":12*60] //dictionaries
    var counter = 0
    var timer = Timer()
    
    @IBAction func selectedHardness(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        counter = eggTimes[hardness]!

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter(){
         if counter > 0 {
             print("\(counter) seconds")
             counter -= 1
         }
    }
}

