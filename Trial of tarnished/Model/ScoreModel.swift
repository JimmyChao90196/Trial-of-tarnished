//
//  ScoreModel.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import Foundation
import UIKit


struct ScoreTracker{
    
    enum buttontags: String, CaseIterable, Hashable{
        case godrickTheGrafted
        case rennalaQueenOfTheFullMoon
        case starscourgeRadahn
        case morgottTheOmenKing
        case rykardLordOfBlasphemy
        case maleniaBladeOfMiquella
        case mohgLordOfBlood
    }
    

    //Initialize score of each demi god with dictionary
    var score:[DemigodInfo.Nickname:Int] = [
        .godrickTheGrafted: 0,
        .rennalaQueenOfTheFullMoon:0,
        .starscourgeRadahn:0,
        .morgottTheOmenKing:0,
        .rykardLordOfBlasphemy:0,
        .maleniaBladeOfMiquella:0,
        .mohgLordOfBlood:0
    ]
    
    var resultText = ""
    var resultDemigod:DemigodInfo.Nickname = .godrickTheGrafted
    
    

    //The funciton that calculate the highest score
    mutating func getHighestScore(){
        if let (demigod, _) = score.max(by: {$0.value < $1.value}){
            //resultText = "You possess the great rune of \(demigod.rawValue)"
            resultDemigod = demigod
        }else{
            //resultText = "You possess the great rune of \(Demigod.Nickname.mohgLordOfBlood.rawValue)"
            resultDemigod = DemigodInfo.Nickname.godrickTheGrafted
        }
    }

    
    //Tracking score each time we press the next button
    mutating func trackingScore(_ tags:String){
        let selectedTags = buttontags(rawValue: tags)
        
        switch selectedTags{
        case .godrickTheGrafted: score[.godrickTheGrafted]! += 1
        case .rennalaQueenOfTheFullMoon: score[.rennalaQueenOfTheFullMoon]! += 1
        case .starscourgeRadahn: score[.starscourgeRadahn]! += 1
        case .morgottTheOmenKing: score[.morgottTheOmenKing]! += 1
        case .rykardLordOfBlasphemy: score[.rykardLordOfBlasphemy]! += 1
        case .maleniaBladeOfMiquella: score[.maleniaBladeOfMiquella]! += 1
        case .mohgLordOfBlood: score[.mohgLordOfBlood]! += 1
        default: score[.godrickTheGrafted]! += 0
        }
        
        print("""
        godrickTheGrafted \(score[.godrickTheGrafted] ?? 0)
        rennalaQueenOfTheFullMoon \(score[.rennalaQueenOfTheFullMoon] ?? 0)
        starscourgeRadahn \(score[.starscourgeRadahn] ?? 0)
        morgottTheOmenKing \(score[.morgottTheOmenKing] ?? 0)
        rykardLordOfBlasphemy \(score[.rykardLordOfBlasphemy] ?? 0)
        maleniaBladeOfMiquella \(score[.maleniaBladeOfMiquella] ?? 0)
        mohgLordOfBlood \(score[.mohgLordOfBlood] ?? 0)
        
    """)

    }
}





