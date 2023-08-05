//
//  ScoreModel.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import Foundation
import UIKit

// ScoreTracker struct tracks the score for each demigod in Elden Ring.
struct ScoreTracker{
    
    
    // score dictionary uses the Nickname enumeration from DemigodInfo as the key and an integer as the value.
    var score:[DemigodInfo.Nickname:Int] = [
        .godrickTheGrafted: 0,
        .rennalaQueenOfTheFullMoon:0,
        .starscourgeRadahn:0,
        .morgottTheOmenKing:0,
        .rykardLordOfBlasphemy:0,
        .maleniaBladeOfMiquella:0,
        .mohgLordOfBlood:0
    ]
    
    
    
    //Hold the final result message after all scores are calculated.
    var resultText = ""
    
    
    
    //Hold the Nickname of the demigod who has the highest score.
    var resultDemigod:DemigodInfo.Nickname = .godrickTheGrafted
    
    

    // It assigns the nickname of the demigod with the highest score to resultDemigod.
    mutating func getHighestScore(){
        if let (demigod, _) = score.max(by: {$0.value < $1.value}){
            resultDemigod = demigod
        }else{
            resultDemigod = DemigodInfo.Nickname.godrickTheGrafted
        }
    }
    
    


    
    
    
    // Increases the score of the demigod associated with the selected tag by 1 each time it's called.
    mutating func trackingScore(_ tags: String){
        guard let selectedTag = DemigodInfo.Nickname(rawValue: tags) else { return }
        
        //Increment the corresponding score
        score[selectedTag] = (score[selectedTag] ?? 0) + 1
        
        //Print out the result for debugging purposes
        for demigod in DemigodInfo.Nickname.allCases {
            print("\(demigod.rawValue) \(score[demigod] ?? 0)")
        }
    }
}




