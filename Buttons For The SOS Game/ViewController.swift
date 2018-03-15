//
//  ViewController.swift
//  Buttons For The SOS Game
//
//  Created by Ishay on 3/14/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var multiplayer : Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func createGameWithDifficulty(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            multiplayer = 5
        case 2:
            multiplayer = 7
        case 3:
            multiplayer = 10
        default:
            print("button pressed")
        }
        performSegue(withIdentifier: "goToGame", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToGame") {
            let gameVC = segue.destination as! GameViewController
            gameVC.boardSize = multiplayer
        }
    }

}

