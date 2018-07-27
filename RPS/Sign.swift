//
//  Sign.swift
//  RPS
//
//  Created by John Green on -07-242018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    
    let sign = randomChoice.nextInt()
    
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else { return .scissors }
    
}


enum Sign {
    
    case rock, paper, scissors
    
    var emoji: String {
        
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func result(AISign: Sign) -> GameState {
        
        switch self {
            
        case .rock:
            if AISign == .rock {
                return GameState.Tie
            }
            if AISign == .paper {
                return GameState.Lose
            }
            if AISign == .scissors {
                return GameState.Win
            }
            
        case .paper:
            if AISign == .rock {
                return GameState.Win
            }
            if AISign == .paper {
                return GameState.Tie
            }
            if AISign == .scissors {
                return GameState.Lose
            }
            
        case .scissors:
            if AISign == .rock {
                return GameState.Lose
            }
            else if AISign == .paper {
                return GameState.Win
            }
            else if AISign == .scissors {
                return GameState.Tie
            }
            
        }
        
        return GameState.Start
        
    }
    
}


