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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player: AVAudioPlayer?

    @IBAction func keyPressed(_ sender: UIButton) {
        playAudioFile()
    }
    
    var objPlayer: AVAudioPlayer?

    func playAudioFile() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else {
            print("Audio file not found.")
            return
        }

        do {
            let audioSession = AVAudioSession.sharedInstance()
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)

            objPlayer = try AVAudioPlayer(contentsOf: url)
            objPlayer?.prepareToPlay()
            objPlayer?.play()

        } catch {
            print("Audio playback error: \(error.localizedDescription)")
        }
    }
    
}

