//
//  ViewController.swift
//  RPS
//
//  Created by John Green on -07-242018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var signRock: UIButton!
    @IBOutlet weak var signPaper: UIButton!
    @IBOutlet weak var signScissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rockBtnTapped(_ sender: UIButton) {
        signPaper.isHidden = true
        signScissors.isHidden = true
        play(playerSign: .rock)
        }
    
    @IBAction func paperBtnTapped(_ sender: UIButton) {
        signRock.isHidden = true
        signScissors.isHidden = true
        play(playerSign: .paper)
    }
    
    @IBAction func scissorsBtnTapped(_ sender: UIButton) {
        signRock.isHidden = true
        signPaper.isHidden = true
        play(playerSign: .scissors)
    }
    
    @IBAction func playAgainBtnTapped(_ sender: UIButton) {
        playAgain.isHidden = true
        appSign.text = "🤖"
        gameStatus.text = "Rock, Paper, Scissors"
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        signRock.isHidden = false
        signRock.isEnabled = true
        signPaper.isHidden = false
        signPaper.isEnabled = true
        signScissors.isHidden = false
        signScissors.isEnabled = true
    }
    
    func play(playerSign: Sign) {
        let AISign = randomSign()
        appSign.text = AISign.emoji
        let compareSigns = playerSign.result(AISign: AISign)
        gameStatus.text = String("You \(compareSigns)")
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        signRock.isEnabled = false
        signPaper.isEnabled = false
        signScissors.isEnabled = false
        playAgain.isHidden = false
    }
}

