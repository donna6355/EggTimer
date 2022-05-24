//
//  ViewController.swift
//  EggTimer
//
//  Created by Donna on 2022/05/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleUI: UILabel!
    
    let eggTimes = ["soft":5,"medium":7, "hard":12] //dictionaries
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    

    @IBAction func selectedHardness(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        progressBar.progress = 0
        secondsPassed = 0
        titleUI.text = hardness
        
        totalTime = eggTimes[hardness]!

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter(){
         if totalTime > secondsPassed {
             secondsPassed += 1
             progressBar.progress = Float(secondsPassed)/Float(totalTime)
         }else{
             timer.invalidate()
             titleUI.text = "DONE!"
             let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
             player = try! AVAudioPlayer(contentsOf: url!)
             player.play()

         }
    }
}

