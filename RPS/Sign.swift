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
                return GameState.tie
            }
            if AISign == .paper {
                return GameState.lose
            }
            if AISign == .scissors {
                return GameState.win
            }
            
        case .paper:
            if AISign == .rock {
                return GameState.win
            }
            if AISign == .paper {
                return GameState.tie
            }
            if AISign == .scissors {
                return GameState.lose
            }
            
        case .scissors:
            if AISign == .rock {
                return GameState.lose
            }
            else if AISign == .paper {
                return GameState.win
            }
            else if AISign == .scissors {
                return GameState.tie
            }
            
        }
        
        return GameState.start
        
    }
    
}


