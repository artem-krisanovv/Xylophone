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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if sender.backgroundColor == .systemRed {
            playSound()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemOrange {
            playSound1()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemYellow {
            playSound2()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemGreen {
            playSound3()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemBlue {
            playSound4()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemIndigo {
            playSound5()
        } else {
            print("Wrong Key")
        }
        if sender.backgroundColor == .systemPurple {
            playSound6()
        } else {
            print("Wrong Key")
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func playSound1() {
        let url = Bundle.main.url(forResource: "D", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func playSound2() {
        let url = Bundle.main.url(forResource: "E", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound3() {
        let url = Bundle.main.url(forResource: "F", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound4() {
        let url = Bundle.main.url(forResource: "G", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound5() {
        let url = Bundle.main.url(forResource: "A", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound6() {
        let url = Bundle.main.url(forResource: "B", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
