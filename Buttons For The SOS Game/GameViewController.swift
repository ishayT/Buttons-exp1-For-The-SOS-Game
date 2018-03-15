//
//  GameViewController.swift
//  Buttons For The SOS Game
//
//  Created by Ishay on 3/14/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var boardSize : Int = 0
    
    var level : Int = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Game"
        createGameBoard(boardSize: boardSize)
        
        print(boardSize)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    func createGameBoard(boardSize : Int){
        print("createGameBoard started")
        if boardSize == 5 {
            for row in 1...boardSize {
                print("boardSize Loop started")
                let stackView = UIStackView(arrangedSubviews: createButtons(numberOfButtons: 2))
                stackView.translatesAutoresizingMaskIntoConstraints = false
                stackView.axis = .horizontal
                stackView.spacing = 5
                stackView.distribution = .fillEqually
                
                view.addSubview(stackView)
                
                // constraintes
                
                stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
                stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
                stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
                stackView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 0).isActive = true
                print("sepose to create a stack")
            }
        }
        else if boardSize == 7 {
            for row in 1...boardSize {
                //
            }
        }
        else if boardSize == 10 {
            for row in 1...boardSize {
                //
            }
        }
    }
    
    func createButtons(numberOfButtons : Int...) -> [UIButton] {
        print("createButtons started")
        return numberOfButtons.map {number in
            print("mapping started")
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("\(number)", for: .normal)
            button.backgroundColor = UIColor.gray
            button.setTitleColor(.white, for: .normal)
            print("mapping finished")
            return button
        }
    }

}
