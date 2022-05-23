//
//  ViewController.swift
//  EggTimer
//
//  Created by Donna on 2022/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    @IBAction func selectedHardness(_ sender: UIButton) {
        let hardness = sender.currentTitle
        if(hardness == "soft"){
            print(softTime)
        }else if(hardness == "medium"){
            print(mediumTime)
        }else{
            print(hardTime)
        }
    }

}

