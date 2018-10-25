//
//  InterfaceController.swift
//  TicTacToeWatch Extension
//
//  Created by Jonathan T. Miles on 10/24/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        updateViews()
  //      updateButtons()
    }
    
    // MARK: - Private
    
    private func updateViews() {
        
        if let winner = game.winningPlayer?.stringValue {
            statusLabel.setText("Player \(winner) won!")
        } else if let player = game.activePlayer?.stringValue {
            statusLabel.setText("Player \(player)'s turn")
        } else if game.isOver {
            statusLabel.setText("Cat's game!")
        }
    }
    
//    private func updateButtons() {
//        guard let board = board else { return }
//
//        for x in 0..<3 {
//            for y in 0..<3 {
//                let coord = (x, y)
//                //let button = self.button(for: coord)
//                if let mark = board[coord] {
//                    button.setTitle(mark.stringValue, for: .normal)
//                } else {
//                    button.setTitle(" ", for: .normal)
//                }
//            }
//        }
//    }
    
    // MARK: - Tiles

    @IBAction func square1() {
        if square1value == nil {
            
        }
    }
    @IBAction func square2() {
    }
    @IBAction func square3() {
    }

    @IBAction func square4() {
    }
    @IBAction func square5() {
    }
    @IBAction func square6() {
    }
    
    @IBAction func square7() {
    }
    @IBAction func square8() {
    }
    @IBAction func square9() {
    }
    
    // MARK: - Tile Prpoerties
    
    var square1value: PlayerMark?
    var square2value: PlayerMark?
    var square3value: PlayerMark?
    var square4value: PlayerMark?
    var square5value: PlayerMark?
    var square6value: PlayerMark?
    var square7value: PlayerMark?
    var square8value: PlayerMark?
    var square9value: PlayerMark?
    
    // MARK: - Properties
    
    @IBOutlet weak var statusLabel: WKInterfaceLabel!
    
    @IBAction func reset() {
        game.restart()
    }
    
    private var game = Game() {
        didSet {
            updateViews()
        }
    }
    
    private var board: GameBoard? {
        didSet {
    //        updateButtons()
        }
    }
    
}

enum PlayerMark {
    case X
    case O
}
