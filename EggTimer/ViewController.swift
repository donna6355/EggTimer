//
//  ViewController.swift
//  EggTimer
//
//  Created by Donna on 2022/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["soft":5,"medium":7, "hard":12] //dictionaries
    
    
    @IBAction func selectedHardness(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        print(eggTimes[hardness]!)

    }

}

