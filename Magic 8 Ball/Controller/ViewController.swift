//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray = [#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    var player: AVAudioPlayer!
    
    
    @IBAction func AskKeyPressed(_ sender: UIButton) {
        let randNum = Int.random(in: 0...4)
        ballImage.image = ballArray[randNum]
        playSound(soundName: "ClickSound")
    }
    
    func playSound(soundName : String){
        //        var player: AVAudioPlayer!
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        
    }
    
    
}

