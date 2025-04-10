//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    let soundFiles = ["C", "D", "E", "F", "G", "A", "B"]
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let index = sender.tag
                let fileName = soundFiles[index]
                
                let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
                player = try? AVAudioPlayer(contentsOf: url!)
                player?.play()
            }
        }
    
    
